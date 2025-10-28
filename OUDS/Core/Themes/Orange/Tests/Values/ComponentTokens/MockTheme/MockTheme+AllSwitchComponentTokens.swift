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

final class MockThemeSwitchComponentTokenProvider: OrangeThemeSwitchComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeSwitchSize: DimensionRawToken = 118
    static let mockThemeSwitchBorderRadius: BorderRadiusRawToken = 444_719
    static let mockThemeSwitchSpace: DimensionRawToken = 218
    static let mockThemeSwitchColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeSwitchOpacity: OpacitySemanticToken = 0.07

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  opacities: AllOpacitySemanticTokensProvider?,
                  _s: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   spaces: spaces,
                   opacities: opacities,
                   _s: _s)
    }

    // MARK: - Switch component tokens

    // MARK: Sizes

    override var switchSizeHeightCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeHeightCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeHeightTrack: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeMaxHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeMinHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeMinWidth: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeWidthCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeWidthCursorSelectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeWidthCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeWidthCursorUnselectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var switchSizeWidthTrack: SizeSemanticToken { Self.mockThemeSwitchSize }

    // MARK: Borders

    override var switchBorderRadiusCursor: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }
    override var switchBorderRadiusTrack: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }

    // MARK: Colors

    override var switchColorCursor: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var switchColorTrackSelected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var switchColorTrackSelectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var switchColorTrackUnselected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var switchColorTrackUnselectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var switchColorCheck: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }

    // MARK: Spaces

    override var switchSpacePaddingInlineUnselected: SpaceSemanticToken { Self.mockThemeSwitchSpace }
    override var switchSpacePaddingInlineSelected: SpaceSemanticToken { Self.mockThemeSwitchSpace }

    // MARK: - Opacities

    override var switchOpacityCheck: OpacitySemanticToken { Self.mockThemeSwitchOpacity }
}

// swiftlint:enable required_deinit
