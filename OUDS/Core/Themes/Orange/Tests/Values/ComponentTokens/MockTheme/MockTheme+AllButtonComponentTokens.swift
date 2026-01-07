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
    static let mockThemeButtonColor = MultipleColorSemanticToken("#00FF00")

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
    override var monoColorBgDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgMinimalFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgMinimalHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgMinimalPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgStrongPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentMinimalPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorContentStrongPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBgDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgMinimalFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgMinimalHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgMinimalPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgBrandEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgBrandHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgBrandPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgBrandLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgBrandFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentBrandEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentBrandHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentBrandPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentBrandLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentBrandFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var monoColorBorderDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentDefaultPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentMinimalPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
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
