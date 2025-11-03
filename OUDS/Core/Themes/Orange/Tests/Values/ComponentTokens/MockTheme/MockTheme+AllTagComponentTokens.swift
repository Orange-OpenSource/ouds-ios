//
// Software Name: OUDSThemesContract iOS
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

    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeTagBorderRadius }

    // MARK: - Sizes

    override var sizeAssetDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeAssetSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeMinHeightDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeMinWidthDefault: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeMinHeightSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeMinWidthSmall: SizeSemanticToken { Self.mockThemeTagSize }
    override var sizeMinHeightInteractiveArea: SizeSemanticToken { Self.mockThemeTagSize }

    // MARK: - Spaces

    override var spacePaddingBlockSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spacePaddingInlineSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spacePaddingInlineAssetSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spacePaddingInlineAssetDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetIconSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetBulletSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetLoaderSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetIconDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetBulletDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceInsetLoaderDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceColumnGapSmall: SpaceSemanticToken { Self.mockThemeTagSpace }
    override var spaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeTagSpace }
}

// swiftlint:enable required_deinit
