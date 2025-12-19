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

struct BadgeModifier: ViewModifier {

    // MARK: Properties

    let layout: BadgeLayout
    let accessibilityLabel: String

    @Environment(\.theme) private var theme
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize
    @Environment(\.isEnabled) private var isEnabled: Bool

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .frame(minWidth: frameSize, maxWidth: maxWidth, minHeight: frameSize, maxHeight: maxHeight, alignment: .center)
            .oudsForegroundColor(foregroundColor)
            .oudsBackground(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusPill))
            .accessibilityHidden(accessibilityLabel.isEmpty)
            .accessibilityLabel(accessibilityLabel)
    }

    // MARK: Helpers

    /// Returns the value to apply to compute frame size.
    /// If the text is not large, uses the expected tokens.
    /// Otherwise uses the largest token and applies a factor based on the text size rate to have bigger size.
    private var frameSize: SizeSemanticToken {
        let rawSize = switch layout.size {
        case .extraSmall:
            theme.badge.sizeXsmall
        case .small:
            theme.badge.sizeSmall
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
        return rawSize * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    /// Returns the max width.
    /// If count defined, i.e. means a text, don't limit width
    private var maxWidth: CGFloat? {
        if case .count = layout.type {
            nil
        } else {
            frameSize
        }
    }

    /// Returns the max height.
    /// If count defined, i.e. means a text, don't limit width
    private var maxHeight: CGFloat? {
        if case .count = layout.type {
            nil
        } else {
            frameSize
        }
    }

    private var foregroundColor: MultipleColorSemanticTokens {
        let enabbledColor = switch layout.status {
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

        return isEnabled ? enabbledColor : theme.colors.contentOnActionDisabled
    }

    private var backgroundColor: MultipleColorSemanticTokens {
        let enabbledColor = switch layout.status {
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

        return isEnabled ? enabbledColor : theme.colors.actionDisabled
    }
}

extension OUDSBadge.IllustrationSize {

    /// Internal usage: convert to standard size
    public var standardSize: OUDSBadge.StandardSize {
        switch self {
        case .medium:
            .medium
        case .large:
            .large
        }
    }
}

extension OUDSBadge.StatusWithIcon {

    /// The standardized status of the badge contaning an icon
    public var status: OUDSBadge.Status {
        switch self {
        case .neutral:
            .neutral
        case .accent:
            .accent
        case .positive:
            .positive
        case .info:
            .info
        case .warning:
            .warning
        case .negative:
            .negative
        }
    }

    var icon: (image: Image, flipped: Bool)? {
        switch self {
        case let .neutral(icon, flipped):
            (icon, flipped)
        case let .accent(icon, flipped):
            (icon, flipped)
        default:
            nil
        }
    }
}
