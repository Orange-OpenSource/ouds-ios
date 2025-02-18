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

extension OrangeThemeSwitchComponentTokensProvider: SwitchComponentTokens {
    @objc open var switchColorCursor: MultipleColorSemanticTokens { colors.colorRepositoryNeutralMutedWhite }
    @objc open var switchColorTrackTrue: MultipleColorSemanticTokens { colors.colorRepositoryPositiveDefault }
    @objc open var switchColorTrackTrueInteraction: MultipleColorSemanticTokens { colors.colorRepositoryPositiveHigh }
    @objc open var switchColorCheck: MultipleColorSemanticTokens { colors.colorRepositoryNeutralEmphasizedBlack }
    @objc open var switchColorTrackFalse: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackMedium }
    @objc open var switchColorTrackFalseInteraction: MultipleColorSemanticTokens { colors.colorRepositoryOpacityBlackHigh }
    @objc open var switchSpacePaddingInlineFalse: SpaceSemanticToken { spaces.spaceFixedShorter }
    @objc open var switchSpacePaddingInlineTrue: SpaceSemanticToken { spaces.spaceFixedShortest }
    @objc open var switchSize: SizeSemanticToken { sizes.sizeIconWithLabelLargeSizeSm }
}
