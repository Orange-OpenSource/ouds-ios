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

    // MARK: - Properties

    let configuration: CircularProgressIndicatorConfiguration

    @ScaledMetric private var scaledDefaultSize: CGFloat

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: - Initialize

    init(configuration: CircularProgressIndicatorConfiguration) {
        self.configuration = configuration
        _scaledDefaultSize = ScaledMetric(wrappedValue: configuration.size)
    }

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
                    gapSize: configuration.gapSize,
                    size: configuration.size)
            } else {
                CircularProgressIndicatorIndeterminateView(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    gapSize: configuration.gapSize,
                    hasTrack: configuration.track,
                    size: scaledDefaultSize)
            }
        }
        .frame(width: scaledDefaultSize, height: scaledDefaultSize)
        .modifier(CircularProgressAccessibilityModifier(configuration: configuration))
    }

    // MARK: - Helpers

    /// The color used for the foreground arc. Falls back to the monochrome content color when the
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

/// Applies accessibility traits and values on the progress indicator.
///
/// - Determinate: exposes the percentage value (e.g. *"75 percent"*) with the `.updatesFrequently`
///   trait so assistive technologies read the changing progress. The element is also marked as
///   `.isStaticText` and, on iOS 17+ / macOS 14+ / visionOS 1+ / watchOS 10+ / tvOS 17+, opts out
///   of user interaction via `accessibilityRespondsToUserInteraction(false)` so that Full Keyboard
///   Access (FKA) does not focus it — a progress indicator has no action to perform, so capturing
///   keyboard focus would only pollute FKA navigation. On earlier OS versions, only the semantic
///   `.isStaticText` trait is applied.
/// - Indeterminate: hidden from VoiceOver (`.accessibilityHidden(true)`), which also excludes it
///   from Full Keyboard Access navigation. There is no readable value to expose and keeping the
///   element focusable would only pollute navigation.
private struct CircularProgressAccessibilityModifier: ViewModifier {

    let configuration: CircularProgressIndicatorConfiguration

    func body(content: Content) -> some View {
        if let progress = configuration.progress {
            // Determinate: expose the percentage value to VoiceOver but never capture Full
            // Keyboard Access focus — the indicator has no action to perform.
            let percent = Int((progress * 100).rounded())
            let determinate = content
                .accessibilityElement(children: .ignore)
                .accessibilityAddTraits([.updatesFrequently, .isStaticText])
                .accessibilityValue(Text(verbatim: "\(percent)%"))

            if #available(iOS 17, macOS 14, visionOS 1, watchOS 10, tvOS 17, *) {
                determinate.accessibilityRespondsToUserInteraction(false)
            } else {
                determinate
            }
        } else {
            // Indeterminate: hidden from VoiceOver (and therefore from FKA too).
            content.accessibilityHidden(true)
        }
    }
}
