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
struct CircularProgressIndicatorView: View {

    // MARK: - Constants

    /// Default component size (matches the Android reference implementation and Material 3 defaults).
    static let defaultSize: CGFloat = 48.0

    // MARK: - Properties

    let configuration: CircularProgressIndicatorConfiguration

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome
    @ScaledMetric private var scaledDefaultSize: CGFloat = CircularProgressIndicatorView.defaultSize

    // MARK: - Body

    var body: some View {
        Group {
            if let progress = configuration.progress {
                CircularProgressIndicatorDeterminateView(
                    progress: progress,
                    animated: configuration.animated,
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    gapSize: configuration.gapSize)
            } else {
                CircularProgressIndicatorIndeterminateView(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    gapSize: configuration.gapSize,
                    hasTrack: configuration.track,
                    cyclingColors: cyclingColors)
            }
        }
        .frame(width: scaledDefaultSize, height: scaledDefaultSize)
        .modifier(CircularProgressAccessibilityModifier(configuration: configuration))
    }

    // MARK: - Helpers

    /// The color used for the foreground arc when no color cycling is active (standard appearance,
    /// monochrome on ``OUDSColoredSurface``, or Reduce Motion / Low Power fallback for the assistant
    /// appearance).
    private var foregroundColor: Color {
        if useMonochrome {
            return theme.colors.contentDefault.color(for: colorScheme)
        }
        if configuration.appearance == .assistant {
            // Initial / fallback color for the AI assistant variant. The animator will pick the
            // current color per frame from ``cyclingColors`` when it is not empty.
            return theme.colors.colorAiPrimary.color(for: colorScheme)
        }
        return statusColor.color(for: colorScheme)
    }

    /// The list of AI colors to cycle through in the indeterminate animator.
    ///
    /// Returns an empty array when the appearance is standard, when monochrome rendering is active
    /// (colored surface) or when the indicator is determinate; in all those cases the animator
    /// falls back to ``foregroundColor``.
    private var cyclingColors: [Color] {
        guard configuration.appearance == .assistant,
              !useMonochrome,
              configuration.isIndeterminate
        else {
            return []
        }
        return [
            theme.colors.colorAiPrimary.color(for: colorScheme),
            theme.colors.colorAiSecondary.color(for: colorScheme),
            theme.colors.colorAiTertiary.color(for: colorScheme),
            theme.colors.colorAiQuaternary.color(for: colorScheme),
        ]
    }

    private var trackColor: Color {
        guard configuration.track else { return .clear }
        return theme.progressIndicator.colorContentTrack.color(for: colorScheme)
    }

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

    private var strokeCap: CGLineCap {
        let effectiveRadius = theme.tuning.hasRoundedProgressIndicators
            ? theme.progressIndicator.borderRadiusRounded
            : theme.progressIndicator.borderRadiusDefault
        return (effectiveRadius > 0) ? .round : .butt
    }
}

// MARK: - Accessibility

/// Applies accessibility traits and values on the progress indicator.
///
/// - Determinate (standard appearance): exposes the percentage value (e.g. *"75 percent"*) with the
///   `.updatesFrequently` trait so assistive technologies read the changing progress.
/// - Indeterminate (standard appearance): hidden from VoiceOver — there is no readable value to expose
///   and keeping the element focusable would only pollute VoiceOver navigation.
/// - Assistant appearance: always hidden from VoiceOver, regardless of the (always indeterminate) mode.
private struct CircularProgressAccessibilityModifier: ViewModifier {

    let configuration: CircularProgressIndicatorConfiguration

    func body(content: Content) -> some View {
        if configuration.appearance == .assistant {
            // AI assistant variant: always hidden from VoiceOver (no readable value).
            content.accessibilityHidden(true)
        } else if let progress = configuration.progress {
            // Determinate: expose the percentage value.
            let percent = Int((progress * 100).rounded())
            content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.updatesFrequently)
                .accessibilityValue(Text(verbatim: "\(percent)%"))
        } else {
            // Indeterminate standard: hidden from VoiceOver (no readable value).
            content.accessibilityHidden(true)
        }
    }
}
