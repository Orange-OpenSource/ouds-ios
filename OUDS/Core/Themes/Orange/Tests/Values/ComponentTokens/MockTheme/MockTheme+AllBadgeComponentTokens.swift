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

    static let mockThemeBadgeMinWidth: DimensionRawToken = 1_312
    static let mockThemeBadgeSize: SizeSemanticToken = 118_218

    override public init(sizes: AllSizeSemanticTokensProvider) {
        super.init(sizes: sizes)
    }

    // MARK: - Badge component tokens

    override public var badgeNotificationMinWidthL: DimensionRawToken { Self.mockThemeBadgeMinWidth }
    override public var badgeNotificationMinWidthM: DimensionRawToken { Self.mockThemeBadgeMinWidth }
    override public var badgeNotificationMinWidthS: DimensionRawToken { Self.mockThemeBadgeMinWidth }
    override public var badgeSizeL: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeM: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeS: SizeSemanticToken { Self.mockThemeBadgeSize }
    override public var badgeSizeXs: SizeSemanticToken { Self.mockThemeBadgeSize }
}

// swiftlint:enable required_deinit
