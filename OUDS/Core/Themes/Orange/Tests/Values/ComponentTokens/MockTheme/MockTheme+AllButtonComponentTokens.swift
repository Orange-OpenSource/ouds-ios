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
    static let mockThemeButtonWidth: BorderRadiusRawToken = 000
    static let mockThemeButtonColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         borders: AllBorderSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - Button component tokens

    override public var buttonSizeMaxHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeMinHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonSizeMinWidth: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonBorderRadius: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override public var buttonBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthDefaultInteractionMono: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthMinimal: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonBorderWidthMinimalInteraction: BorderWidthSemanticToken { Self.mockThemeButtonWidth }
    override public var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgStrongPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentDefaultPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentMinimalPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorContentStrongPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBgMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderDefaultPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalDisabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalEnabled: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalFocus: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalHover: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalLoading: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalPressed: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderMinimalPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongDisabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongEnabledMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongHoverMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongLoadingMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
    override public var buttonColorBorderStrongPressedMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
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
