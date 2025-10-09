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
// swiftlint:disable type_name
final class MockThemeBulletListComponentTokenProvider: OrangeThemeBulletListComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeBulletListSpace: DimensionRawToken = 42

    override init(spaces: AllSpaceSemanticTokensProvider?) {
        super.init(spaces: spaces)
    }

    // MARK: - Bullet list component tokens

    override var bulletListSpaceColumnGapBodyLarge: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpaceColumnGapBodyMedium: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpacePaddingBlockBodyLarge: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpacePaddingBlockBodyMedium: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpacePaddingInlineLevel0: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpacePaddingInlineLevel1: SpaceSemanticToken { Self.mockThemeBulletListSpace }
    override var bulletListSpacePaddingInlineLevel2: SpaceSemanticToken { Self.mockThemeBulletListSpace }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
