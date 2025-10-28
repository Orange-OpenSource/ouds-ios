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
// swiftlint:disable type_name

final class MockThemePinCodeInputComponentTokenProvider: OrangeThemePinCodeInputComponentTokensProvider {

    // MARK: - Mocks and setup

    static let mockThemePinCodeInputSize: SizeSemanticToken = 118_218
    static let mockThemePinCodeInputSpace: SpaceSemanticToken = 1_312

    override init(spaces: AllSpaceSemanticTokensProvider?,
                  _s: AllDimensionSemanticTokensProvider?)
    {
        super.init(spaces: spaces, _s: _s)
    }

    // MARK: - Pin code input component tokens

    override var pinCodeInputSpaceColumnGapDigitInput: SpaceSemanticToken { Self.mockThemePinCodeInputSpace }
    override var pinCodeInputSizeMinWidth: SizeSemanticToken { Self.mockThemePinCodeInputSize }
    override var pinCodeInputSizeMaxWidth: SizeSemanticToken { Self.mockThemePinCodeInputSize }
}

// swiftlint:enable required_deinit
// swiftlint:enable type_name
