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

#if !os(watchOS) && !os(macOS)
@testable import OUDSComponents
import Testing

/// Tests some API for `OUDSTextArea`
struct OUDSTextAreaTests {

    /// Test the controls on limit exceedings
    @MainActor @Test func textDoesExceedLimit() {
        // Given
        let smallText = "1234567890"
        let helperForSmallText = OUDSTextArea.HelperText.charactersMaxCount(50)
        // When
        let smallTextDoesNotExceedLimit = OUDSTextArea.textDoesExceedLimit(smallText, helperText: helperForSmallText)
        // Then
        #expect(smallTextDoesNotExceedLimit == false)

        // Given
        let exactText = "Lorem ipsum"
        let helperForExactText = OUDSTextArea.HelperText.charactersMaxCount(11)
        // When
        let exactTextDoesNotExceedLimit = OUDSTextArea.textDoesExceedLimit(exactText, helperText: helperForExactText)
        // Then
        #expect(exactTextDoesNotExceedLimit == false)

        // Given
        let bigText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
        let helperForBigText = OUDSTextArea.HelperText.charactersMaxCount(10)
        // When
        let bigTextExceedsLimit = OUDSTextArea.textDoesExceedLimit(bigText, helperText: helperForBigText)
        // Then
        #expect(bigTextExceedsLimit == true)

        // Given
        let emptyText = ""
        let helperForEmptyText = OUDSTextArea.HelperText.charactersMaxCount(10)
        // When
        let emptyTextDoesNotExceedLimit = OUDSTextArea.textDoesExceedLimit(emptyText, helperText: helperForEmptyText)
        // Then
        #expect(emptyTextDoesNotExceedLimit == false)

        // Given
        let zeroHelperForEmptyText = OUDSTextArea.HelperText.charactersMaxCount(0)
        // When
        let emptyZeroTextDoesNotExceedLimit = OUDSTextArea.textDoesExceedLimit(emptyText, helperText: zeroHelperForEmptyText)
        // Then
        #expect(emptyZeroTextDoesNotExceedLimit == false)
    }

    /// Test the controls on exceeeding counts
    @MainActor @Test func textExceedingCount() {
        // Given
        var someText = "Lorem ipsum" // Length of 11
        var helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(5)
        // When
        var exceedingCount = OUDSTextArea.textExceedingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(exceedingCount == 6) // 11 - 5 = 6

        // Given
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(11)
        // When
        exceedingCount = OUDSTextArea.textExceedingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(exceedingCount == 0) // 11 - 11 = 0

        // Given
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(50)
        // When
        exceedingCount = OUDSTextArea.textExceedingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(exceedingCount == 0) // 11 < 50, so 0 exceeding

        // Given
        someText = ""
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(10)
        // When
        exceedingCount = OUDSTextArea.textExceedingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(exceedingCount == 0) // Empty string, 0 exceeding
    }

    /// Test the controls on remaining counts
    @MainActor @Test func textRemainingCount() {
        // Given
        var someText = "Lorem ipsum" // Length of 11
        var helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(5)
        // When
        var remainingCount = OUDSTextArea.textRemainingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(remainingCount == 0) // 11 > 5, exceeding, 0 remaining

        // Given
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(11)
        // When
        remainingCount = OUDSTextArea.textRemainingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(remainingCount == 0) // 11 - 11 = 0

        // Given
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(50)
        // When
        remainingCount = OUDSTextArea.textRemainingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(remainingCount == 39) // 50 - 11 = 39

        // Given
        someText = ""
        helperForSomeText = OUDSTextArea.HelperText.charactersMaxCount(10)
        // When
        remainingCount = OUDSTextArea.textRemainingCount(someText, helperText: helperForSomeText)
        // Then
        #expect(remainingCount == 10)
    }
}
#endif
