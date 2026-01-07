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

final class MockThemeLinkComponentTokenProvider: OrangeThemeLinkComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeLinkSize: DimensionRawToken = 118
    static let mockThemeLinkSpace: DimensionRawToken = 218
    static let mockThemeLinkColor = MultipleColorSemanticToken("#00FF00")
    static let mockThemeExpandLinkIconStart = true // false in Orange Theme
    static let mockThemeExpandLinkIconEnd = false // true in Orange Theme

    override init(sizes: AllSizeSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, colors: colors, spaces: spaces)
    }

    // MARK: - Link component tokens

    override var sizeMinHeightDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var sizeMinWidthDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var sizeMinHeightSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var sizeMinWidthSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var monoColorContentEnabled: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var monoColorContentHover: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var monoColorContentPressed: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var monoColorContentFocus: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var monoColorContentDisabled: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var spacePaddingInline: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var spaceColumnGapIconDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var spaceColumnGapIconSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var spaceColumnGapChevronDefault: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var spaceColumnGapChevronSmall: SpaceSemanticToken { Self.mockThemeLinkSpace }
    override var sizeIconDefault: SizeSemanticToken { Self.mockThemeLinkSize }
    override var sizeIconSmall: SizeSemanticToken { Self.mockThemeLinkSize }
    override var colorContentEnabled: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorContentHover: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorContentPressed: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorContentFocus: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorChevronEnabled: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorChevronHover: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorChevronPressed: MultipleColorSemanticToken { Self.mockThemeLinkColor }
    override var colorChevronFocus: MultipleColorSemanticToken { Self.mockThemeLinkColor }

    // MARK: - Expand link component tokens

    override var iconStart: Bool { Self.mockThemeExpandLinkIconStart }
    override var iconEnd: Bool { Self.mockThemeExpandLinkIconEnd }
}

// swiftlint:enable required_deinit
