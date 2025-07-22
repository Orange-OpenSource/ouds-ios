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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeTagInputComponentTokenProvider: OrangeThemeTagInputComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTagInputColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeTagInputBorderWidth: BorderWidthSemanticToken = 666

    override public init(borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?)
    {
        super.init(borders: borders, colors: colors)
    }

    // MARK: - Colors

    override var tagInputColorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBgHover: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorContentHover: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }
    override var tagInputColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeTagInputColor }

    // MARK: - Borders

    override var tagInputBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTagInputBorderWidth }
    override var tagInputBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeTagInputBorderWidth }
}

// swiftlint:enable required_deinit
