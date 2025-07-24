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

import OUDS
import OUDSThemesOrange
import Testing

// swiftlint:disable type_name

struct ThemeOverrideOfPinCodeInputComponentTokensTests {

    private var abstractTheme: OUDSTheme
    private var inheritedTheme: OUDSTheme

    init() {
        abstractTheme = OrangeTheme()
        inheritedTheme = MockTheme()
    }

    // MARK: - Spaces

    @Test func inheritedThemeCanOverridePinCodeInputComponentTokenPinCodeInputSpaceColumnGapDigitInput() throws {
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSpaceColumnGapDigitInput != abstractTheme.pinCodeInput.pinCodeInputSpaceColumnGapDigitInput)
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSpaceColumnGapDigitInput == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverridePinCodeInputComponentTokenPinCodeInputSizeMinWidth() throws {
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSizeMinWidth != abstractTheme.pinCodeInput.pinCodeInputSizeMinWidth)
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSizeMinWidth == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSize)
    }

    @Test func inheritedThemeCanOverridePinCodeInputComponentTokenPinCodeInputSizeMaxWidth() throws {
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSizeMaxWidth != abstractTheme.pinCodeInput.pinCodeInputSizeMaxWidth)
        #expect(inheritedTheme.pinCodeInput.pinCodeInputSizeMaxWidth == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSize)
    }
}

// swiftlint:enable type_name
