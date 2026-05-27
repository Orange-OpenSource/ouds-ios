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

// MARK: - Badge Layout Modifier (new API)

struct BadgeLayoutModifier: ViewModifier {

    // MARK: Properties

    let accessibilityLabel: String

    private let rawFrameSize: SizeSemanticToken
    private let maxWidth: CGFloat?
    private let maxHeight: CGFloat?
    private let foregroundColor: MultipleColorSemanticToken
    private let backgroundColor: MultipleColorSemanticToken

    @Environment(\.theme) private var theme
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize
    @Environment(\.isEnabled) private var isEnabled: Bool

    // MARK: Initializers

    init(standardLayout: BadgeStandardConfiguration, accessibilityLabel: String) {
        self.accessibilityLabel = accessibilityLabel
        rawFrameSize = switch standardLayout.size {
        case .extraSmall:
            theme.badge.sizeXsmall
        case .small:
            theme.badge.sizeSmall
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
        maxWidth = rawFrameSize
        maxHeight = rawFrameSize
        (foregroundColor, backgroundColor) = colors(for: standardLayout.status)
    }

    init(countLayout: BadgeCountConfiguration, accessibilityLabel: String) {
        self.accessibilityLabel = accessibilityLabel
        rawFrameSize = switch countLayout.size {
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
        maxWidth = nil
        maxHeight = nil
        (foregroundColor, backgroundColor) = colors(for: countLayout.status)
    }

    init(iconLayout: BadgeIconConfiguration, accessibilityLabel: String) {
        self.accessibilityLabel = accessibilityLabel
        rawFrameSize = switch iconLayout.size {
        case .extraSmall:
            theme.badge.sizeXsmall
        case .small:
            theme.badge.sizeSmall
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
        maxWidth = rawFrameSize
        maxHeight = rawFrameSize
        (foregroundColor, backgroundColor) = colors(for: iconLayout.status.toStandardStatus)
    }

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .frame(minWidth: computedFrameSize, maxWidth: computedMaxWidth, minHeight: computedFrameSize, maxHeight: computedMaxHeight, alignment: .center)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusPill))
            .accessibilityHidden(accessibilityLabel.isEmpty)
            .accessibilityLabel(accessibilityLabel)
    }

    // MARK: Helpers

    /// Returns the value to apply to compute frame size.
    /// If the text is not large, uses the expected tokens.
    /// Otherwise uses the largest token and applies a factor based on the text size rate to have bigger size.
    private var computedFrameSize: SizeSemanticToken {
        rawFrameSize * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    /// Returns the max width.
    /// If count defined, i.e. means a text, don't limit width.
    private var computedMaxWidth: CGFloat? {
        guard let maxWidth else { return nil }
        return maxWidth * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    /// Returns the max height.
    /// If count defined, i.e. means a text, don't limit width
    private var computedMaxHeight: CGFloat? {
        guard let maxWidth else { return nil }
        return maxWidth * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    /// Returns the foreground and background colors for the given status
    private func colors(for status: OUDSBadgeStandard.Status) -> (foreground: MultipleColorSemanticToken, background: MultipleColorSemanticToken) {
        let enabledForegroundColor = switch status {
        case .neutral:
            theme.colors.contentInverse
        case .accent:
            theme.colors.contentOnStatusAccentEmphasized
        case .positive:
            theme.colors.contentOnStatusPositiveEmphasized
        case .info:
            theme.colors.contentOnStatusInfoEmphasized
        case .warning:
            theme.colors.contentOnStatusWarningEmphasized
        case .negative:
            theme.colors.contentOnStatusNegativeEmphasized
        }

        let foregroundColor = isEnabled ? enabledForegroundColor : theme.colors.contentOnActionDisabled

        let enabledBackgroundColor = switch status {
        case .neutral:
            theme.colors.surfaceInverseHigh
        case .accent:
            theme.colors.surfaceStatusAccentEmphasized
        case .positive:
            theme.colors.surfaceStatusPositiveEmphasized
        case .info:
            theme.colors.surfaceStatusInfoEmphasized
        case .warning:
            theme.colors.surfaceStatusWarningEmphasized
        case .negative:
            theme.colors.surfaceStatusNegativeEmphasized
        }

        let backgroundColor = isEnabled ? enabledBackgroundColor : theme.colors.actionDisabled

        return (foreground: foregroundColor, background: backgroundColor)
    }
}
