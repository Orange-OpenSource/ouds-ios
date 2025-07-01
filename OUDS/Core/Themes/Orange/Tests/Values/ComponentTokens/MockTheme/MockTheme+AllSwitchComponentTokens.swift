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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?,
                         opacities: AllOpacitySemanticTokensProvider?)
    {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   spaces: spaces,
                   opacities: opacities)
    }

    // MARK: - Switch component tokens

    // MARK: Sizes

    override public var switchSizeHeightCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeHeightCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeHeightTrack: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeMaxHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeMinHeight: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeMinWidth: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeWidthCursorSelected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeWidthCursorSelectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeWidthCursorUnselected: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeWidthCursorUnselectedPressed: SizeSemanticToken { Self.mockThemeSwitchSize }
    override public var switchSizeWidthTrack: SizeSemanticToken { Self.mockThemeSwitchSize }

    // MARK: Borders

    override public var switchBorderRadiusCursor: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }
    override public var switchBorderRadiusTrack: BorderRadiusSemanticToken { Self.mockThemeSwitchBorderRadius }

    // MARK: Colors

    override public var switchColorCursor: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackSelected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackSelectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackUnselected: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackUnselectedInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorCheck: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }

    // MARK: Spaces

    override public var switchSpacePaddingInlineUnselected: SpaceSemanticToken { Self.mockThemeSwitchSpace }
    override public var switchSpacePaddingInlineSelected: SpaceSemanticToken { Self.mockThemeSwitchSpace }

    // MARK: - Opacities

    override public var switchOpacityCheck: OpacitySemanticToken { Self.mockThemeSwitchOpacity }
}

// swiftlint:enable required_deinit
