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

final class MockThemeTypographyComponentTokenProvider: OrangeThemeTypographyComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTypographySpace: SpaceSemanticToken = 1_312

    override init(spaces: AllSpaceSemanticTokensProvider?) {
        super.init(spaces: spaces)
    }

    // MARK: - Typography component tokens

    override var spacePaddingBlockTopHeadingLargeMarker: SpaceSemanticToken { Self.mockThemeTypographySpace }
    override var spacePaddingBlockBottomHeadingLargeMarker: SpaceSemanticToken { Self.mockThemeTypographySpace }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
