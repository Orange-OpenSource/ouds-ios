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

            helperText
        }
        .modifier(ProgressIndicatorAccessibilityModifier(progress: configuration.progress,
                                                         accessibilityLabel: configuration.accessibilityLabel,
                                                         status: configuration.status))
    }

    // MARK: - Sub-views

    @ViewBuilder
    var helperText: some View {
        switch configuration {
        case let .determinate(determinate):
            DeterminateProgressIndicatorHelperText(configuration: determinate)
        case let .indeterminate(indeterminate):
            IndeterminateHelperTextView(configuration: indeterminate)
        }
    }

    @ViewBuilder
    private var bar: some View {
        switch configuration {
        case let .determinate(configuration):
            LinearProgressIndicatorDeterminateView(
                progress: configuration.progress,
                animated: configuration.animated,
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                gapSize: configuration.gapSize,
                hasTrack: configuration.track,
                hasStopIndicator: configuration.stopIndicator,
                barHeight: scaledBarHeight)

        case let .indeterminate(configuration):
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
