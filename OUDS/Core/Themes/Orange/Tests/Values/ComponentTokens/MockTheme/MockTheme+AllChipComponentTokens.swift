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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?,
                         dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Chip component tokens

    override public var chipSizeIcon: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipSizeMinWidth: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipSizeMinHeight: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipSizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeChipSize }

    override public var chipBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthUnselectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderRadius: BorderRadiusSemanticToken { Self.mockThemeChipBorderWidth }

    override public var chipBadgeColorBg: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipBadgeColorContent: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentSelectedTickEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselectedDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }

    override public var chipSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingBlockIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineArrowEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineBadgeStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpaceColumnGapBadgeArrow: SpaceSemanticToken { Self.mockThemeChipSpace }
}

// swiftlint:enable required_deinit
