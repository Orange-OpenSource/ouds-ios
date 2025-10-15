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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeTagComponentTokenProvider: OrangeThemeTagComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTagSize: SizeSemanticToken = 123
    static let mockThemeTagSpace: SizeSemanticToken = 456
    static let mockThemeTagBorderRadius: BorderRadiusSemanticToken = 666

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(sizes: sizes, borders: borders, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Tag component tokens

    // MARK: - Borders

    override var tagBorderRadius: BorderRadiusSemanticToken { Self.mockThemeTagBorderRadius }

    // MARK: - Sizes

    override var tagSizeAssetDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeAssetSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeMinHeightDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeMinWidthDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var tagSizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeTagSize }

    // MARK: - Spaces

    override var tagSpacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpacePaddingInlineSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpacePaddingInlineAssetSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpacePaddingInlineAssetDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetIconSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetBulletSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetLoaderSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetIconDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetBulletDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceInsetLoaderDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceColumnGapSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var tagSpaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
}

// swiftlint:enable required_deinit
