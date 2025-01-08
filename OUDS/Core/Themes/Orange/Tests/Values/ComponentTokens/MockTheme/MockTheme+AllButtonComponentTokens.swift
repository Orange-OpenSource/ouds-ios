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

    static let mockThemeButtonSize: DimensionRawToken = 118
    static let mockThemeButtonRadius: BorderRadiusRawToken = 712
    static let mockThemeButtonColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         borders: AllBorderSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    override public var buttonSizeMaxHeight: SizeSemanticToken { Self.mockThemeButtonSize }
    override public var buttonBorderRadius: BorderRadiusSemanticToken { Self.mockThemeButtonRadius }
    override public var buttonColorBgDefaultFocusMono: MultipleColorSemanticTokens { Self.mockThemeButtonColor }
}

// swiftlint:enable required_deinit
