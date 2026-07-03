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

import Foundation
import OUDSThemesContract
import OUDSThemesOrange
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit
// swiftlint:disable type_name

final class MockThemeListItemComponentTokenProvider: OrangeThemeListItemComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeListItemSize: DimensionRawToken = 119
    static let mockThemeListItemSpace: DimensionRawToken = 219
    static let mockThemeListItemColor = MultipleColorSemanticToken("#00FF00")
    static let mockThemeListItemBorderRadius: BorderRadiusRawToken = 444_720
    static let mockThemeListItemBorderWidth: BorderWidthRawToken = 102
    static let mockThemeListItemFontSize: FontSizeRawToken = 1_338
    static let mockThemeListItemFontLineHeight: FontLineHeightRawToken = 1_001
    static let mockThemeListItemFontLetterSpacing: FontLetterSpacingRawToken = 778
    static let mockThemeListItemOpacity: OpacityRawToken = 0.43

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
    }

    // MARK: - ListItem component tokens - Colors

    override var colorBgBadgeSafetyArea: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgCurrentEnabled: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgCurrentHover: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgCurrentPressed: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgCurrentDisabled: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgCurrentFocus: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgHover: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgPressed: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgLoading: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorBgFocus: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentLoader: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentCurrentEnabled: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentCurrentHover: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentCurrentPressed: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentCurrentDisabled: MultipleColorSemanticToken { Self.mockThemeListItemColor }
    override var colorContentCurrentFocus: MultipleColorSemanticToken { Self.mockThemeListItemColor }

    // MARK: - ListItem component tokens - Fonts

    override var fontSizeAvatarInitialXlarge: FontSizeSemanticToken { Self.mockThemeListItemFontSize }
    override var fontLineHeightAvatarInitialXlarge: FontLineHeightSemanticToken { Self.mockThemeListItemFontLineHeight }
    override var fontLetterSpacingAvatarInitialXlarge: FontLetterSpacingSemanticToken { Self.mockThemeListItemFontLetterSpacing }

    // MARK: - ListItem component tokens - Opacities

    override var opacityCurrentIndicator: OpacitySemanticToken { Self.mockThemeListItemOpacity }
    override var opacityCurrentDivider: OpacitySemanticToken { Self.mockThemeListItemOpacity }

    // MARK: - ListItem component tokens - Borders

    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeListItemBorderWidth }
    override var borderWidthCurrentPage: BorderWidthSemanticToken { Self.mockThemeListItemBorderWidth }
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }
    override var borderRadiusMedia: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }
    override var borderRadiusMediaRounded: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }
    override var borderRadiusCurrentIndicator: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }
    override var borderRadiusItemOnly: BorderRadiusSemanticToken { Self.mockThemeListItemBorderRadius }

    // MARK: - ListItem component tokens - Spaces

    override var spacePaddingInline: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spaceColumnGap: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spaceRowGap: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingInlineErrorIcon: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockSlotTextContainer: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockBottomSlotListItemContainer: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockTopAlignmentTopTextContainerSmall: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockTopAlignmentTopTextContainerDefault: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockTopAlignmentTopCounterweightSmall: SpaceSemanticToken { Self.mockThemeListItemSpace }
    override var spacePaddingBlockTopAlignmentTopCounterweightDefault: SpaceSemanticToken { Self.mockThemeListItemSpace }

    // MARK: - ListItem component tokens - Sizes

    override var sizeControlIndicator: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMinHeightSmall: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMinHeightDefault: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMaxSizeLeadingTrailingSlot: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeAssetSmall: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeAssetMedium: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeAssetLarge: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeAssetXlarge: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeLoader: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeFlagHeight: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeCurrentIndicatorWidth: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeErrorIcon: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeListItemSize }
    override var sizeIcon: SizeSemanticToken { Self.mockThemeListItemSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
