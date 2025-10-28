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

final class MockThemeCheckboxComponentTokenProvider: OrangeThemeCheckboxComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeCheckboxSize: SizeSemanticToken = 118_218
    static let mockThemeCheckboxBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeCheckboxBorderWidth: BorderRadiusSemanticToken = 666

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?)
    {
        super.init(sizes: sizes, borders: borders)
    }

    // MARK: - Radio button component tokens

    // MARK: - Sizes

    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var sizeMaxHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var sizeIndicator: SizeSemanticToken { Self.mockThemeCheckboxSize }

    // MARK: - Borders

    override var borderRadius: BorderRadiusSemanticToken { Self.mockThemeCheckboxBorderRadius }
    override var borderWidthSelected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var borderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
}

// swiftlint:enable required_deinit
