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

final class MockThemeTagComponentTokenProvider: OrangeThemeTagComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTagColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeTagSize: SizeSemanticToken = 123
    static let mockThemeTagSpace: SizeSemanticToken = 456
    static let mockThemeTagBorderRadius: BorderRadiusSemanticToken = 666
    static let mockThemeTagBorderWidth: BorderWidthSemanticToken = 999

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?) {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces)
    }

    // MARK: - Tag component tokens

    // MARK: - Borders

    override public var tagBorderRadiusPill: BorderRadiusSemanticToken { Self.mockThemeTagBorderRadius }
    override public var tagBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTagBorderWidth }
    override public var tagBorderWidthDefaultInteraction: BorderWidthSemanticToken { Self.mockThemeTagBorderWidth }

    // MARK: - Colors

    override public var tagColorBgEnabled: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBgFocus: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBgHover: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBgPressed: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBorderDisabled: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorBorderPressed: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorContentDisabled: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorContentEnabled: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorContentFocus: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorContentHover: MultipleColorSemanticTokens { Self.mockThemeTagColor }
    override public var tagColorContentPressed: MultipleColorSemanticTokens { Self.mockThemeTagColor }

    // MARK: - Sizes

    override public var tagSizeIconMedium: SizeSemanticToken { Self.mockThemeTagSize }
    override public var tagSizeIconSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override public var tagSizeMinHeightMedium: SizeSemanticToken { Self.mockThemeTagSize }
    override public var tagSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override public var tagSizeMinWidthMedium: SizeSemanticToken { Self.mockThemeTagSize }
    override public var tagSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeTagSize }

    // MARK: - Spaces

    override public var tagSpaceColumnGapColumnGapMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpaceColumnGapColumnGapSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingBlockMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineIconEndMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineIconEndSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineIconStartMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineIconStartSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineLabelEndMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineLabelEndSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineLabelStartMedium: SpaceSemanticToken { Self.mockThemeTagSpace }
    override public var tagSpacePaddingInlineLabelStartSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
}

// swiftlint:enable required_deinit
