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
        let effects = MockThemeEffectSemanticTokensProvider()
        let elevations = MockThemeElevationSemanticTokensProvider()
        let fonts = MockThemeFontSemanticTokensProvider()
        let grids = MockThemeGridSemanticTokensProvider()
        let opacities = MockThemeOpacitySemanticTokensProvider()
        let sizes = MockThemeSizeSemanticTokensProvider()
        let spaces = MockThemeSpaceSemanticTokensProvider()
        super.init(borders: borders,
                   colors: colors,
                   colorModes: colorModes,
                   effects: effects,
                   elevations: elevations,
                   fonts: fonts,
                   grids: grids,
                   opacities: opacities,
                   dimensions: OrangeThemeDimensionSemanticTokensProvider(),
                   sizes: sizes,
                   spaces: spaces,
                   badge: MockThemeBadgeComponentTokenProvider(spaces: spaces),
                   bar: MockThemeBarComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects),
                   bulletList: MockThemeBulletListComponentTokenProvider(spaces: spaces),
                   button: MockThemeButtonComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   checkbox: MockThemeCheckboxComponentTokenProvider(sizes: sizes, borders: borders),
                   chip: MockThemeChipComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   controlItem: MockThemeControlItemComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces),
                   divider: MockThemeDividerComponentTokenProvider(borders: borders),
                   icon: MockThemeIconComponentTokenProvider(colors: colors),
                   link: MockThemeLinkComponentTokenProvider(sizes: sizes, colors: colors, spaces: spaces),
                   pinCodeInput: MockThemePinCodeInputComponentTokenProvider(spaces: spaces, dimensions: nil),
                   quantityInput: MockThemeQuantityInputComponentTokenProvider(sizes: sizes, spaces: spaces),
                   radioButton: MockThemeRadioButtonComponentTokenProvider(sizes: sizes, borders: borders),
                   selectInput: MockThemeSelectInputComponentTokenProvider(dimensions: nil),
                   skeleton: MockThemeSkeletonComponentTokenProvider(colors: colors),
                   switch: MockThemeSwitchComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, opacities: opacities),
                   tag: MockThemeTagComponentTokenProvider(sizes: sizes, borders: borders, spaces: spaces),
                   inputTag: MockThemeInputTagComponentTokenProvider(borders: borders, colors: colors),
                   textArea: MockThemeTextAreaComponentTokenProvider(sizes: sizes, spaces: spaces),
                   textInput: MockThemeTextInputComponentTokenProvider(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: nil),
                   resourcesBundle: Bundle.OrangeTheme,
                   name: "Mock",
                   fontFamily: fontFamily)
    }

    deinit {}
}
