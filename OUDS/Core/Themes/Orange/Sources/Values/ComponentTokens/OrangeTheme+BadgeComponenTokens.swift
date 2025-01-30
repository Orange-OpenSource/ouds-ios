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

// ଘ( ･ω･)_/ﾟ･:*:･｡☆
// [File to generate with the tokenator]
// Values are not the expcted ones, manual fixes have been added
// Create an issue for update https://github.com/Orange-OpenSource/ouds-ios/issues/new?template=token_update.yml

extension OrangeThemeBadgeComponentTokensProvider: BadgeComponentTokens {
    @objc open var badgeNotificationMinWidthL: DimensionRawToken { DimensionRawTokens.dimension300 }
    @objc open var badgeNotificationMinWidthM: DimensionRawToken { DimensionRawTokens.dimension200 }
    @objc open var badgeNotificationMinWidthS: DimensionRawToken { DimensionRawTokens.dimension150 }
    @objc open var badgeSizeL: SizeSemanticToken { DimensionRawTokens.dimension125 }
    @objc open var badgeSizeM: SizeSemanticToken { DimensionRawTokens.dimension100 }
    @objc open var badgeSizeS: SizeSemanticToken { DimensionRawTokens.dimension50 }
    @objc open var badgeSizeXs: SizeSemanticToken { DimensionRawTokens.dimension25 }
}
