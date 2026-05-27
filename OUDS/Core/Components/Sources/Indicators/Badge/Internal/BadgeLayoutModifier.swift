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

import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

struct BadgeLayoutModifier: ViewModifier {

    // MARK: Properties

    let configuration: BadgeConfiguration
    let accessibilityLabel: String

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled: Bool
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: Body

    func body(content: Content) -> some View {
        let status = standardStatus(from: configuration)
        let (foregroundColor, backgroundColor) = colors(for: status)

        content
            .frame(minWidth: computedFrameSize,
                   maxWidth: computedMaxWidth,
                   minHeight: computedFrameSize,
                   maxHeight: computedMaxHeight,
                   alignment: .center)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusPill))
            .accessibilityHidden(accessibilityLabel.isEmpty)
            .accessibilityLabel(accessibilityLabel)
    }

    // MARK: Helpers

    /// Returns the raw frame size according to the concrete configuration type.
    private func rawFrameSize(from configuration: BadgeConfiguration) -> CGFloat {
        switch configuration {
        case let standard as BadgeStandardConfiguration:
            rawFrameSize(from: standard.size)
        case let count as BadgeCountConfiguration:
            rawFrameSize(from: count.size)
        case let icon as BadgeIconConfiguration:
            rawFrameSize(from: icon.size)
        default:
            // Should never happen, only 3 implementations of BadgeConfiguration:
            // BadgeStandardConfiguration, BadgeCountConfiguration and BadgeIconConfiguration
            OL.fatal("Impossible to compute the raw frame size for the badge.")
        }
    }

    private func rawFrameSize(from size: OUDSBadgeStandard.Size) -> CGFloat {
        switch size {
        case .extraSmall:
            theme.badge.sizeXsmall
        case .small:
            theme.badge.sizeSmall
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
    }

    private func rawFrameSize(from size: OUDSBadgeCount.Size) -> CGFloat {
        switch size {
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
    }

    private func rawFrameSize(from size: OUDSBadgeIcon.Size) -> CGFloat {
        switch size {
        case .extraSmall:
            theme.badge.sizeXsmall
        case .small:
            theme.badge.sizeSmall
        case .medium:
            theme.badge.sizeMedium
        case .large:
            theme.badge.sizeLarge
        }
    }

    /// Returns the value to apply to compute frame size.
    /// If the text is not large, uses the expected tokens.
    /// Otherwise uses the largest token and applies a factor based on the text size rate to have bigger size.
    private func size(computeFrom configuration: BadgeConfiguration) -> CGFloat {
        let rawSize = rawFrameSize(from: configuration)
        return rawSize * (dynamicTypeSize.isLargeTextUsed ? dynamicTypeSize.percentageRate / 100 : 1)
    }

    /// Returns the computed frame size (min width / min height).
    private var computedFrameSize: CGFloat {
        size(computeFrom: configuration)
    }

    /// Returns the max width.
    /// If count defined, i.e. means a text, don't limit width.
    private var computedMaxWidth: CGFloat? {
        if configuration is BadgeCountConfiguration {
            return nil
        }
        return computedFrameSize
    }

    /// Returns the max height.
    /// If count defined, i.e. means a text, don't limit width.
    private var computedMaxHeight: CGFloat? {
        if configuration is BadgeCountConfiguration {
            return nil
        }
        return computedFrameSize
    }

    /// Converts any badge configuration status to standard status.
    private func standardStatus(from configuration: BadgeConfiguration) -> OUDSBadgeStandard.Status {
        switch configuration {
        case let standard as BadgeStandardConfiguration:
            standard.status
        case let count as BadgeCountConfiguration:
            count.status
        case let icon as BadgeIconConfiguration:
            icon.status.toStandardStatus
        default:
            // Should never happen, only 3 implementations of BadgeConfiguration:
            // BadgeStandardConfiguration, BadgeCountConfiguration and BadgeIconConfiguration
            OL.fatal("Impossible to compute the standard status for the badge.")
        }
    }

    /// Returns the foreground and background colors for the given status
    private func colors(for status: OUDSBadgeStandard.Status) -> (MultipleColorSemanticToken, MultipleColorSemanticToken) {
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

        return (foregroundColor, backgroundColor)
    }
}
