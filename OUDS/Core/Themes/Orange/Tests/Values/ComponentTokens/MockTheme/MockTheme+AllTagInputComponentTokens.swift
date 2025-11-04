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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeInputTagComponentTokenProvider: OrangeThemeInputTagComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeInputTagColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeInputTagBorderWidth: BorderWidthSemanticToken = 666

    override init(borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?)
    {
        super.init(borders: borders, colors: colors)
    }

    // MARK: - Colors

    override var colorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBgHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBgPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBgFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorContentHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorContentPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorContentFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBorderHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var colorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }

    // MARK: - Borders

    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeInputTagBorderWidth }
    override var borderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeInputTagBorderWidth }
}

// swiftlint:enable required_deinit
