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

import OUDSThemesContract
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
        #expect(inheritedTheme.pinCodeInput.spaceColumnGapDigitInput != abstractTheme.pinCodeInput.spaceColumnGapDigitInput)
        #expect(inheritedTheme.pinCodeInput.spaceColumnGapDigitInput == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSpace)
    }

    // MARK: - Sizes

    @Test func inheritedThemeCanOverridePinCodeInputComponentTokenPinCodeInputSizeMinWidthDigitInput() throws {
        #expect(inheritedTheme.pinCodeInput.sizeMinWidthDigitInput != abstractTheme.pinCodeInput.sizeMinWidthDigitInput)
        #expect(inheritedTheme.pinCodeInput.sizeMinWidthDigitInput == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSize)
    }

    @Test func inheritedThemeCanOverridePinCodeInputComponentTokenPinCodeInputSizeMaxWidthDigitInput() throws {
        #expect(inheritedTheme.pinCodeInput.sizeMaxWidthDigitInput != abstractTheme.pinCodeInput.sizeMaxWidthDigitInput)
        #expect(inheritedTheme.pinCodeInput.sizeMaxWidthDigitInput == MockThemePinCodeInputComponentTokenProvider.mockThemePinCodeInputSize)
    }
}

// swiftlint:enable type_name
