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
// swiftlint:disable type_name

final class MockThemeRadioButtonComponentTokenProvider: OrangeThemeRadioButtonComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeRadioButtonSize: SizeSemanticToken = 118_218
    static let mockThemeRadioButtonBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeRadioButtonBorderWidth: BorderRadiusSemanticToken = 666

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders)
    }

    // MARK: - Radio button component tokens

    // MARK: Sizes

    override public var radioButtonSizeMaxHeight: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override public var radioButtonSizeMinHeight: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override public var radioButtonSizeMinWidth: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override public var radioButtonSizeIndicator: SizeSemanticToken { Self.mockThemeRadioButtonSize }

    // MARK: Borders

    override public var radioButtonBorderRadius: BorderRadiusSemanticToken { Self.mockThemeRadioButtonBorderRadius }
    override public var radioButtonBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override public var radioButtonBorderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
