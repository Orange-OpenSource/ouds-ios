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

    override var textInputSizeCountrySelectorFlagHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeVerticalDividerHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeLabelMaxHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeMinHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeMinWidth: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeMaxWidth: SizeSemanticToken { Self.mockThemeTextInputSize }
    override var textInputSizeLeadingIcon: SizeSemanticToken { Self.mockThemeTextInputSize }

    // MARK: - Colors

    override var textInputColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var textInputColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var textInputColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override var textInputColorBorderLoading: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }

    // MARK: - Borders

    override var textInputBorderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override var textInputBorderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override var textInputBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }
    override var textInputBorderWidthFocus: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }

    // MARK: - Spaces

    override var textInputSpacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpacePaddingInlineTrailingAction: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpacePaddingInlineCountrySelectorStart: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpacePaddingInlineCountrySelectorEnd: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeTextInputSpace }

    override var textInputSpaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpaceColumnGapInlineText: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpaceColumnGapTrailingErrorAction: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override var textInputSpaceRowGapLabelInput: SpaceSemanticToken { Self.mockThemeTextInputSpace }
}

// swiftlint:enable required_deinit
