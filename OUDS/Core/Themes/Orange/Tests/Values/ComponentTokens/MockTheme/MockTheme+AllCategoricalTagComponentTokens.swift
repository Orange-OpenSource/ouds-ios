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

// swiftlint:disable type_name
// swiftlint:disable required_deinit

final class MockThemeCategoricalTagComponentTokenProvider: OrangeThemeCategoricalTagComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeCategoricalTagColor = MultipleColorSemanticToken("#00FF00")

    override init(colors: AllColorSemanticTokensProvider?) {
        super.init(colors: colors)
    }

    // MARK: - Categorical tag component tokens

    override var colorBgCategory1: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
    override var colorBgCategory2: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
    override var colorBgCategory3: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
    override var colorBgCategory4: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
    override var colorBgCategory5: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
    override var colorContent: MultipleColorSemanticToken { Self.mockThemeCategoricalTagColor }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
