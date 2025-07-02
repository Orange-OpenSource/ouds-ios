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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - Button component tokens

    override public var buttonSizeMaxHeightIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeMinHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeMinWidth: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonBorderRadius: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override public var buttonBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthDefaultInteractionMono: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthMinimal: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonMonoColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorContentStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBgMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonMonoColorBorderStrongPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonSizeIcon: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeIconOnly: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeLoader: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSpaceColumnGapArrow: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpaceColumnGapIcon: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpaceInsetIconOnly: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineArrowEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineArrowStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineEndIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineIconNone: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineIconStart: SpaceSemanticToken { Self.mockThemeButtonSpace }
    override public var buttonSpacePaddingInlineStartIconEnd: SpaceSemanticToken { Self.mockThemeButtonSpace }
}

// swiftlint:enable required_deinit
