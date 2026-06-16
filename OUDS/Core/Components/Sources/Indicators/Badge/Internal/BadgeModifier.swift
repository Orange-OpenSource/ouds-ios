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

struct BadgeModifier: ViewModifier {

    // MARK: - Properties

    let configuration: BadgeConfiguration
    let accessibilityLabel: String
    private let standardSize: OUDSBadgeStandard.Size

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled: Bool
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize: DynamicTypeSize

    // MARK: - Initializer

    init(configuration: BadgeConfiguration, accessibilityLabel: String) {
        self.configuration = configuration
        self.accessibilityLabel = accessibilityLabel
        standardSize = switch configuration {
        case let standard as BadgeStandardConfiguration:
            standard.size
        case let count as BadgeCountConfiguration:
            count.size.toStandardSize
        case let icon as BadgeIconConfiguration:
            icon.size
        default:
            // Should never happen, only 3 implementations of BadgeConfiguration:
            // BadgeStandardConfiguration, BadgeCountConfiguration and BadgeIconConfiguration
            OL.fatal("Impossible to compute the standard size for the badge.")
        }
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .frame(minWidth: frameSize,
                   maxWidth: maxWidth,
                   minHeight: frameSize,
                   maxHeight: maxHeight,
                   alignment: .center)
            .modifier(BadgeColorModifier(configuration: configuration))
            .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusPill))
            .accessibilityHidden(accessibilityLabel.isEmpty)
            .accessibilityLabel(accessibilityLabel)
    }

    // MARK: - Size Helpers

    private var dynamicFrameSize: CGFloat {
        let rawSize = switch standardSize {
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

    /// Returns the computed frame size (min width / min height).
    private var frameSize: CGFloat {
        dynamicFrameSize
    }

    /// Returns the max width.
    /// If count defined, i.e. means a text, don't limit width.
    private var maxWidth: CGFloat? {
        if configuration is BadgeCountConfiguration {
            return nil
        }
        return dynamicFrameSize
    }

    /// Returns the max height.
    /// If count defined, i.e. means a text, don't limit width.
    private var maxHeight: CGFloat? {
        if configuration is BadgeCountConfiguration {
            return nil
        }
        return dynamicFrameSize
    }
}

struct BadgeColorModifier: ViewModifier {

    // MARK: - Properties

    let configuration: BadgeConfiguration

    // MARK: - Body

    func body(content: Content) -> some View {
        let status = standardStatus(from: configuration)
        if configuration is BadgeIconConfiguration {
            content.modifier(BadgeIconColorModifier(status: status))
        } else {
            content.modifier(BadgeTextColorModifier(status: status))
        }
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
}

struct BadgeTextColorModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSBadgeStandard.Status

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
    }

    // MARK: - Color Helpers

    private var foregroundColor: MultipleColorSemanticToken {
        if isEnabled {
            switch status {
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
        } else {
            theme.colors.contentOnActionDisabled
        }
    }

    private var backgroundColor: MultipleColorSemanticToken {
        if isEnabled {
            switch status {
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
        } else {
            theme.colors.actionDisabled
        }
    }
}

struct BadgeIconColorModifier: ViewModifier {

    // MARK: - Properties

    let status: OUDSBadgeStandard.Status

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled: Bool

    // MARK: - Body

    func body(content: Content) -> some View {
        switch status {
        case .neutral, .accent:
            content
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
        case .positive, .negative, .info:
            content
                .foregroundStyle(.tint)
                .tint(foregroundColor)
                .background(backgroundColor)
        case .warning:
            content
        }
    }

    // MARK: - Color Helpers

    private var foregroundColor: MultipleColorSemanticToken {
        if isEnabled {
            switch status {
            case .neutral:
                theme.colors.contentInverse
            case .accent:
                theme.colors.contentOnStatusAccentEmphasized
            case .positive:
                theme.colors.contentStatusPositive
            case .info:
                theme.colors.contentStatusInfo
            case .warning:
                // Should not by used because already set in BadgeIcon
                theme.colors.contentStatusWarning
            case .negative:
                theme.colors.contentStatusNegative
            }
        } else {
            switch status {
            case .neutral, .accent:
                theme.colors.contentOnActionDisabled
            default:
                theme.colors.actionDisabled
            }
        }
    }

    private var backgroundColor: MultipleColorSemanticToken {
        // Do not display any background for functional statuses icon badges that use tinted full
        if isEnabled {
            switch status {
            case .neutral:
                theme.colors.surfaceInverseHigh
            case .accent:
                theme.colors.surfaceStatusAccentEmphasized
            default:
                theme.colors.opacityTransparent
            }
        } else {
            switch status {
            case .neutral, .accent:
                theme.colors.actionDisabled
            default:
                theme.colors.opacityTransparent
            }
        }
    }
}

extension OUDSBadgeIcon.Status {
    var toStandardStatus: OUDSBadgeStandard.Status {
        switch self {
        case .neutral: .neutral
        case .accent: .accent
        case .positive: .positive
        case .info: .info
        case .warning: .warning
        case .negative: .negative
        }
    }
}

extension OUDSBadgeCount.Size {
    var toStandardSize: OUDSBadgeStandard.Size {
        switch self {
        case .medium: .medium
        case .large: .large
        }
    }
}
