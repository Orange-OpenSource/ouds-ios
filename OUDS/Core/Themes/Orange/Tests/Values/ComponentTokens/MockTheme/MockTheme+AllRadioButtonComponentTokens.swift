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
// swiftlint:disable type_name

final class MockThemeRadioButtonComponentTokenProvider: OrangeThemeRadioButtonComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeRadioButtonSize: SizeSemanticToken = 118_218
    static let mockThemeRadioButtonBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeRadioButtonBorderWidth: BorderRadiusSemanticToken = 666

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders)
    }

    // MARK: - Radio button component tokens

    // MARK: Sizes

    override var sizeMaxHeight: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeRadioButtonSize }
    override var sizeIndicator: SizeSemanticToken { Self.mockThemeRadioButtonSize }

    // MARK: Borders

    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeRadioButtonBorderRadius }
    override var borderWidthSelected: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
    override var borderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeRadioButtonBorderWidth }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
