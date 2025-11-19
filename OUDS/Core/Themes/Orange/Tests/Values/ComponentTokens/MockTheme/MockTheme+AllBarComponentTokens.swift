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
final class MockThemeBarComponentTokenProvider: OrangeThemeBarComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBarSize: SizeSemanticToken = 118_218
    static let mockThemeBarBorderRadius: BorderRadiusSemanticToken = 118_218
    static let mockThemeBarColor = MultipleColorSemanticTokens("#FF000000")
    static let mockThemeBarOpacitiy: OpacitySemanticToken = 0.0000000042
    static let mockThemeBarEffect: EffectSemanticToken = 0.0000000000001

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  effects: AllEffectSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, opacities: opacities, effects: effects)
    }

    // MARK: - Colors

    override var colorBgOpaque: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorBgTranslucent: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentSelectedHover: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentUnselectedHover: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentUnselectedFocus: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorContentOnAccent: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorBorderBadge: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedEnabled: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedHover: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedPressed: MultipleColorSemanticTokens { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedFocus: MultipleColorSemanticTokens { Self.mockThemeBarColor }

    // MARK: - Opacities

    override var opacityActiveIndicatorCustom: OpacitySemanticToken { Self.mockThemeBarOpacitiy }

    // MARK: - Effects

    override var effectBgBlur: EffectSemanticToken { Self.mockThemeBarEffect }

    // MARK: - Borders

    override var borderRadiusActiveIndicatorCustomTop: BorderRadiusSemanticToken { Self.mockThemeBarBorderRadius }
    override var borderRadiusActiveIndicatorCustomBottom: BorderRadiusSemanticToken { Self.mockThemeBarBorderRadius }

    // MARK: - Sizes

    override var sizeWidthActiveIndicatorCustomTop: SizeSemanticToken { Self.mockThemeBarSize }
    override var sizeWidthActiveIndicatorCustomBottom: SizeSemanticToken { Self.mockThemeBarSize }
    override var sizeHeightActiveIndicatorCustom: SizeSemanticToken { Self.mockThemeBarSize }
}

// swiftlint:enable required_deinit
