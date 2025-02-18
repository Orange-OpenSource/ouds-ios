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

final class MockThemeInputTextComponentTokenProvider: OrangeThemeInputTextComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeInputTextSize: DimensionRawToken = 118
    static let mockThemeInputTextSpace: DimensionRawToken = 218
    static let mockThemeInputTextColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Input text component tokens

    override public var inputTextSizeMinWidth: SizeSemanticToken { Self.mockThemeInputTextSize }
    override public var inputTextSizeMaxWidth: SizeSemanticToken { Self.mockThemeInputTextSize }
    override public var inputTextColorBgDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorBgDefaultHover: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorBgDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorBgDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorBgDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorBgDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultHover: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultPressed: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultLoading: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultDisabled: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextColorContentDefaultFocus: MultipleColorSemanticTokens { Self.mockThemeInputTextColor }
    override public var inputTextSpaceInsetIconAlone: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlineContainerStart: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlineContainerEnd: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlineTextEnd: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlinePrefixTextEnd: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlineSuffixTextEnd: SpaceSemanticToken { Self.mockThemeInputTextSpace }
    override public var inputTextSpacePaddingInlineIconEnd: SpaceSemanticToken { Self.mockThemeInputTextSpace }
}

// swiftlint:enable required_deinit
