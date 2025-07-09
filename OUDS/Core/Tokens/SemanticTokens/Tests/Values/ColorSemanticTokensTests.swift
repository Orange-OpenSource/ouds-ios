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

import OUDSTokensRaw
import OUDSTokensSemantic
import Testing

/// To ensure the `ColorSemanticToken` follow the expected rules
struct ColorSemanticTokensTests {

    /// Tests controls on `ColorSemanticToken` to ensure that if it is a forbidden value we know it
    @Test func hasForbiddenColorValues() {
        // Given
        let forbiddenColorValue = "ouds-forbidden-color-value"
        let notForbiddenColorValue = ColorRawTokens.colorFunctionalMalachite300

        // When, then
        var colorSemanticToken: ColorSemanticToken = notForbiddenColorValue
        #expect(colorSemanticToken.isForbiddenValueColor() == false)

        // When, then
        colorSemanticToken = forbiddenColorValue
        #expect(colorSemanticToken.isForbiddenValueColor() == true)
    }
}
