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

final class MockThemeButtonComponentTokenProvider: OrangeThemeButtonComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeButtonSize: DimensionRawToken = 118
    static let mockThemeButtonSpace: DimensionRawToken = 218
    static let mockThemeButtonRadius: BorderRadiusRawToken = 712
    static let mockThemeButtonWidth: BorderRadiusRawToken = 1_312
    static let mockThemeButtonColor = MultipleColorSemanticTokens("#00FF00")

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - Button component tokens

    override var sizeMaxHeightIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonBorderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderRadiusSocial: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var buttonBorderWidthDefaultInteractionMono: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var monoColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorContentStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgBrandEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgBrandHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgBrandPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgBrandLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBgBrandFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentBrandEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentBrandHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentBrandPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentBrandLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentBrandFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var colorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var sizeIcon: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeLoader: SizeSemanticToken { Self.mockThemeButtonSize }
    override var spaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceInsetIconOnly: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineEndIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineStartIconEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
}

// swiftlint:enable required_deinit
