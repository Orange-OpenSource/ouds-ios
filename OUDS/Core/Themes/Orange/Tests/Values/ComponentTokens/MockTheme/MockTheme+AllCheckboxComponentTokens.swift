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
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeCheckboxComponentTokenProvider: OrangeThemeCheckboxComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeCheckboxSize: SizeSemanticToken = 118_218
    static let mockThemeCheckboxBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeCheckboxBorderWidth: BorderRadiusSemanticToken = 666
    static let mockThemeCheckboxOpacity: OpacitySemanticToken = 0.007
    static let mockThemeCheckboxColor = MultipleColorSemanticTokens("#FF0000")

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         opacities: AllOpacitySemanticTokensProvider?) {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   opacities: opacities)
    }

    // MARK: - Badge component tokens

    // MARK: - Sizes

    override public var checkboxSizeMinWidth: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override public var checkboxSizeMaxHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override public var checkboxSizeMinHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override public var checkboxSizeIndicatorInnerIcon: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override public var checkboxSizeIndicator: SizeSemanticToken { Self.mockThemeCheckboxSize }

    // MARK: - Borders

    override public var checkboxBorderRadius: BorderRadiusSemanticToken { Self.mockThemeCheckboxBorderRadius }
    override public var checkboxBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override public var checkboxBorderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }

    // MARK: - Opacities

    override public var checkboxOpacityBgSelected: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgUnselected: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgSelectedHover: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgUnselectedHover: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgSelectedPressed: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgUnselectedPressed: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgSelectedFocus: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }
    override public var checkboxOpacityBgUnselectedFocus: OpacitySemanticToken { Self.mockThemeCheckboxOpacity }

    // MARK: - Colors

    override public var checkboxColorContentSelected: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentHover: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentErrorEnabled: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentErrorHover: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentErrorPressed: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
    override public var checkboxColorContentErrorFocus: MultipleColorSemanticTokens { Self.mockThemeCheckboxColor }
}

// swiftlint:enable required_deinit
