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

final class MockThemeProgressIndicatorComponentTokenProvider: OrangeThemeProgressIndicatorComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeProgressIndicatorColor = MultipleColorSemanticToken("#00FF00")
    static let mockThemeProgressIndicatorBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeProgressIndicatorSpace: SpaceSemanticToken = 1_312
    static let mockThemeProgressIndicatorSize: SizeSemanticToken = 118_218

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  colors: AllColorSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes,
                   borders: borders,
                   colors: colors,
                   spaces: spaces)
    }

    // MARK: - ProgressIndicator component tokens

    override var colorContentTrack: MultipleColorSemanticToken { Self.mockThemeProgressIndicatorColor }
    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeProgressIndicatorBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeProgressIndicatorBorderRadius }
    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeProgressIndicatorSpace }
    override var spaceColumnGap: SpaceSemanticToken { Self.mockThemeProgressIndicatorSpace }
    override var sizeLinearIndicatorHeight: SizeSemanticToken { Self.mockThemeProgressIndicatorSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
