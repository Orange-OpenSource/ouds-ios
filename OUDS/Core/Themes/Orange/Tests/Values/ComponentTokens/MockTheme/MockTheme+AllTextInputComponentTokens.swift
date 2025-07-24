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

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         colors: AllColorSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?,
                         dimensions: AllDimensionSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders, colors: colors, spaces: spaces, dimensions: dimensions)
    }

    // MARK: - Sizes

    override public var textInputSizeVerticalDividerHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override public var textInputSizeLabelMaxHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override public var textInputSizeMinHeight: SizeSemanticToken { Self.mockThemeTextInputSize }
    override public var textInputSizeMinWidth: SizeSemanticToken { Self.mockThemeTextInputSize }
    override public var textInputSizeMaxWidth: SizeSemanticToken { Self.mockThemeTextInputSize }

    // MARK: - Colors

    override public var textInputColorBorderEnabled: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override public var textInputColorBorderHover: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override public var textInputColorBorderFocus: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }
    override public var textInputColorBorderLoading: MultipleColorSemanticTokens { Self.mockThemeTextInputColor }

    // MARK: - Borders

    override public var textInputBorderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override public var textInputBorderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeTextInputBorderRadius }
    override public var textInputBorderWidthDefault: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }
    override public var textInputBorderWidthFocus: BorderWidthSemanticToken { Self.mockThemeTextInputBorderWidth }

    // MARK: - Spaces

    override public var textInputSpacePaddingInlineDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpacePaddingInlineButton: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpacePaddingInlineCountrySelectorStart: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpacePaddingInlineCountrySelectorEnd: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpacePaddingBlockDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpacePaddingBlockTopHelperText: SpaceSemanticToken { Self.mockThemeTextInputSpace }

    override public var textInputSpaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpaceColumnGapInlineText: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpaceColumnGapTrailingErrorIcon: SpaceSemanticToken { Self.mockThemeTextInputSpace }
    override public var textInputSpaceRowGapLabelInput: SpaceSemanticToken { Self.mockThemeTextInputSpace }
}

// swiftlint:enable required_deinit
