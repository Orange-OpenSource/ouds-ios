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

final class MockThemeChipComponentTokenProvider: OrangeThemeChipComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeChipSize: DimensionRawToken = 118
    static let mockThemeChipBorderRadius: BorderRadiusSemanticToken = 42
    static let mockThemeChipBorderWidth: BorderWidthSemanticToken = 42
    static let mockThemeChipSpace: DimensionRawToken = 218
    static let mockThemeChipColor = MultipleColorSemanticTokens("#00FF00")

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Chip component tokens

    override var sizeIcon: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeChipSize }
    override var sizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeChipSize }

    override var borderWidthSelected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderWidthUnselectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeChipBorderWidth }

    override var badgeColorBg: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var badgeColorContent: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBgUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedTickEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorContentUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var colorBorderUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }

    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingBlockIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spacePaddingInlineBadgeStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var spaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
}

// swiftlint:enable required_deinit
