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

final class MockThemeLinkComponentTokenProvider: OrangeThemeLinkComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeLinkSize: DimensionRawToken = 118
    static let mockThemeLinkSpace: DimensionRawToken = 218
    static let mockThemeLinkColor = MultipleColorSemanticTokens("#00FF00")

    override public init(sizes: AllSizeSemanticTokensProvider,
                         colors: AllColorSemanticTokensProvider,
                         spaces: AllSpaceSemanticTokensProvider) {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Link component tokens

    override public var linkSizeMinHeightMedium: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinWidthMedium: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkColorContentEnabledMono: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentHoverMono: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentPressedMono: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentFocusMono: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentDisabledMono: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkSpacePaddingInline: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapIconMedium: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapArrowMedium: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapArrowSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSizeIconMedium: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeIconSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorArrowEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorArrowHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorArrowPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkColorArrowFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
}

// swiftlint:enable required_deinit
