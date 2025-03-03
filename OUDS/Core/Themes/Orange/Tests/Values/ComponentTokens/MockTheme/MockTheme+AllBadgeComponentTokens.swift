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
    static let mockThemeBadgeBorderRadius: BorderRadiusRawToken = 0.000000001

    override public init(sizes: AllSizeSemanticTokensProvider?,
                         borders: AllBorderSemanticTokensProvider?,
                         spaces: AllSpaceSemanticTokensProvider?) {
        super.init(sizes: sizes,
                   borders: borders,
                   spaces: spaces)
    }

    // MARK: - Badge component tokens

    override public var badgeSizeMaxHeightExtraSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxHeightLarge: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxHeightMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxHeightSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthExtraSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthLargeCount: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthLargeDot: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthMediumCount: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthMediumDot: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMaxWidthSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinHeightExtraSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinHeightLarge: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinHeightMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinHeightSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinWidthExtraSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinWidthLarge: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinWidthMedium: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeMinWidthSmall: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeBorderRadiusPill: BorderRadiusSemanticToken { Self.mockThemeBadgeBorderRadius }
    override public var badgeSpacePaddingInlineLarge: SpaceSemanticToken { Self.mockThemeBadgeSpace }
    override public var badgeSpacePaddingInlineMedium: SpaceSemanticToken { Self.mockThemeBadgeSpace }
}

// swiftlint:enable required_deinit
