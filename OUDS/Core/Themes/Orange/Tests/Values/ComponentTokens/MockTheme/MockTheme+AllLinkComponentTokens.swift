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
    static let mockThemeExpandLinkIconStart = true // false in Orange Theme
    static let mockThemeExpandLinkIconEnd = false // true in Orange Theme

    override init(sizes: AllSizeSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Link component tokens

    override var linkSizeMinHeightDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkSizeMinWidthDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkMonoColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkMonoColorContentHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkMonoColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkMonoColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkMonoColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkSpacePaddingInline: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSpacePaddingBlock: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSpaceColumnGapIconDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSpaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSpaceColumnGapChevronDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSpaceColumnGapChevronSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var linkSizeIconDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkSizeIconSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var linkColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorContentHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorChevronEnabled: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorChevronHover: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorChevronPressed: MultipleColorSemanticTokens { Self.mockThemeLinkColor }
    override var linkColorChevronFocus: MultipleColorSemanticTokens { Self.mockThemeLinkColor }

    // MARK: - Expand link component tokens

    override var expandLinkIconStart: Bool { Self.mockThemeExpandLinkIconStart }
    override var expandLinkIconEnd: Bool { Self.mockThemeExpandLinkIconEnd }
}

// swiftlint:enable required_deinit
