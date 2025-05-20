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

final class MockThemeSelectComponentTokenProvider: OrangeThemeSelectComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeSelectSize: DimensionRawToken = 118
    static let mockThemeSelectSpace: DimensionRawToken = 218
    static let mockThemeSelectColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Link component tokens

    override public var selectSizeMaxHeightContainerIcon: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeMinHeight: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeMinHeightIconOnly: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeMinWidth: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeMinWidthIconOnly: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeCheckBox: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeIcon: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectSizeLoader: SizeSemanticToken { Self.mockThemeSelectSize }
    override public var selectColorBgDisabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBgHover: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBgLoading: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBorderDisabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBorderLoading: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextDisabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextEnabled: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextFocus: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextHover: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextLoading: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHelperTextPressed: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentHover: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentLoading: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeSelectColor }
    override public var selectSpaceColumnGap: SpaceSemanticToken { Self.mockThemeSelectSpace }
    override public var selectSpacePaddingInset: SpaceSemanticToken { Self.mockThemeSelectSpace }
    override public var selectSpaceRowGap: SpaceSemanticToken { Self.mockThemeSelectSpace }
}

// swiftlint:enable required_deinit
