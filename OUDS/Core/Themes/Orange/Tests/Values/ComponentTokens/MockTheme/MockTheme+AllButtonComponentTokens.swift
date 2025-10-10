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

    override var buttonSizeMaxHeightIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonSizeMinHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonSizeMinWidth: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonBorderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderRadiusSocial: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var buttonBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var buttonBorderWidthDefaultInteractionMono: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var buttonMonoColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorContentStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgBrandEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgBrandHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgBrandPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgBrandLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBgBrandFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentBrandEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentBrandHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentBrandPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentBrandLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentBrandFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonMonoColorBorderStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override var buttonSizeIcon: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonSizeIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonSizeLoader: SizeSemanticToken { Self.mockThemeButtonSize }
    override var buttonSpaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpaceInsetIconOnly: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineChevronStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
}

// swiftlint:enable required_deinit
