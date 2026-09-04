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

// MARK: - Circular Progress Indicator View

/// Internal view that draws an ``OUDSCircularProgressIndicator``.
struct CircularProgressIndicatorView: View {

    // MARK: Properties

    let configuration: CircularProgressIndicatorConfiguration

    @ScaledMetric private var scaledDefaultSize: CGFloat

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.oudsUseMonochrome) private var useMonochrome

    // MARK: Initializer

    init(configuration: CircularProgressIndicatorConfiguration) {
        self.configuration = configuration
        _scaledDefaultSize = ScaledMetric(wrappedValue: configuration.size)
    }

    // MARK: Body

    var body: some View {
        VStack(alignment: .center, spacing: CGFloat(theme.progressIndicator.spacePaddingBlock)) {
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
                        size: scaledDefaultSize)
                }
            }
            .frame(width: scaledDefaultSize, height: scaledDefaultSize)

            HelperTextView(configuration: configuration)
        }
        .modifier(ProgressIndicatorAccessibilityModifier(progress: configuration.progress,
                                                         accessibilityLabel: configuration.accessibilityLabel,
                                                         status: configuration.status))
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

// MARK: - Helper Text View

private struct HelperTextView: View {

    // MARK: Properties

    let configuration: CircularProgressIndicatorConfiguration

    // MARK: Body

    var body: some View {
        if let helperTextType = configuration.helperTextType {
            switch helperTextType {
            case let .description(description):
                OneElementHelperTextView(description: description, alignment: .center)
            case let .percent(description):
                if let percent = percent() {
                    if let description {
                        OneElementHelperTextView(description: "\(percent) \(description)", alignment: .center)
                    } else {
                        OneElementHelperTextView(description: percent, alignment: .center)
                    }
                } else {
                    OneElementHelperTextView(description: description, alignment: .center)
                }
            }
        }
    }

    // MARK: Helper

    private func percent() -> String? {
        if let progress = configuration.progress {
            let value = Int((progress * 100).rounded())
            return "core_progressIndicator_percent_value".localized(with: value)
        } else {
            return nil
        }
    }
}
