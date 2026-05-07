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

final class MockThemeControlItemComponentTokenProvider: OrangeThemeControlItemComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeControlItemSize: DimensionRawToken = 118
    static let mockThemeControlItemSpace: DimensionRawToken = 218
    static let mockThemeControlItemColor = MultipleColorSemanticToken("#00FF00")
    static let mockThemeControlItemBorderRadius: BorderRadiusRawToken = 444_719
    static let mockThemeControlItemBorderWidth: BorderWidthRawToken = 101
    static let mockThemeControlItemFontSize: FontSizeRawToken = 1_337
    static let mockThemeControlItemFontLineHeight: FontLineHeightRawToken = 1_000
    static let mockThemeControlItemFontLetterSpacing: FontLetterSpacingRawToken = 777
    static let mockThemeControlItemOpacity: OpacityRawToken = 0.42

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities, dimensions: dimensions)
    }

    // MARK: - ControlItem component tokens - Colors

    override var colorBgCurrentEnabled: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorBgCurrentHover: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorBgCurrentPressed: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorBgCurrentDisabled: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorBgCurrentFocus: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorContentCurrentEnabled: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorContentCurrentHover: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorContentCurrentPressed: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorContentCurrentDisabled: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorContentCurrentFocus: MultipleColorSemanticToken { Self.mockThemeControlItemColor }
    override var colorBadgeSafetyArea: MultipleColorSemanticToken { Self.mockThemeControlItemColor }

    // MARK: - ControlItem component tokens - Fonts

    override var fontSizeAvatarInitialXlarge: FontSizeSemanticToken { Self.mockThemeControlItemFontSize }
    override var fontLineHeightAvatarInitialXlarge: FontLineHeightSemanticToken { Self.mockThemeControlItemFontLineHeight }
    override var fontLetterSpacingAvatarInitialXlarge: FontLetterSpacingSemanticToken { Self.mockThemeControlItemFontLetterSpacing }

    // MARK: - ControlItem component tokens - Opacities

    override var opacityCurrentIndicator: OpacitySemanticToken { Self.mockThemeControlItemOpacity }
    override var opacityCurrentDivider: OpacitySemanticToken { Self.mockThemeControlItemOpacity }

    // MARK: - ControlItem component tokens - Borders

    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeControlItemBorderWidth }
    override var borderWidthCurrentPage: BorderWidthSemanticToken { Self.mockThemeControlItemBorderWidth }
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var borderRadiusMedia: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var borderRadiusMediaRoundedCorner: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }
    override var borderRadiusCurrentIndicator: BorderRadiusSemanticToken { Self.mockThemeControlItemBorderRadius }

    // MARK: - ControlItem component tokens - Spaces

    override var spacePaddingInline: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spaceColumnGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spaceRowGap: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockBottomSlot: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityCompact: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityCompactTopAlignmentTopText_container: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityCompactTopAlignmentTopCounterweight: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityCompactBottomExpandContainer: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityDefault: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityDefaultTopAlignmentTopTextContainer: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityDefaultTopAlignmentTopCounterweight: SpaceSemanticToken { Self.mockThemeControlItemSpace }
    override var spacePaddingBlockDensityDefaultBottomExpandContainer: SpaceSemanticToken { Self.mockThemeControlItemSpace }

    // MARK: - ControlItem component tokens - Sizes

    override var sizeControlIndicator: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMinHeightCompact: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMinHeightDefault: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeAssetSmall: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeAssetMedium: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeAssetLarge: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeAssetXlarge: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeFlagHeight: SizeSemanticToken { Self.mockThemeControlItemSize }
    override var sizeCurrentIndicatorWidth: SizeSemanticToken { Self.mockThemeControlItemSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
