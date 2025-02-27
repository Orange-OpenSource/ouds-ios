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
    static let mockThemeSwitchSpace: DimensionRawToken = 218
    static let mockThemeSwitchColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Switch component tokens

    override public var switchColorCheck: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorCursor: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackFalse: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackFalseInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackTrue: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchColorTrackTrueInteraction: MultipleColorSemanticTokens { Self.mockThemeSwitchColor }
    override public var switchSpacePaddingInlineFalse: SpaceSemanticToken { Self.mockThemeSwitchSpace }
    override public var switchSpacePaddingInlineTrue: SpaceSemanticToken { Self.mockThemeSwitchSpace }
    override public var switchSize: SizeSemanticToken { Self.mockThemeSwitchSize }
}

// swiftlint:enable required_deinit
