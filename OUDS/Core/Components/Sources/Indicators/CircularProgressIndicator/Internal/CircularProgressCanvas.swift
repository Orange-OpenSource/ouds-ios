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

import OUDSTokensSemantic
import SwiftUI

/// Draws both the track and the foreground arc of a circular progress indicator.
///
/// The Canvas receives its effective size without renegotiating layout with the parent, which
/// avoids the layout glitches observed with a ``GeometryReader`` when the indicator is embedded in
/// a ``NavigationStack`` toolbar.
///
/// The layout of the two arcs mirrors the Material 3 reference implementation:
/// - **Track** covers `360° - sweep - 2 * gap`
/// - **Foreground** covers `sweep`
/// - The whole drawing is rotated by ``rotation`` (in degrees).
struct CircularProgressCanvas: View {

    // MARK: - Constants

    /// Ratio between the stroke width and the diameter.
    /// Exposed as `internal` (rather than `private`) so unit tests can assert its value.
    static let strokeWidthRatio: CGFloat = 0.125

    /// Angle (in degrees) of the default gap, converted into an arc length on the circle circumference.
    /// Exposed as `internal` (rather than `private`) so unit tests can assert its value.
    static let defaultGapAngleDegrees: CGFloat = 14.0

    // MARK: - Properties

    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    /// Sweep of the foreground arc, in `[0, 1]` (fraction of the full circle).
    let sweep: CGFloat
    /// Global rotation applied to both arcs, in degrees.
    let rotation: Double
    let gapSize: OUDSCircularProgressIndicator.GapSize

    // MARK: - Body

    var body: some View {
        Canvas { context, size in
            let diameter = min(size.width, size.height)
            guard diameter > 0 else { return }

            let strokeWidth = diameter * Self.strokeWidthRatio
            let radius = (diameter - strokeWidth) / 2.0
            let center = CGPoint(x: size.width / 2.0, y: size.height / 2.0)

            let clampedSweep = min(max(sweep, 0.0), 1.0)
            let gapDistance = gapDistance(for: diameter)
            // Gap expressed as a fraction of the full circle (in degrees, then converted to fraction).
            let gapSweep = gapSweepDegrees(gapDistance: gapDistance, diameter: diameter)

            let sweepDegrees = clampedSweep * 360.0
            // The track covers the remaining angle, minus one gap on each side of the foreground arc.
            let trackDegrees = max(0.0, 360.0 - sweepDegrees - 2.0 * gapSweep)

            let strokeStyle = StrokeStyle(lineWidth: strokeWidth, lineCap: strokeCap)

            // Foreground: starts at `rotation`, sweeps by `sweepDegrees`.
            if sweepDegrees > 0 {
                let foregroundPath = arcPath(center: center,
                                             radius: radius,
                                             startAngle: rotation,
                                             sweepDegrees: sweepDegrees)
                context.stroke(foregroundPath, with: .color(foregroundColor), style: strokeStyle)
            }

            // Track: starts after the foreground + gap, sweeps by `trackDegrees`.
            if trackDegrees > 0 {
                let trackStart = rotation + sweepDegrees + gapSweep
                let trackPath = arcPath(center: center,
                                        radius: radius,
                                        startAngle: trackStart,
                                        sweepDegrees: trackDegrees)
                context.stroke(trackPath, with: .color(trackColor), style: strokeStyle)
            }
        }
    }

    // MARK: - Helpers

    /// Builds a stroked arc path centered at ``center`` with the given ``radius``.
    private func arcPath(center: CGPoint, radius: CGFloat, startAngle: Double, sweepDegrees: Double) -> Path {
        var path = Path()
        path.addArc(center: center,
                    radius: radius,
                    startAngle: .degrees(startAngle),
                    endAngle: .degrees(startAngle + sweepDegrees),
                    clockwise: false)
        return path
    }

    /// Gap distance in points for the given diameter, matching the Android reference implementation.
    private func gapDistance(for diameter: CGFloat) -> CGFloat {
        switch gapSize {
        case .default:
            // 14° of arc converted into a distance on the circle.
            Self.defaultGapAngleDegrees / 360.0 * .pi * diameter
        case .small:
            // 1pt at the default size, scales linearly with the effective diameter.
            diameter / CircularProgressIndicatorView.defaultSize
        }
    }

    /// Converts a gap distance (in points) into a sweep angle in degrees.
    private func gapSweepDegrees(gapDistance: CGFloat, diameter: CGFloat) -> Double {
        guard diameter > 0 else { return 0 }
        return Double((gapDistance / (.pi * diameter)) * 360.0)
    }
}
