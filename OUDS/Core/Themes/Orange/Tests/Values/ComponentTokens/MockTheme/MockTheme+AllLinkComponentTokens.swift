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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Link component tokens

    override public var linkSizeMinHeightDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinWidthDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override public var linkMonoColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkMonoColorContentHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkMonoColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkMonoColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkMonoColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override public var linkSpacePaddingInline: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapIconDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapChevronDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSpaceColumnGapChevronSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override public var linkSizeIconDefault: SizeSemanticToken { Self.mockThemeLinkSize }
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
