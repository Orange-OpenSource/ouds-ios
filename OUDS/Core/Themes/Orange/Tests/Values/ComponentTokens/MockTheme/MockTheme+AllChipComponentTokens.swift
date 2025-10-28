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
import OUDS
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

    override var chipSizeIcon: SizeSemanticToken { Self.mockThemeChipSize }
    override var chipSizeMinWidth: SizeSemanticToken { Self.mockThemeChipSize }
    override var chipSizeMinHeight: SizeSemanticToken { Self.mockThemeChipSize }
    override var chipSizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeChipSize }

    override var chipBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var chipBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var chipBorderWidthUnselectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override var chipBorderRadius: BorderRadiusSemanticToken { Self.mockThemeChipBorderWidth }

    override var chipBadgeColorBg: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipBadgeColorContent: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBgUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedTickEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorContentUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override var chipColorBorderUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }

    override var chipSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpacePaddingBlockIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpacePaddingInlineIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpacePaddingInlineBadgeStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override var chipSpaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
}

// swiftlint:enable required_deinit
