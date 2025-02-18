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
import OUDSTokensComponent
import OUDSTokensRaw
import OUDSTokensSemantic

extension OrangeThemeBadgeComponentTokensProvider: BadgeComponentTokens {
    @objc open var badgeNotificationMinWidthS: DimensionRawToken { DimensionRawTokens.dimension150 }
    @objc open var badgeNotificationMinWidthM: DimensionRawToken { DimensionRawTokens.dimension200 }
    @objc open var badgeNotificationMinWidthL: DimensionRawToken { DimensionRawTokens.dimension300 }

    // TODO: use suitable values in Figma / Tokenator / zeroheight as the ones defined today do not exist (DimensionRawTokens.dimension{7|6|5|3}xs
    @objc open var badgeSizeXs: SizeSemanticToken { 0 }
    @objc open var badgeSizeS: SizeSemanticToken { 0 }
    @objc open var badgeSizeM: SizeSemanticToken { 0 }
    @objc open var badgeSizeL: SizeSemanticToken { 0 }
}
