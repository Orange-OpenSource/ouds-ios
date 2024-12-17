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
import OUDSTokensSemantic

/// A mock theme for tests. It helps to make tests on themes, mainly for the architecture and the overriding of tokens.
/// *open* to allow some derivative mock themes like ``OtherMockTheme``.
///
/// Uses its own tokens providers for tests:
/// - ``MockThemeBorderSemanticTokensProvider`` for borders
/// - ``MockThemeOpacitySemanticTokensProvider`` for opacities
/// - ``MockThemeColorSemanticTokensProvider`` for colors
/// - ``MockThemeElevationSemanticTokensProvider`` for elevations
/// - ``MockThemeFontSemanticTokensProvider`` for fonts
/// - ``MockThemeGridSemanticTokensProvider`` for grids
/// - ``MockThemeOpacitySemanticTokensProvider`` for opacities
/// - ``MockThemeSizeSemanticTokensProvider`` for sizes
/// - ``MockThemeSpaceSemanticTokensprovider`` for spaces
open class MockTheme: OUDSTheme, @unchecked Sendable {

    convenience init() {
        self.init(fontFamily: nil)
    }

    /// For ``OtherMockTheme``
    init(colors: AllColorSemanticTokens) {
        super.init(colors: colors,
                   borders: MockThemeBorderSemanticTokensProvider(),
                   elevations: MockThemeElevationSemanticTokensProvider(),
                   fontFamily: nil,
                   fonts: MockThemeFontSemanticTokensProvider(),
                   grids: MockThemeGridSemanticTokensProvider(),
                   opacities: MockThemeOpacitySemanticTokensProvider(),
                   sizes: MockThemeSizeSemanticTokensProvider(),
                   spaces: MockThemeSpaceSemanticTokensProvider())
    }

    init(fontFamily: String?) {
        super.init(colors: MockThemeColorSemanticTokensProvider(),
                   borders: MockThemeBorderSemanticTokensProvider(),
                   elevations: MockThemeElevationSemanticTokensProvider(),
                   fontFamily: fontFamily,
                   fonts: MockThemeFontSemanticTokensProvider(),
                   grids: MockThemeGridSemanticTokensProvider(),
                   opacities: MockThemeOpacitySemanticTokensProvider(),
                   sizes: MockThemeSizeSemanticTokensProvider(),
                   spaces: MockThemeSpaceSemanticTokensProvider())
    }

    deinit { }
}
