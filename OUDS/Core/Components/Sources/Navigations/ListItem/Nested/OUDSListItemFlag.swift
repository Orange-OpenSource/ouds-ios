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

/// An country flag element that can be used at the leading or trailing position of a list item
/// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemFlag`` displays a country flag (i.e. image)
///
/// ## Sizes
///
/// The ``Size`` enum defines the available sizes:
/// - **`.medium`**: The default size, suited for standard list items.
/// - **`.large`**: A larger variant for increased visual prominence.
/// - **`.extraLarge`**: The largest variant, typically used for profile-like displays.
///
/// **Note:** When the image is embedded in a list item with small size
/// (via `SwiftUI/View/oudsListItemSize(_:)`), the icon is always rendered at its smallest size.
///
/// ## Code samples
///
/// ```swift
///     // Country flag with medium size (default)
///     OUDSListItemFlag(asset: "il_flag_fr")
///
///     // Country flag with large size
///     OUDSListItemFlag(asset: "il_flag_fr", size: .large)
///
///     // Usage as leading element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Information"),
///         leading: .flag(.init(asset: "il_flag_fr", size: .large))
///     )
///
///     // Usage as trailing element in a list item
///     OUDSStaticListItem(
///         data: OUDSListItemData(label: "Warning"),
///         trailing: .flag(.init(asset: "il_flag_fr", size: .large))
///     )
/// ```
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemFlag: View {

    // MARK: Properties

    private let asset: Image
    private let size: Size

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize

    /// Defines the available sizes (i.e. height) for the image of the country flag.
    /// When the image is embedded in a list item with `.small` size, this parameter is ignored
    /// and a smallest size is always used.
    ///
    /// - Since: 2.2.0
    @frozen public enum Size {
        /// The medium size, used as the default in standard list items.
        case medium

        /// The large size, providing increased visual prominence.
        case large

        /// The extra-large size, typically used for profile-like displays.
        case extraLarge
    }

    // MARK: - Initializer

    /// Creates an icon element for use in a list item at the leading or trailing position.
    ///
    /// ```swift
    ///     // Decorative image
    ///     OUDSListItemFlag(asset: Image(decorative: "il_flag_fr"))
    /// ```
    ///
    /// - Parameters:
    ///   - asset: The asset contains the image
    ///   - size: The size of the icon. Defaults to `.medium`.
    ///     **Note:** Ignored when the icon is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    public init(asset: Image, size: Size = .medium) {
        self.asset = asset
        self.size = size
    }

    // MARK: Body

    public var body: some View {
        HStack {
            ScaledIcon(icon: asset, size: theme.controlItem.sizeFlagHeight)
                .opacity(opacity)
        }
        .frame(minWidth: frameHeight, alignment: .center)
    }

    // MARK: Helpers

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var frameHeight: CGFloat {
        let rawSize = if itemSize == .small {
            // TODO: ouds/💠_control/list-item/size/asset/small
            theme.controlItem.sizeAssetSmall
        } else {
            switch size {
            case .medium:
                // TODO: ouds/💠_control/list-item/size/asset/medium
                theme.controlItem.sizeAssetMedium
            case .large:
                // TODO: ouds/💠_control/list-item/size/asset/large
                theme.controlItem.sizeAssetLarge
            case .extraLarge:
                // TODO: ouds/💠_control/list-item/size/asset/xLarge
                theme.controlItem.sizeAssetXlarge
            }
        }

        return rawSize * dynamicTypeSize.percentageRate / 100
    }
}
