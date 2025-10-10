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

    override var badgeSizeXsmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var badgeSizeSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var badgeSizeMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override var badgeSizeLarge: SizeSemanticToken { Self.mockThemeBadgeSize }

    override var badgeSpaceInset: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override var badgeSpacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override var badgeSpacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeBadgeSpace }
}

// swiftlint:enable required_deinit
