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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// TODO: remplacer avec le composant à venir

/// Define the type of Icon to be added at leading/trailing
///
/// - Since: 2.0.0
public struct OUDSLIstItemIcon: View {

    @frozen public enum IconType {
        /// An free solaris icon
        case neutral(asset: Image, badge: Bool = false)

        /// Positive icon
        case positive

        /// Info icon
        case info

        /// Warnong icon
        case warning

        /// Negative icon
        case negative
    }

    @frozen public enum Size {
        case small
        case medium
        case large
    }

    // MARK: - Initializer

    public init(type: IconType, size: Size = .medium) {
        self.type = type
        self.size = size
    }

    // MARK: - Properties

    private let type: IconType
    private let size: Size
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    public var body: some View {
        Group {
            switch type {
            case .warning:
                if isEnabled {
                    ZStack {
                        OUDSIcon(assetName: "ic_alert_warning_external_shape", color: theme.icon.colorContentStatusWarningExternalShape)
                        OUDSIcon(assetName: "ic_alert_warning_internal_shape", color: theme.icon.colorContentStatusWarningInternalShape)
                    }
                } else {
                    asset.foregroundColor(theme.colors.actionDisabled)
                }

            case let .neutral(asset, badge):
                ZStack(alignment: .topTrailing) {
                    asset
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(foregroundColor)
                    if badge {
                        OUDSBadge(accessibilityLabel: "", status: .negative, size: badgeSize)
                            .border(style: theme.borders.styleDefault,
                                    width: theme.borders.widthThin,
                                    radius: theme.borders.radiusPill,
                                    color: theme.controlItem.colorBadgeSafetyArea)
                    }
                }

            default:
                asset.foregroundColor(foregroundColor)
            }
        }
        .frame(width: assetSize, height: assetSize)
    }

    private var asset: Image {
        let assetName =
            switch type {
            case .neutral:
                ""
            case .positive:
                "ic_alert_tick_confirmation_fill"
            case .info:
                "ic_alert_info_fill"
            case .warning:
                "ic_alert_warning_external_shape"
            case .negative:
                "ic_alert_important_fill"
            }

        return Image(decorative: assetName, bundle: theme.resourcesBundle)
            .resizable()
            .renderingMode(.template)
    }

    private var foregroundColor: MultipleColorSemanticToken {
        if isEnabled {
            switch type {
            case .neutral:
                theme.colors.contentDefault
            case .positive:
                theme.colors.contentStatusPositive
            case .info:
                theme.colors.contentStatusInfo
            case .warning:
                theme.colors.contentStatusWarning
            case .negative:
                theme.colors.contentStatusNegative
            }
        } else {
            theme.colors.actionDisabled
        }
    }

    private var assetSize: CGFloat {
        switch size {
        case .small:
            theme.controlItem.sizeAssetSmall
        case .medium:
            theme.controlItem.sizeAssetMedium
        case .large:
            theme.controlItem.sizeAssetLarge
        }
    }

    private var badgeSize: OUDSBadge.StandardSize {
        switch size {
        case .small, .medium:
            .extraSmall
        case .large:
            .small
        }
    }
}
