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

// TODO: #265 - Replace with incoming icon component

/// An icon element that can be used at the leading or trailing position of a list item
/// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemIcon`` displays a status icon (info, warning, positive, negative) with a predefined asset,
/// or a custom neutral icon from a provided image. Each icon type has a semantic color applied automatically
/// based on the current theme.
///
/// An optional notification badge can be attached to neutral icons to indicate additional status.
///
/// ## Icon types
///
/// The ``IconType`` enum defines the available icon variants:
/// - **`.neutral(asset:badge:)`**: A custom icon from a provided `Image` asset, rendered with the default
///   content color. An optional notification badge (small dot) can be displayed at the top-trailing corner.
/// - **`.positive`**: A predefined checkmark/confirmation icon with a positive (green) semantic color.
/// - **`.info`**: A predefined information icon with an informational (blue) semantic color.
/// - **`.warning`**: A predefined warning icon with a warning (yellow/orange) semantic color.
///   This icon uses a two-layer rendering with distinct internal and external shape colors.
/// - **`.negative`**: A predefined alert/important icon with a negative (red) semantic color.
///
/// ## Sizes
///
/// The ``Size`` enum defines the available sizes:
/// - **`.medium`**: The default size, corresponding to the theme's `controlItem.sizeAssetMedium` token.
/// - **`.large`**: The largest size, corresponding to the theme's `controlItem.sizeAssetLarge` token.
///
/// **Note:** When the icon is embedded in a list item with small size
/// (via `SwiftUI/View/oudsListItemSize(_:)`), the icon is always rendered at its smallest size
/// regardless of the `size` parameter.
///
/// ## Code samples
///
/// ```swift
///     // Info icon with medium size (default)
///     OUDSListItemIcon(type: .info)
///
///     // Warning icon with large size
///     OUDSListItemIcon(type: .warning, size: .large)
///
///     // Negative icon with medium size
///     OUDSListItemIcon(type: .negative, size: .medium)
///
///     // Custom neutral icon without badge
///     OUDSListItemIcon(type: .neutral(asset: Image(decorative: "ic_heart")))
///
///     // Custom neutral icon with notification badge
///     OUDSListItemIcon(type: .neutral(asset: Image(decorative: "ic_heart"), badge: true))
///
///     // Usage as leading element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Information"),
///         leading: .icon(OUDSListItemIcon(type: .info, size: .medium))
///     )
///
///     // Usage as trailing element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Warning"),
///         trailing: .icon(OUDSListItemIcon(type: .warning, size: .medium))
///     )
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemIcon: View {

    /// Defines the type of icon to display.
    /// Each type determines the icon asset and its semantic foreground color.
    ///
    /// - Since: 2.2.0
    @frozen public enum IconType {
        /// A custom icon from a provided `Image` asset, rendered with the default content color.
        ///
        /// - Parameters:
        ///   - asset: The `Image` to display as the icon.
        ///   - badge: When `true`, a small notification badge (``OUDSBadge`` with `.negative` status)
        ///     is displayed at the top-trailing corner of the icon. Defaults to `false`.
        case neutral(asset: Image, badge: Bool = false)

        /// A predefined checkmark/confirmation icon with a positive semantic color.
        case positive

        /// A predefined information icon with an informational semantic color.
        case info

        /// A predefined warning icon with a warning semantic color.
        /// This icon uses a two-layer rendering with distinct colors for the
        /// internal and external shapes of the warning symbol.
        case warning

        /// A predefined alert/important icon with a negative semantic color.
        case negative
    }

    /// Defines the available sizes for the icon.
    /// When the icon is embedded in a list item with `.small` size, this parameter is ignored
    /// and a smallest size is always used.
    ///
    /// - Since: 2.2.0
    @frozen public enum Size {
        /// The default icon size.
        case medium

        /// The largest icon size.
        case large
    }

    // MARK: - Initializer

    /// Creates an icon element for use in a list item at the leading or trailing position.
    ///
    /// ```swift
    ///     OUDSListItemIcon(type: .info)
    ///     OUDSListItemIcon(type: .neutral(asset: Image(decorative: "ic_heart"), badge: true), size: .large)
    /// ```
    ///
    /// - Parameters:
    ///   - type: The type of icon to display. See ``IconType`` for available options.
    ///   - size: The size of the icon. Defaults to `.medium`.
    ///     **Note:** Ignored when the icon is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    public init(type: IconType, size: Size = .medium) {
        self.type = type
        self.size = size
    }

    // MARK: - Properties

    private let type: IconType
    private let size: Size

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize

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
                        OUDSBadgeStandard(accessibilityLabel: "", status: .negative, size: badgeSize)
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

    // MARK: - Private Helpers

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

    private var assetSize: SizeSemanticToken {
        switch itemSize {
        case .standard:
            switch size {
            case .medium:
                theme.controlItem.sizeAssetMedium
            case .large:
                theme.controlItem.sizeAssetLarge
            }
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }

    private var badgeSize: OUDSBadgeStandard.Size {
        if itemSize == .small {
            .extraSmall
        } else {
            switch size {
            case .medium:
                .extraSmall
            case .large:
                .small
            }
        }
    }
}
