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
///
/// And also components token providers...
final class MockTheme: OUDSTheme, @unchecked Sendable {

    convenience init() {
        self.init(fontFamily: nil)
    }

    init(fontFamily: String?) {
        let colors = MockThemeColorSemanticTokensProvider()
        let sizes = MockThemeSizeSemanticTokensProvider()
        let borders = MockThemeBorderSemanticTokensProvider()
        let spaces = MockThemeSpaceSemanticTokensProvider()
        let providers: TokensProviders = [
            colors,
            borders,
            MockThemeElevationSemanticTokensProvider(),
            MockThemeFontSemanticTokensProvider(),
            MockThemeGridSemanticTokensProvider(),
            MockThemeOpacitySemanticTokensProvider(),
            sizes,
            spaces,
            MockThemeButtonComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            MockThemeLinkComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeSelectComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeSkeletonComponentTokenProvider(colors: colors),
            MockThemeTagComponentTokenProvider(colors: colors),
            MockThemeSwitchComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeListItemComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeChipComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
            MockThemeBreadcrumbComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeBulletListComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeInputTextComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
            MockThemeBadgeComponentTokenProvider(sizes: sizes),

            // NOTE: Add here new component tokens provider
        ]
        super.init(tokensProviders: providers, fontFamily: fontFamily)
    }

    deinit { }
}
