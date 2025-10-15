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

    override var checkboxSizeMinWidth: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var checkboxSizeMaxHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var checkboxSizeMinHeight: SizeSemanticToken { Self.mockThemeCheckboxSize }
    override var checkboxSizeIndicator: SizeSemanticToken { Self.mockThemeCheckboxSize }

    // MARK: - Borders

    override var checkboxBorderRadius: BorderRadiusSemanticToken { Self.mockThemeCheckboxBorderRadius }
    override var checkboxBorderWidthSelected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthSelectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthSelectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthSelectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthUnselected: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthUnselectedHover: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthUnselectedPressed: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
    override var checkboxBorderWidthUnselectedFocus: BorderWidthSemanticToken { Self.mockThemeCheckboxBorderWidth }
}

// swiftlint:enable required_deinit
