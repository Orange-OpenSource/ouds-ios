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
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var borderRadiusSocial: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var borderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var borderWidthDefaultInteractionMono: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
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
    override var sizeIconSmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeIconOnlySmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeLoader: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeProgressIndicatorSmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMinHeightSmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMinWidthSmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMaxSizeIconOnlyDefault: SizeSemanticToken { Self.mockThemeButtonSize }
    override var sizeMaxSizeIconOnlySmall: SizeSemanticToken { Self.mockThemeButtonSize }
    override var borderRadiusAiIconOnly: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override var borderWidthAi: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var borderWidthAiInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override var colorBgAiEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgAiHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgAiPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgAiLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgAiDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBgAiFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorContentAiFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiEnabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiHover: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiPressed: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiLoading: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiDisabled: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var colorBorderAiFocus: MultipleColorSemanticToken { Self.mockThemeButtonColor }
    override var spaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceColumnGapChevronDefault: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceColumnGapChevronSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceColumnGapIconChevronDefault: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceColumnGapIconChevronSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceInsetIconOnly: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceInsetIconOnlySmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceInsetProgressIndicatorOnlyDefault: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spaceInsetProgressIndicatorOnlySmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronEndSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineChevronStartSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineEndIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineEndIconStartSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconNoneSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineIconStartSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineStartIconEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override var spacePaddingInlineStartIconEndSmall: SpaceSemanticToken { Self.mockThemeButtonSpace }
}

// swiftlint:enable required_deinit
