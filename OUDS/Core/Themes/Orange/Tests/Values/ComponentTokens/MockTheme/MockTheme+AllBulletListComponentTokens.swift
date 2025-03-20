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
// swiftlint:disable type_name
final class MockThemeBulletListComponentTokenProvider: OrangeThemeBulletListComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBulletListSize: DimensionRawToken = 118
    static let mockThemeBulletListSpace: DimensionRawToken = 218
    static let mockThemeBulletListColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Bullet list component tokens

    override public var bulletListSizeMinHeightMedium: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListSizeMinWidthMedium: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListSizeIconMedium: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListSizeIconSmall: SizeSemanticToken { Self.mockThemeBulletListSize }
    override public var bulletListColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeBulletListColor }
    override public var bulletListSpaceColumnGapIconMedium: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override public var bulletListSpaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override public var bulletListSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override public var bulletListSpacePaddingInlineEndNone: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override public var bulletListSpacePaddingInlineStartIconMedium: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override public var bulletListSpacePaddingInlineStartIconSmall: SpaceSemanticToken { Self.mockThemeBulletListSpace }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
