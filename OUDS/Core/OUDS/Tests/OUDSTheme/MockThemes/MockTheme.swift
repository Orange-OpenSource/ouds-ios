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
/// Uses its own tokens wrappers for tests:
/// - ``MockThemeBorderSemanticTokensWrapper`` for borders
/// - ``MockThemeOpacitySemanticTokensWrapper`` for opacities
/// - ``MockThemeColorSemanticTokensWrapper`` for colors
/// - ``MockThemeElevationSemanticTokensWrapper`` for elevations
/// - ``MockThemeFontSemanticTokensWrapper`` for fonts
/// - ``MockThemeGridSemanticTokensWrapper`` for grids
/// - ``MockThemeOpacitySemanticTokensWrapper`` for opacities
/// - ``MockThemeSizeSemanticTokensWrapper`` for sizes
/// - ``MockThemeSpaceSemanticTokensWrapper`` for spaces
open class MockTheme: OUDSTheme, @unchecked Sendable {

    convenience init() {
        self.init(fontFamily: nil)
    }

    /// For ``OtherMockTheme``
    init(colors: AllColorSemanticTokens) {
        super.init(colors: colors,
                   borders: MockThemeBorderSemanticTokensWrapper(),
                   elevations: MockThemeElevationSemanticTokensWrapper(),
                   fontFamily: nil,
                   fonts: MockThemeFontSemanticTokensWrapper(),
                   grids: MockThemeGridSemanticTokensWrapper(),
                   opacities: MockThemeOpacitySemanticTokensWrapper(),
                   sizes: MockThemeSizeSemanticTokensWrapper(),
                   spaces: MockThemeSpaceSemanticTokensWrapper())
    }

    init(fontFamily: String?) {
        super.init(colors: MockThemeColorSemanticTokensWrapper(),
                   borders: MockThemeBorderSemanticTokensWrapper(),
                   elevations: MockThemeElevationSemanticTokensWrapper(),
                   fontFamily: fontFamily,
                   fonts: MockThemeFontSemanticTokensWrapper(),
                   grids: MockThemeGridSemanticTokensWrapper(),
                   opacities: MockThemeOpacitySemanticTokensWrapper(),
                   sizes: MockThemeSizeSemanticTokensWrapper(),
                   spaces: MockThemeSpaceSemanticTokensWrapper())
    }

    deinit { }
}
