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
final class MockThemeCardComponentTokenProvider: OrangeThemeCardComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeCardBorderRadius: BorderRadiusSemanticToken = 1_312

    override init(borders: AllBorderSemanticTokensProvider?) {
        super.init(borders: borders)
    }

    // MARK: - Card component tokens

    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeCardBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeCardBorderRadius }
}

// swiftlint:enable required_deinit
