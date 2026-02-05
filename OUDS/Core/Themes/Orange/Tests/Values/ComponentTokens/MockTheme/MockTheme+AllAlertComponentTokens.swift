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
final class MockThemeAlertComponentTokenProvider: OrangeThemeAlertComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeAlertBorderRadius: BorderRadiusSemanticToken = 1_312
    static let mockThemeAlertBorderWidth: BorderWidthSemanticToken = 1_312
    static let mockThemeAlertSpace: SpaceSemanticToken = 1_312
    static let mockThemeAlertSize: SizeSemanticToken = 118_218

    override init(sizes: AllSizeSemanticTokensProvider?,
                  borders: AllBorderSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes,
                   borders: borders,
                   spaces: spaces)
    }

    // MARK: - Alert component tokens

    override var borderRadiusDefault: BorderRadiusSemanticToken { Self.mockThemeAlertBorderRadius }
    override var borderRadiusRounded: BorderRadiusSemanticToken { Self.mockThemeAlertBorderRadius }
    override var borderWidth: BorderWidthSemanticToken { Self.mockThemeAlertBorderWidth }

    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spacePaddingInline: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spaceColumnGap: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spaceColumnGapAction: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spaceRowGap: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spaceRowGapAction: SpaceSemanticToken { Self.mockThemeAlertSpace }
    override var spaceRowGapBullet: SpaceSemanticToken { Self.mockThemeAlertSpace }

    override var sizeIcon: SizeSemanticToken { Self.mockThemeAlertSize }
    override var sizeMinHeight: SizeSemanticToken { Self.mockThemeAlertSize }
    override var sizeMinHeightBottomActionPlacement: SizeSemanticToken { Self.mockThemeAlertSize }
    override var sizeMinWidth: SizeSemanticToken { Self.mockThemeAlertSize }
}

// swiftlint:enable required_deinit
