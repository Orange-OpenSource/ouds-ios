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
final class MockThemeBadgeComponentTokenProvider: OrangeThemeBadgeComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBadgeSpace: SpaceSemanticToken = 1_312
    static let mockThemeBadgeSize: SizeSemanticToken = 118_218

    override init(spaces: AllSpaceSemanticTokensProvider?,
                  dimensions: AllDimensionSemanticTokensProvider? = OrangeThemeDimensionSemanticTokensProvider())
    {
        super.init(spaces: spaces,
                   dimensions: dimensions)
    }

    // MARK: - Badge component tokens

    override var sizeXsmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var sizeSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var sizeMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var sizeLarge: SizeSemanticToken { Self.mockThemeBadgeSize }

    override var spaceInset: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override var spacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override var spacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeBadgeSpace }
}

// swiftlint:enable required_deinit
