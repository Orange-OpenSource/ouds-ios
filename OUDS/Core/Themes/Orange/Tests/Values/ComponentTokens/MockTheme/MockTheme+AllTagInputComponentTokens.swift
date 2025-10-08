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

final class MockThemeInputTagComponentTokenProvider: OrangeThemeInputTagComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeInputTagColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeInputTagBorderWidth: BorderWidthSemanticToken = 666

    override public init(borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?)
    {
        super.init(borders: borders, colors: colors)
    }

    // MARK: - Colors

    override var inputTagColorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBgHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorContentHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }
    override var inputTagColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeInputTagColor }

    // MARK: - Borders

    override var inputTagBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeInputTagBorderWidth }
    override var inputTagBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeInputTagBorderWidth }
}

// swiftlint:enable required_deinit
