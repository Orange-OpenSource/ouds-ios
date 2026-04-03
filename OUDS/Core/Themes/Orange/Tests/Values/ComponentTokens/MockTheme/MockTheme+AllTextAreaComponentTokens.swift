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
import OUDSTokensSemantic

// swiftlint:disable required_deinit

final class MockThemeTextAreaComponentTokenProvider: OrangeThemeTextAreaComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTextAreaSize: SizeSemanticToken = 123
    static let mockThemeTextAreaSpace: SpaceSemanticToken = 456
    static let mockThemeTextAreaBorderWidth: BorderWidthSemanticToken = 7
    static let mockThemeTextAreaBorderRadius: BorderRadiusSemanticToken = 8
    static let mockThemeTextAreaColor: MultipleColorSemanticToken = .init("#123456")

    override init(sizes: AllSizeSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?)
    {
        super.init(sizes: sizes, spaces: spaces, borders: borders, colors: colors)
    }

    // MARK: - Colors

    override var colorBorderEnabled: MultipleColorSemanticToken { Self.mockThemeTextAreaColor }
    override var colorBorderHover: MultipleColorSemanticToken { Self.mockThemeTextAreaColor }
    override var colorBorderFocus: MultipleColorSemanticToken { Self.mockThemeTextAreaColor }

    // MARK: - Borders

    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeTextAreaBorderRadius }
    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTextAreaBorderWidth }
    override var borderWidthFocus: BorderWidthSemanticToken { Self.mockThemeTextAreaBorderWidth }

    // MARK: - Spaces

    override var spacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTextAreaSpace }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeTextAreaSpace }
    override var spacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeTextAreaSpace }
    override var spaceRowGapLabelInput: SpaceSemanticToken { Self.mockThemeTextAreaSpace }

    // MARK: - Sizes

    override var sizeMinHeightInput: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxHeightInput: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeTextAreaSize }
}

// swiftlint:enable required_deinit
