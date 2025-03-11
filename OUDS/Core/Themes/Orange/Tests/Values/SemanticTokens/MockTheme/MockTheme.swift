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
        let borders = MockThemeBorderSemanticTokensProvider()
        let elevations = MockThemeElevationSemanticTokensProvider()
        let fonts = MockThemeFontSemanticTokensProvider()
        let grids = MockThemeGridSemanticTokensProvider()
        let opacities = MockThemeOpacitySemanticTokensProvider()
        let sizes = MockThemeSizeSemanticTokensProvider()
        let spaces = MockThemeSpaceSemanticTokensProvider()
        super.init(colors: colors,
                   borders: borders,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   sizes: sizes,
                   spaces: spaces,
                   button: MockThemeButtonComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   link: MockThemeLinkComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   select: MockThemeSelectComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   skeleton: MockThemeSkeletonComponentTokenProvider(colors: colors),
                   tag: MockThemeTagComponentTokenProvider(colors: colors),
                   switch: MockThemeSwitchComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   listItem: MockThemeListItemComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   chip: MockThemeChipComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   breadcrumb: MockThemeBreadcrumbComponentTokenProvider(sizes: sizes, spaces: spaces),
                   bulletList: MockThemeBulletListComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   inputText: MockThemeInputTextComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   badge: MockThemeBadgeComponentTokenProvider(sizes: sizes, borders: borders, spaces: spaces),
                   controlItem: MockThemeControlItemComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   checkbox: MockThemeCheckboxComponentTokenProvider(sizes: sizes, borders: borders),
                   radioButton: MockThemeRadioButtonComponentTokenProvider(sizes: sizes, borders: borders),
                   fontFamily: fontFamily)
    }

    deinit { }
}
