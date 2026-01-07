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
    static let mockThemeBarColor = MultipleColorSemanticToken("#FF000000")
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

    override var colorBgOpaque: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorBgTranslucent: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentSelectedHover: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentSelectedPressed: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentSelectedFocus: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentUnselectedEnabled: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentUnselectedHover: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentUnselectedPressed: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentUnselectedFocus: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorContentOnAccent: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorBorderBadge: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedEnabled: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedHover: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedPressed: MultipleColorSemanticToken { Self.mockThemeBarColor }
    override var colorActiveIndicatorCustomSelectedFocus: MultipleColorSemanticToken { Self.mockThemeBarColor }

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
