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

/// Internal view that draws an ``OUDSCircularProgressIndicator``.
///
/// This view uses a SwiftUI ``Canvas`` for the actual drawing, which receives its effective size
/// without renegotiating layout with the parent (unlike ``GeometryReader``). This is critical to
/// avoid layout glitches when the indicator is placed inside containers that are sensitive to
/// content re-measurement, such as ``NavigationStack`` toolbars.
///
/// - The default component size is **48pt** and scales with **Dynamic Type** via ``ScaledMetric``.
/// - The stroke width is **12.5%** of the diameter.
/// - The default gap corresponds to a **14°** arc converted into a distance on the circle circumference.
/// - The small gap corresponds to **1pt** at the default 48pt size and scales linearly.
///
/// The stroke cap uses `.round` when the theme's ``ProgressIndicatorComponentTokens/borderRadiusDefault``
/// token is strictly positive, `.butt` otherwise.
///
/// > TODO: expose a dedicated `sizeCircularIndicatorDefault` semantic token for the default 48pt size
/// > once available in Figma tokens (currently defined as a private constant here to mirror the
/// > Android reference implementation).
struct CircularProgressIndicatorView: View {

    // MARK: - Constants

    /// Default component size (matches the Android reference implementation and Material 3 defaults).
    /// > TODO: replace by a dedicated `sizeCircularIndicatorDefault` token once available in Figma tokens.
    static let defaultSize: CGFloat = 48.0

    // MARK: - Stored properties

    let configuration: CircularProgressIndicatorConfiguration

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @ScaledMetric private var scaledDefaultSize: CGFloat = CircularProgressIndicatorView.defaultSize

    // MARK: - Body

    var body: some View {
        Group {
            if let progress = configuration.progress {
                CircularProgressCanvas(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    sweep: CGFloat(progress),
                    rotation: -90, // start at the top of the circle
                    gapSize: configuration.gapSize)
            } else {
                CircularProgressIndicatorAnimator(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    gapSize: configuration.gapSize)
            }
        }
        .frame(width: scaledDefaultSize, height: scaledDefaultSize)
        .modifier(CircularProgressAccessibilityModifier(configuration: configuration))
    }

    // MARK: - Computed helpers

    /// Foreground color, based on ``useMonochrome`` and the current status.
    ///
    /// > TODO: use a dedicated `progressIndicatorMonochrome.colorContentIndicator` component token
    /// > for monochrome rendering (currently we fall back to ``theme.colors.contentDefault`` which is
    /// > automatically adjusted for the effective color scheme injected by ``OUDSColoredSurface``).
    /// > See the Android reference implementation for the tokens to expose.
    private var foregroundColor: Color {
        if useMonochrome {
            return theme.colors.contentDefault.color(for: colorScheme)
        }
        return statusColor.color(for: colorScheme)
    }

    /// Track color, based on the ``track`` flag.
    ///
    /// > TODO: use a dedicated `progressIndicatorMonochrome.colorContentTrack` component token for
    /// > the monochrome track color once available. For now, when on a colored surface we still use
    /// > the regular `colorContentTrack` which relies on functional gray tokens.
    private var trackColor: Color {
        guard configuration.track else { return .clear }
        return theme.progressIndicator.colorContentTrack.color(for: colorScheme)
    }

    /// Semantic color token associated with the current status.
    private var statusColor: MultipleColorSemanticToken {
        switch configuration.status {
        case .neutral:
            theme.colors.contentDefault
        case .accent:
            theme.colors.contentStatusAccent
        case .positive:
            theme.colors.contentStatusPositive
        case .info:
            theme.colors.contentStatusInfo
        case .warning:
            theme.colors.contentStatusWarning
        case .negative:
            theme.colors.contentStatusNegative
        }
    }

    /// Stroke cap for both the track and the foreground arc.
    private var strokeCap: CGLineCap {
        (theme.progressIndicator.borderRadiusDefault > 0) ? .round : .butt
    }
}

// MARK: - Canvas

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
    private static let strokeWidthRatio: CGFloat = 0.125

    /// Angle (in degrees) of the default gap, converted into an arc length on the circle circumference.
    private static let defaultGapAngleDegrees: CGFloat = 14.0

    // MARK: - Stored properties

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

// MARK: - Accessibility

/// Applies accessibility traits and values on the progress indicator.
///
/// - Determinate: exposes the percentage value (e.g. *"75 percent"*).
/// - Indeterminate: marks the element as updating frequently so assistive technologies do not try to read a value.
struct CircularProgressAccessibilityModifier: ViewModifier {

    let configuration: CircularProgressIndicatorConfiguration

    func body(content: Content) -> some View {
        if let progress = configuration.progress {
            let percent = Int((progress * 100).rounded())
            content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.updatesFrequently)
                .accessibilityValue(Text(verbatim: "\(percent)%"))
        } else {
            content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.updatesFrequently)
        }
    }
}
