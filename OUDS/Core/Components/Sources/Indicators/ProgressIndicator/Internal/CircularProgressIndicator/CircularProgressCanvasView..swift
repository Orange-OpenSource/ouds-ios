//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import SwiftUI

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

/// Draws both the track and the foreground arc of a circular progress indicator.
///
/// The layout of the two arcs mirrors the Android Material 3 reference implementation:
/// - **Track** covers `360° - sweep - 2 * gap`
/// - **Foreground** covers `sweep`
/// - The whole drawing is rotated by ``rotation`` (in degrees).
struct CircularProgressCanvasView: View {

    // MARK: - Constants

    /// Ratio between the stroke width and the diameter.
    static let strokeWidthRatio: CGFloat = 0.125

    /// Angle (in degrees) of the default gap, converted into an arc length on the circle circumference.
    static let defaultGapAngleDegrees: CGFloat = 14.0

    // MARK: - Properties

    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    let sweep: CGFloat // Sweep of the foreground arc, in `[0, 1]` (fraction of the full circle).
    let rotation: Double // Global rotation applied to both arcs, in degrees.
    let gapSize: OUDSProgressIndicatorGapSize
    let size: CGFloat

    // MARK: - Body

    var body: some View {
        GeometryReader { proxy in
            let diameter = min(proxy.size.width, proxy.size.height)
            let strokeWidth = diameter * Self.strokeWidthRatio
            let gapDistance = gapDistance(for: diameter)
            let gapSweep = gapSweepDegrees(gapDistance: gapDistance, diameter: diameter)

            let clampedSweep = min(max(sweep, 0.0), 1.0)
            let sweepDegrees = Double(clampedSweep) * 360.0
            let (trackStartOffset, trackDegrees) = Self.trackLayout(sweepDegrees: sweepDegrees,
                                                                    gapSweepDegrees: gapSweep)

            let strokeStyle = StrokeStyle(lineWidth: strokeWidth, lineCap: strokeCap)

            ZStack {
                CircularProgressArcShape(startAngleDegrees: rotation + trackStartOffset,
                                         sweepDegrees: trackDegrees,
                                         strokeWidth: strokeWidth)
                    .stroke(trackColor, style: strokeStyle)

                CircularProgressArcShape(startAngleDegrees: rotation,
                                         sweepDegrees: sweepDegrees,
                                         strokeWidth: strokeWidth)
                    .stroke(foregroundColor, style: strokeStyle)
            }
        }
    }

    // MARK: - Helpers

    /// Computes the track layout (start-angle offset and length in degrees) given the foreground sweep
    /// and the nominal gap.
    ///
    /// The gap between the track and the foreground is **shrunk to zero when the foreground arc is
    /// smaller than a full gap**, so that:
    /// - `sweepDegrees == 0` produces a full-circle track (no notch), matching the visual expectation
    ///   when `progress = 0`;
    /// - very small progress values do not create an oversized gap larger than the arc itself;
    /// - `sweepDegrees == 360` produces no track (fully filled foreground), no negative track length.
    ///
    /// This mirrors the Android Material 3 reference implementation which uses
    /// `min(sweep, gapSizeSweep)` on both sides of the foreground arc.
    ///
    /// - Parameters:
    ///    - sweepDegrees: length of the foreground arc, in degrees, expected in `[0, 360]`.
    ///    - gapSweepDegrees: nominal gap between the two arcs, in degrees, expected `>= 0`.
    /// - Returns: a tuple `(startOffsetDegrees, lengthDegrees)` where:
    ///    - `startOffsetDegrees`: offset (in degrees) to add to the drawing rotation to get the track start angle;
    ///    - `lengthDegrees`: length of the track arc, in degrees, always in `[0, 360]`.
    static func trackLayout(sweepDegrees: Double,
                            gapSweepDegrees: Double) -> (startOffsetDegrees: Double, lengthDegrees: Double)
    {
        let effectiveGap = min(sweepDegrees, gapSweepDegrees)
        let length = max(0.0, 360.0 - sweepDegrees - 2.0 * effectiveGap)
        let startOffset = sweepDegrees + effectiveGap
        return (startOffset, length)
    }

    /// Gap distance in points for the given diameter, matching the Android reference implementation.
    ///
    /// When ``strokeCap`` is `.round`, each arc end is prolongated by `strokeWidth / 2` on each
    /// side because of the round line cap. Without any compensation, these round caps would eat up
    /// the visible spacing between the foreground and the track (and can even overlap when the
    /// nominal gap is small). We therefore add `strokeWidth` (= 2 × strokeWidth/2) to the nominal
    /// gap so the visible spacing between the two arcs stays constant regardless of the stroke cap.
    ///
    /// This mirrors the Material 3 Android reference implementation which does
    /// `gapSize + strokeWidth` when `strokeCap == Round`.
    private func gapDistance(for diameter: CGFloat) -> CGFloat {
        let strokeWidth = diameter * Self.strokeWidthRatio
        let capCompensation: CGFloat = (strokeCap == .round) ? strokeWidth : 0

        switch gapSize {
        case .default:
            // 14° of arc converted into a distance on the circle, plus optional round-cap compensation.
            return Self.defaultGapAngleDegrees / 360.0 * .pi * diameter + capCompensation
        case .small:
            // 1pt at the default size, scales linearly with the effective diameter, plus optional
            // round-cap compensation.
            return diameter / size + capCompensation
        }
    }

    /// Converts a gap distance (in points) into a sweep angle in degrees.
    private func gapSweepDegrees(gapDistance: CGFloat, diameter: CGFloat) -> Double {
        guard diameter > 0 else { return 0 }
        return Double((gapDistance / (.pi * diameter)) * 360.0)
    }
}

// MARK: - Animatable arc shape

/// A single arc shape whose `sweepDegrees` and `startAngleDegrees` can be animated by SwiftUI.
///
/// The conformance to `Animatable` (via `animatableData`) allows SwiftUI to re-evaluate
/// `path(in:)` at every frame during a `withAnimation` block, interpolating the animatable pair
/// linearly between the old and the new values. Combined with a `withAnimation(...)` on the
/// caller side, this produces a smooth arc reveal or update animation.
///
/// The stroke width is not animated (it is a constant during any given animation), but it is used
/// to shrink the arc radius so that the stroked line stays inscribed within the frame — otherwise
/// `.stroke(_:style:)` (which centers the trait on the path) would draw half of its thickness
/// outside the frame.
private struct CircularProgressArcShape: Shape {

    /// Start angle of the arc, in degrees (0° = 3 o'clock, positive = clockwise).
    var startAngleDegrees: Double

    /// Length of the arc, in degrees, in `[0, 360]`.
    var sweepDegrees: Double

    /// Stroke width in points, applied by the caller via `.stroke(_:style:)`. Not animated.
    let strokeWidth: CGFloat

    /// Enables SwiftUI to interpolate both angles simultaneously during a `withAnimation` block.
    var animatableData: AnimatablePair<Double, Double> {
        get { AnimatablePair(startAngleDegrees, sweepDegrees) }
        set {
            startAngleDegrees = newValue.first
            sweepDegrees = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let diameter = min(rect.width, rect.height)
        // Radius reduced by half the stroke width so the stroked line stays inscribed in the frame.
        let radius = max(0.0, (diameter - strokeWidth) / 2.0)
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.addArc(center: center,
                    radius: radius,
                    startAngle: .degrees(startAngleDegrees),
                    endAngle: .degrees(startAngleDegrees + sweepDegrees),
                    clockwise: false)
        return path
    }
}
