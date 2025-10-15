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
// swiftlint:disable type_name

final class MockThemeQuantityInputComponentTokenProvider: OrangeThemeQuantityInputComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeQuantityInputSize: SizeSemanticToken = 444
    static let mockThemeQuantityInputSpace: SpaceSemanticToken = 719

    override init(sizes: AllSizeSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, spaces: spaces)
    }

    // MARK: - Spaces

    override var quantityInputSpaceColumnGapDefault: SpaceSemanticToken { Self.mockThemeQuantityInputSpace }
    override var quantityInputSpaceColumnGapLeadingIcon: SpaceSemanticToken { Self.mockThemeQuantityInputSpace }
    override var quantityInputSpaceColumnGapQuantitySelector: SpaceSemanticToken { Self.mockThemeQuantityInputSpace }

    // MARK: - Sizes

    override var quantityInputSizeMinWidth: SizeSemanticToken { Self.mockThemeQuantityInputSize }
    override var quantityInputSizeMaxWidth: SizeSemanticToken { Self.mockThemeQuantityInputSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
