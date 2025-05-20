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
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - Chip component tokens

    override public var chipSizeMinHeight: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipSizeMinWidth: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipSizeIcon: SizeSemanticToken { Self.mockThemeChipSize }
    override public var chipBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthSelectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderWidthUnselectedInteraction: BorderWidthSemanticToken { Self.mockThemeChipBorderWidth }
    override public var chipBorderRadiusPill: BorderRadiusSemanticToken { Self.mockThemeChipBorderRadius }
    override public var chipColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderDisabled: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderSelected: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderUnselected: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeChipColor }
    override public var chipSpacePaddingInlineLabelStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineLabelEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIconStart: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIconEnd: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpaceInsetIconOnly: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeChipSpace }
    override public var chipSpaceColumnGapColumnGap: SpaceSemanticToken { Self.mockThemeChipSpace }
}

// swiftlint:enable required_deinit
