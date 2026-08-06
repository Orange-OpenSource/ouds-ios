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

/// Internal view that draws an ``OUDSLinearProgressIndicator``.
struct LinearProgressIndicatorView: View {

    // MARK: - Properties

    let configuration: LinearProgressIndicatorConfiguration

    @ScaledMetric private var dynamicTypeScale: CGFloat = 1.0

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: - Body

    var body: some View {
        VStack(alignment: .center, spacing: CGFloat(theme.progressIndicator.spacePaddingBlock)) {
            bar
                .frame(height: scaledBarHeight)
                .frame(maxWidth: .infinity)

            if let helperText = configuration.helperText, !helperText.isEmpty {
                Text(helperText)
                    .labelDefaultMedium(theme)
                    .foregroundColor(theme.colors.contentDefault.color(for: colorScheme))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
            }
        }
        .modifier(LinearProgressAccessibilityModifier(configuration: configuration))
    }

    // MARK: - Sub-views

    @ViewBuilder
    private var bar: some View {
        if let progress = configuration.progress {
            LinearProgressIndicatorDeterminateView(
                progress: progress,
                animated: configuration.animated,
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                gapSize: configuration.gapSize,
                hasTrack: configuration.track,
                hasStopIndicator: configuration.stopIndicator,
                barHeight: scaledBarHeight)
        } else {
            LinearProgressIndicatorIndeterminateView(
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                gapSize: configuration.gapSize,
                hasTrack: configuration.track,
                barHeight: scaledBarHeight)
        }
    }

    // MARK: - Helpers

    /// The nominal bar height from the theme, scaled by Dynamic Type.
    private var scaledBarHeight: CGFloat {
        CGFloat(theme.progressIndicator.sizeLinearIndicatorHeight) * dynamicTypeScale
    }

    /// The color used for the foreground bar. Falls back to the monochrome content color when the
    /// indicator is placed on an ``OUDSColoredSurface``.
    private var foregroundColor: Color {
        if useMonochrome {
            return theme.colors.contentDefault.color(for: colorScheme)
        }
        return statusColor.color(for: colorScheme)
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

/// Applies accessibility traits and values on the linear progress indicator.
///
/// - **Determinate**: exposes the percentage value (e.g. *"75 percent"*) as `accessibilityValue`, with
///   the optional `helperText` as `accessibilityLabel`. The `.updatesFrequently` and `.isStaticText`
///   traits are set so assistive technologies read the changing progress. On iOS 17+ /
///   macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, the element opts out of user interaction via
///   `accessibilityRespondsToUserInteraction(false)` so that Full Keyboard Access does not focus it.
/// - **Indeterminate without helper text**: hidden from VoiceOver (`.accessibilityHidden(true)`),
///   which also excludes it from Full Keyboard Access navigation.
/// - **Indeterminate with helper text**: the helper text is exposed as `accessibilityLabel` so the
///   user still understands the context, but no value is exposed (no measurable progress).
private struct LinearProgressAccessibilityModifier: ViewModifier {

    let configuration: LinearProgressIndicatorConfiguration

    func body(content: Content) -> some View {
        if let progress = configuration.progress {
            let percent = Int((progress * 100).rounded())
            let label = configuration.helperText ?? ""
            let determinate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits([.updatesFrequently, .isStaticText])
                .accessibilityLabel(Text(verbatim: label))
                .accessibilityValue(Text(verbatim: "\(percent)%"))

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                determinate.accessibilityRespondsToUserInteraction(false)
            } else {
                determinate
            }
        } else if let helperText = configuration.helperText, !helperText.isEmpty {
            // Indeterminate with helper text: expose the label but no value.
            let indeterminate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits(.isStaticText)
                .accessibilityLabel(Text(verbatim: helperText))

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                indeterminate.accessibilityRespondsToUserInteraction(false)
            } else {
                indeterminate
            }
        } else {
            // Indeterminate without helper text: hidden from VoiceOver (and therefore from FKA too).
            content.accessibilityHidden(true)
        }
    }
}
