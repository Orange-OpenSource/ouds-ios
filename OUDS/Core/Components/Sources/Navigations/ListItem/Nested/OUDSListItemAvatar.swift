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

// An avatar element that can be used at the leading or trailing position of a list item
// such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
//
// ``OUDSListItemAvatar`` displays a circular visual identifier that can represent a user, a contact,
// or any entity. It supports three content types: a predefined icon, a custom image, or text initials.
// An optional ``OUDSBadge`` can be attached at the bottom-trailing corner to indicate status.
//
// ## Avatar types
//
// The ``AvatarType`` enum defines the content displayed inside the avatar:
// - **`.icon`**: A predefined person/people icon from the current theme's resource bundle.
// - **`.image(_:)`**: A custom `Image` asset that fills the avatar circle.
// - **`.initials(_:)`**: A short text string (2 characters maximum) rendered centered in the avatar.
//
// ## Sizes
//
// The ``Size`` enum defines the available sizes for the avatar:
// - **`.medium`**: The default size, suited for standard list items.
// - **`.large`**: A larger variant for increased visual prominence.
// - **`.extraLarge`**: The largest variant, typically used for profile-like displays.
//
// **Note:** When the avatar is embedded in a list item with small size
// (via ``SwiftUICore/View/oudsListItemSize(_:)``), the `size` parameter is **ignored**
// and the avatar is always rendered at its smallest available size.
//
// ## Badge
//
// An optional ``OUDSBadge`` can be placed at the bottom-trailing corner of the avatar
// to convey status information (e.g. online presence, notification count).
// The badge is rendered with a safety-area border matching the theme's `controlItem.colorBadgeSafetyArea`.
//
// The recommended badge sizes per avatar size are:
// - `.medium` avatar → `.extraSmall` badge
// - `.large` avatar → `.small` badge
// - `.extraLarge` avatar → `.medium` badge
//
// ## Code samples
//
// ```swift
//     // Avatar with predefined icon, medium size
//     OUDSListItemAvatar(type: .icon, size: .medium)
//
//     // Avatar with a custom image, large size
//     OUDSListItemAvatar(type: .image(Image("il_placeholder")), size: .large)
//
//     // Avatar with initials, extra large size
//     OUDSListItemAvatar(type: .initials("AB"), size: .extraLarge)
//
//     // Avatar with icon and a notification badge
//     let badge = OUDSBadge(accessibilityLabel: "Online", status: .positive, size: .extraSmall)
//     OUDSListItemAvatar(type: .icon, size: .medium, badge: badge)
//
//     // Avatar with initials and a count badge
//     let countBadge = OUDSBadge(count: 3, accessibilityLabel: "3 messages", status: .negative, size: .small)
//     OUDSListItemAvatar(type: .initials("JD"), size: .large, badge: countBadge)
//
//     // Usage as leading element in a list item
//     OUDSStaticListItem(
//         data: OUDSListItemData(label: "John Doe", description: "Online"),
//         leading: .avatar(OUDSListItemAvatar(type: .icon, size: .medium))
//     )
//
//     // Usage as trailing element in a list item
//     OUDSStaticListItem(
//         data: OUDSListItemData(label: "Contact"),
//         trailing: .avatar(OUDSListItemAvatar(type: .initials("AB"), size: .medium))
//     )
// ```

/// ## Containers alignment
///
/// The avatar, along with other leading/trailing elements and the text container, can be
/// vertically aligned using the ``SwiftUICore/View/oudsListItemContainerAlignment(_:)`` view modifier
/// (`.center` by default, or `.top`).
///
/// - Since: 2.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemAvatar: View {

    /// The type of content displayed inside the avatar.
    ///
    /// - Since: 2.2.0
    @frozen public enum AvatarType {
        /// A custom image that fills the avatar circle.
        /// The image is resized to fill the avatar frame and clipped to a circular shape.
        /// When the view is disabled, the image is rendered with reduced opacity.
        case image(Image)

        /// A short text string (2 characters maximum) rendered centered inside the avatar.
        /// The text is styled with a font size that adapts to the current avatar size
        /// and uses the theme's inverse content color.
        case initials(String)

        /// A predefined person/people icon from the current theme's resource bundle.
        /// The icon is rendered as a template image with the theme's inverse content color.
        case icon
    }

    /// Defines the available sizes for the avatar.
    ///
    /// The actual rendered size is determined by the theme's `controlItem` size tokens.
    /// When the avatar is embedded in a list item with `.small` size
    /// (via ``SwiftUICore/View/oudsListItemSize(_:)``), this parameter is ignored
    /// and the smallest size is always used.
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

    /// Creates an avatar view to be displayed at the leading or trailing position
    /// of a list item such as ``OUDSStaticListItem`` or ``OUDSNavigationListItem``.
    ///
    /// ```swift
    ///     // Simple avatar with icon
    ///     OUDSListItemAvatar(type: .icon, size: .medium)
    ///
    ///     // Avatar with initials and a badge
    ///     let badge = OUDSBadge(accessibilityLabel: "Online", status: .positive, size: .extraSmall)
    ///     OUDSListItemAvatar(type: .initials("JD"), size: .large, badge: badge)
    /// ```
    ///
    /// - Parameters:
    ///    - type: The type of content displayed inside the avatar. See ``AvatarType``.
    ///    - size: The size of the avatar. Defaults to `.medium`.
    /// **Note:** Ignored when embedded in a list item with small size (via ``SwiftUICore/View/oudsListItemSize(_:)``), where the smallest size is always applied.
    ///    - badge: An optional ``OUDSBadge`` displayed at the bottom-trailing corner of the avatar. Defaults to `nil`.
    public init(type: AvatarType, size: Size, badge: OUDSBadge? = nil) {
        self.type = type
        self.size = size
        self.badge = badge
    }

    // MARK: - Properties

    let type: AvatarType
    let size: Size
    let badge: OUDSBadge?

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.oudsListItemSize) private var itemSize

    // MARK: - Body

    public var body: some View {
        ZStack(alignment: .bottomTrailing) {
            HStack {
                switch type {
                case let .image(asset):
                    asset
                        .resizable()
                        .opacity(isEnabled ? theme.opacities.opaque : theme.opacities.disabled)
                case let .initials(letters):
                    Text(letters)
                        .modifier(TypographyModifier(family: theme.fontFamily, font: font))
                        .dynamicTypeSize(.medium)
                        .foregroundStyle(foregroundColor)
                case .icon:
                    Image(decorative: "ic_communication_people_avatar", bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: avatarSize, alignment: .center)
                        .foregroundStyle(foregroundColor)
                }
            }
            .frame(width: frameSize, height: frameSize, alignment: .center)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: theme.borders.radiusPill))

            if let badge {
                badge.border(style: theme.borders.styleDefault,
                             width: theme.borders.widthThin,
                             radius: theme.borders.radiusPill,
                             color: theme.controlItem.colorBadgeSafetyArea)
            }
        }
    }

    // MARK: - Size helpers

    private var frameSize: SizeSemanticToken {
        switch itemSize {
        case .standard:
            switch size {
            case .medium:
                theme.controlItem.sizeAssetMedium
            case .large:
                theme.controlItem.sizeAssetLarge
            case .extraLarge:
                theme.controlItem.sizeAssetXlarge
            }
        case .small:
            theme.controlItem.sizeAssetSmall
        }
    }

    private var avatarSize: SizeSemanticToken {
        switch itemSize {
        case .small:
            12
        case .standard:
            switch size {
            case .medium:
                16
            case .large:
                24
            case .extraLarge:
                36
            }
        }
    }

    // MARK: - Color helpers

    private var foregroundColor: MultipleColorSemanticToken {
        isEnabled ? theme.colors.contentInverse : theme.colors.contentOnActionDisabled
    }

    private var backgroundColor: MultipleColorSemanticToken {
        isEnabled ? theme.colors.surfaceInverseHigh : theme.colors.actionDisabled
    }

    // MARK: - Font helpers

    private var font: MultipleFontCompositeSemanticToken {
        switch itemSize {
        case .small:
            MultipleFontCompositeSemanticToken(smallFont)
        case .standard:
            switch size {
            case .medium:
                MultipleFontCompositeSemanticToken(smallFont)
            case .large:
                MultipleFontCompositeSemanticToken(largeFont)
            case .extraLarge:
                MultipleFontCompositeSemanticToken(extraLargeFont)
            }
        }
    }

    private var smallFont: FontCompositeSemanticToken {
        .init(size: theme.fonts.sizeLabelSmall,
              lineHeight: theme.fonts.lineHeightLabelSmall,
              weight: theme.fonts.weightLabelModerate,
              letterSpacing: theme.fonts.letterSpacingLabelSmall)
    }

    private var largeFont: FontCompositeSemanticToken {
        .init(size: theme.fonts.sizeLabelXlarge,
              lineHeight: theme.fonts.lineHeightLabelXlarge,
              weight: theme.fonts.weightLabelModerate,
              letterSpacing: theme.fonts.letterSpacingLabelXlarge)
    }

    private var extraLargeFont: FontCompositeSemanticToken {
        .init(size: theme.controlItem.fontSizeAvatarInitialXlarge,
              lineHeight: theme.controlItem.fontLineHeightAvatarInitialXlarge,
              weight: theme.fonts.weightLabelModerate,
              letterSpacing: theme.controlItem.fontLetterSpacingAvatarInitialXlarge)
    }
}
