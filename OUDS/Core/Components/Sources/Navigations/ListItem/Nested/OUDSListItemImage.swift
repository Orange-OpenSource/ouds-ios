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

/// An icon element that can be used at the leading or trailing position of a list item
/// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
///
/// ``OUDSListItemImage`` displays an image (square or wide)
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
///     // Info icon with medium size (default)
///     OUDSListItemImage(type: .info)
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
public struct OUDSListItemImage: View {

    /// Defines the available sizes (i.e. height) for the image.
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
    ///     OUDSListItemImage(asset: Image(decorative: "il_placeholder"))
    ///
    ///     // Not decorative image
    ///     OUDSListItemImage(asset: Image("meaningful_image"), description: "A nice landscape")
    /// ```
    ///
    /// - Parameters:
    ///   - asset: The asset contains the image
    ///   - size: The size of the icon. Defaults to `.medium`.
    ///     **Note:** Ignored when the icon is embedded in a list item with small size
    ///     (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    ///   - description: The description of the image if not decorative
    public init(asset: Image, size: Size = .medium, description: String? = nil) {
        self.asset = asset
        self.size = size
        self.description = description
    }

    // MARK: Properties

    let asset: Image
    let size: Size
    let description: String?

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize
    @Environment(\.oudsListItemRoundedMedia) private var roundedMedia

    // MARK: Body

    public var body: some View {
        asset
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(opacity)
            .frame(height: frameHeight, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .accessibilityLabel(description ?? "")
    }

    // MARK: Helpers

    private var radius: BorderRadiusSemanticToken {
        roundedMedia ? theme.controlItem.borderRadiusMediaRoundedCorner : theme.controlItem.borderRadiusMedia
    }

    private var opacity: Double {
        isEnabled ? theme.opacities.opaque : theme.opacities.disabled
    }

    private var frameHeight: CGFloat {
        if itemSize == .small {
            theme.controlItem.sizeAssetSmall
        } else {

            switch size {
            case .medium:
                theme.controlItem.sizeAssetMedium
            case .large:
                theme.controlItem.sizeAssetLarge
            case .extraLarge:
                theme.controlItem.sizeAssetXlarge
            }
        }
    }
}
