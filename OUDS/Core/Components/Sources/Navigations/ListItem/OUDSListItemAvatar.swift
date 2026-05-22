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

/// The avatar used in a ``OUDSListItem`` at leading or trailing.
///
/// - Since: 2.0.0
public struct OUDSListItemAvatar: View {

    /// The type of the avatar (image, initials or icon)
    ///
    /// - Since: 2.0.0
    @frozen public enum AvatarType {
        /// Avatar with image
        case image(Image)

        /// Avatar with initails, (2 characters max)
        case initials(String)

        /// Avatar with predifined icon
        case icon
    }

    /// Define the available size of avatar
    @frozen public enum Size {
        /// The medium size used in standard size of the list item
        case medium

        /// The large size used in standard size of the list item
        case large

        /// The extra lage size used in standard size of the list item
        case extraLarge
    }

    // MARK: - Initializer

    /// Create the avata view to be displayed in the leading or trailing trailing containers
    /// of the ``OUDSListItem``.
    ///
    /// - Parameters:
    ///     - type: The type of the avatar
    ///     - size: The size of the avatar.
    ///     **Reamrk : Ignored, if it is embeded in an item with small size (`oudsListItemSize`), and the smallest size is applied**
    ///     - badge: An option `OUDBadge` set at bottom trailing of the avatar.
    ///
    /// **Reamrk : If embeded in an item wit small size (`oudsListItemSize`), the size is ignored  **
    public init(type: AvatarType, size: Size, badge: OUDSBadge? = nil) {
        self.type = type
        self.size = size
        self.badge = badge
    }

    // MARK: - Properties

    let type: AvatarType
    let size: Size
    let badge: OUDSBadge?

    @Environment(\.isEnabled) private var isEnabled
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
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
                // TODO: a vérifier car figma 2xlarge
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

    private var badgeSize: OUDSBadge.StandardSize {
        switch itemSize {
        case .small:
            .extraSmall
        case .standard:
            switch size {
            case .medium:
                .extraSmall
            case .large:
                .small
            case .extraLarge:
                .medium
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
