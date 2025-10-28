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

final class MockThemeTextAreaComponentTokenProvider: OrangeThemeTextAreaComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemeTextAreaSize: SizeSemanticToken = 123
    static let mockThemeTextAreaSpace: SizeSemanticToken = 456

    override init(sizes: AllSizeSemanticTokensProvider?,
                  spaces: AllSpaceSemanticTokensProvider?)
    {
        super.init(sizes: sizes, spaces: spaces)
    }

    // MARK: - Spaces

    override var spacePaddingBlock: SpaceSemanticToken { Self.mockThemeTextAreaSpace }

    // MARK: - Sizes

    override var sizeMinHeightInput: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxHeightInput: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxHeightAssetsContainer: SizeSemanticToken { Self.mockThemeTextAreaSize }
    override var sizeMaxWidth: SizeSemanticToken { Self.mockThemeTextAreaSize }
}

// swiftlint:enable required_deinit
