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
import OUDSTokensRaw
import OUDSTokensSemantic

// swiftlint:disable required_deinit
final class MockThemeBadgeComponentTokenProvider: OrangeThemeBadgeComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBadgeSpace: SpaceSemanticToken = 1_312
    static let mockThemeBadgeSize: SizeSemanticToken = 118_218

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes,
                   spaces: spaces)
    }

    // MARK: - Badge component tokens

    override public var badgeSizeXsmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeLarge: SizeSemanticToken { Self.mockThemeBadgeSize }

    override public var badgeSpaceInset: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override public var badgeSpacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override public var badgeSpacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeBadgeSpace }
}

// swiftlint:enable required_deinit
