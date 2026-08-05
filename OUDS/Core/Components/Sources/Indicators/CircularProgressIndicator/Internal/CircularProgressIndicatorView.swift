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
                CircularProgressIndicatorAnimatorView(
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

    private var foregroundColor: Color { // TODO: #409 - Check monochrome / high contrast mode, and surface color mode
        if useMonochrome {
            return theme.colors.contentDefault.color(for: colorScheme)
        }
        return statusColor.color(for: colorScheme)
    }

    private var trackColor: Color { // TODO: #409 - Check monochrome / high contrast mode, and surface color mode
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
