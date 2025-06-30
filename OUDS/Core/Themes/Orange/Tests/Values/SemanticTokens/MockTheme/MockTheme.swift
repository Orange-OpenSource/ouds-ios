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
        let borders = MockThemeBorderSemanticTokensProvider()
        let colors = MockThemeColorSemanticTokensProvider()
        let colorModes = MockThemeColorModeSemanticTokensProvider()
        let elevations = MockThemeElevationSemanticTokensProvider()
        let fonts = MockThemeFontSemanticTokensProvider()
        let grids = MockThemeGridSemanticTokensProvider()
        let opacities = MockThemeOpacitySemanticTokensProvider()
        let sizes = MockThemeSizeSemanticTokensProvider()
        let spaces = MockThemeSpaceSemanticTokensProvider()
        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: OrangeThemeDimensionSemanticTokensProvider(),
                   sizes: sizes,
                   spaces: spaces,
                   badge: MockThemeBadgeComponentTokenProvider(sizes: sizes, spaces: spaces),
                   bulletList: MockThemeBulletListComponentTokenProvider(spaces: spaces),
                   button: MockThemeButtonComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   checkbox: MockThemeCheckboxComponentTokenProvider(sizes: sizes, borders: borders),
                   chip: MockThemeChipComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   controlItem: MockThemeControlItemComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   divider: MockThemeDividerComponentTokenProvider(borders: borders),
                   inputText: MockThemeInputTextComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   listItem: MockThemeListItemComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   link: MockThemeLinkComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   radioButton: MockThemeRadioButtonComponentTokenProvider(sizes: sizes, borders: borders),
                   select: MockThemeSelectComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   skeleton: MockThemeSkeletonComponentTokenProvider(colors: colors),
                   switch: MockThemeSwitchComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities),
                   tag: MockThemeTagComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   fontFamily: fontFamily)
    }

    deinit {}
}
