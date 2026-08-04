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
/// It reads the effective size using a ``GeometryReader`` and scales the stroke width and gap
/// proportionally, exactly as the Android reference implementation does.
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
/// > once available in Figma tokens (currently defined as a private constant here to mirror the Android
/// > reference implementation).
struct CircularProgressIndicatorView: View {

    // MARK: - Constants

    /// Default component size (matches the Android reference implementation and Material 3 defaults).
    /// > TODO: replace by a dedicated `sizeCircularIndicatorDefault` token once available in Figma tokens.
    private static let defaultSize: CGFloat = 48.0

    /// Ratio between the stroke width and the diameter.
    private static let strokeWidthRatio: CGFloat = 0.125

    /// Angle (in degrees) of the default gap, converted into an arc length on the circle circumference.
    private static let defaultGapAngleDegrees: CGFloat = 14.0

    // MARK: - Stored properties

    let configuration: CircularProgressIndicatorConfiguration

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @ScaledMetric private var scaledDefaultSize: CGFloat = CircularProgressIndicatorView.defaultSize

    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let diameter = min(geometry.size.width, geometry.size.height)
            let strokeWidth = diameter * Self.strokeWidthRatio
            let gapDistance = gapDistance(for: diameter)
            let strokeCap: CGLineCap = (theme.progressIndicator.borderRadiusDefault > 0) ? .round : .butt

            ZStack {
                CircularProgressTrack(
                    color: trackColor,
                    strokeWidth: strokeWidth,
                    strokeCap: strokeCap,
                    gapDistance: gapDistance,
                    diameter: diameter,
                    hasProgressArc: configuration.progress ?? 1.0 > 0.0 && configuration.progress != nil)

                CircularProgressForeground(
                    configuration: configuration,
                    color: foregroundColor,
                    strokeWidth: strokeWidth,
                    strokeCap: strokeCap,
                    gapDistance: gapDistance,
                    diameter: diameter)
            }
            .frame(width: diameter, height: diameter)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .frame(width: scaledDefaultSize, height: scaledDefaultSize)
        .modifier(CircularProgressAccessibilityModifier(configuration: configuration))
    }

    // MARK: - Computed helpers

    /// Foreground color, based on ``useMonochrome`` and the current status.
    ///
    /// > TODO: use a dedicated `progressIndicatorMonochrome` component token for monochrome rendering
    /// > (currently we fall back to ``theme.colors.contentDefault`` which is automatically adjusted for the
    /// > effective color scheme injected by ``OUDSColoredSurface``). This is the same limitation as the
    /// > `Circular Progress Indicator` in loading buttons: see Android reference implementation for the
    /// > tokens to expose.
    private var foregroundColor: Color {
        if useMonochrome {
            return theme.colors.contentDefault.color(for: colorScheme)
        }
        return statusColor.color(for: colorScheme)
    }

    /// Track color, based on ``useMonochrome`` and whether the track is displayed.
    ///
    /// > TODO: use a dedicated `progressIndicatorMonochrome.colorContentTrack` component token for the
    /// > monochrome track color once available. For now, when on a colored surface we still use the regular
    /// > `colorContentTrack` which relies on functional gray tokens.
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

    /// Gap distance in points for the given diameter, matching the Android reference implementation.
    private func gapDistance(for diameter: CGFloat) -> CGFloat {
        switch configuration.gapSize {
        case .default:
            // 14° of arc converted into a distance on the circle.
            Self.defaultGapAngleDegrees / 360.0 * .pi * diameter
        case .small:
            // 1pt at the default size, scales linearly.
            diameter / Self.defaultSize
        }
    }
}

// MARK: - Track

/// Draws the track (background circle) of the progress indicator.
private struct CircularProgressTrack: View {

    let color: Color
    let strokeWidth: CGFloat
    let strokeCap: CGLineCap
    let gapDistance: CGFloat
    let diameter: CGFloat
    /// Whether a progress arc is drawn on top: when `true` the track is trimmed to leave a visible gap.
    let hasProgressArc: Bool

    var body: some View {
        if !hasProgressArc {
            Circle()
                .stroke(color, style: strokeStyle)
        } else {
            let gapFraction = gapDistance / (.pi * max(diameter, 1))
            // The track is trimmed to leave a small gap between its start and end.
            Circle()
                .trim(from: 0, to: max(0.0, 1.0 - gapFraction))
                .stroke(color, style: strokeStyle)
                // Rotate so that the gap is placed at the top (aligned with the start of the progress arc).
                .rotationEffect(.degrees(-90 + Double(gapFraction * 360.0 / 2.0)))
        }
    }

    private var strokeStyle: StrokeStyle {
        StrokeStyle(lineWidth: strokeWidth, lineCap: strokeCap)
    }
}

// MARK: - Foreground (determinate or indeterminate)

/// Draws the foreground arc of the progress indicator.
///
/// In determinate mode the arc goes from `0` to `progress`.
/// In indeterminate mode the arc is animated (see ``CircularProgressIndicatorAnimator``).
private struct CircularProgressForeground: View {

    let configuration: CircularProgressIndicatorConfiguration
    let color: Color
    let strokeWidth: CGFloat
    let strokeCap: CGLineCap
    let gapDistance: CGFloat
    let diameter: CGFloat

    var body: some View {
        if let progress = configuration.progress {
            let gapFraction = gapDistance / (.pi * max(diameter, 1))
            // Coerce so we never trim into the gap or beyond a full circle.
            let clampedProgress = min(max(CGFloat(progress) * (1.0 - gapFraction), 0.0), 1.0)
            Circle()
                .trim(from: 0, to: clampedProgress)
                .stroke(color, style: StrokeStyle(lineWidth: strokeWidth, lineCap: strokeCap))
                .rotationEffect(.degrees(-90))
        } else {
            CircularProgressIndicatorAnimator(color: color,
                                              strokeWidth: strokeWidth,
                                              strokeCap: strokeCap)
        }
    }
}

// MARK: - Accessibility

/// Applies accessibility traits and values on the progress indicator.
///
/// - Determinate: exposes the percentage value (e.g. *"75 percent"*).
/// - Indeterminate: marks the element as updating frequently so assistive technologies do not try to read a value.
private struct CircularProgressAccessibilityModifier: ViewModifier {

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
