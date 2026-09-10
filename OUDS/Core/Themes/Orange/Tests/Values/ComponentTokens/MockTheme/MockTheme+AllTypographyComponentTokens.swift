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
    static let mockThemeTypographyColor = MultipleColorSemanticToken("#00FF00")

    override init(spaces: AllSpaceSemanticTokensProvider?, colors: AllColorSemanticTokensProvider?) {
        super.init(spaces: spaces, colors: colors)
    }

    // MARK: - Typography component tokens

    override var spacePaddingBlockTopHeadingLargeMarker: SpaceSemanticToken { Self.mockThemeTypographySpace }
    override var spacePaddingBlockBottomHeadingLargeMarker: SpaceSemanticToken { Self.mockThemeTypographySpace }
    override var colorContentMarker: MultipleColorSemanticToken { Self.mockThemeTypographyColor }
    override var headingLargeMarker: Bool { false }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
