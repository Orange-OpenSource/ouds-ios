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

final class MockThemeTextInputComponentTokenProvider: OrangeThemeTextInputComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTextInputColor = MultipleColorSemanticTokens("#00FF00")
    static let mockThemeTextInputBorderWidth: BorderWidthSemanticToken = 666
    static let mockThemeTextInputBorderRadius: BorderRadiusSemanticToken = 999
    static let mockThemeTextInputSize: SizeSemanticToken = 123
    static let mockThemeTextInputSpace: SizeSemanticToken = 456

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Sizes

    override var sizeCountrySelectorFlagHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeVerticalDividerHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeLabelMaxHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var sizeLeadingIcon: SizeSemanticToken { Self.mockThemeTextInputSize }

    // MARK: - Colors

    override var colorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var colorBorderHover: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var colorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var colorBorderLoading: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }

    // MARK: - Borders

    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override var borderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }
    override var borderWidthFocus: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }

    // MARK: - Spaces

    override var spacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spacePaddingInlineTrailingAction: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spacePaddingInlineCountrySelectorStart: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spacePaddingInlineCountrySelectorEnd: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeTextInputSpace }

    override var spaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spaceColumnGapInlineText: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spaceColumnGapTrailingErrorAction: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var spaceRowGapLabelInput: SpaceSemanticToken { Self.mockThemeTextInputSpace }
}

// swiftlint:enable required_deinit
