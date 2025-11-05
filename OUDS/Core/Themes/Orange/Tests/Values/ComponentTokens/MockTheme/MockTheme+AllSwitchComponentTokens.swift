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
                  dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   spaces: spaces,
                   opacities: opacities,
                   dimensions: dimensions)
    }

    // MARK: - Switch component tokens

    // MARK: Sizes

    override var sizeHeightCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeHeightCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeHeightTrack: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeMaxHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeWidthCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeWidthCursorSelectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeWidthCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeWidthCursorUnselectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override var sizeWidthTrack: SizeSemanticToken { Self.mockThemeSwitchSize }

    // MARK: Borders

    override var borderRadiusCursor: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }
    override var borderRadiusTrack: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }

    // MARK: Colors

    override var colorCursor: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var colorTrackSelected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var colorTrackSelectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var colorTrackUnselected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var colorTrackUnselectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override var colorCheck: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }

    // MARK: Spaces

    override var spacePaddingInlineUnselected: SpaceSemanticToken { Self.mockThemeSwitchSpace }
    override var spacePaddingInlineSelected: SpaceSemanticToken { Self.mockThemeSwitchSpace }

    // MARK: - Opacities

    override var opacityCheck: OpacitySemanticToken { Self.mockThemeSwitchOpacity }
}

// swiftlint:enable required_deinit
