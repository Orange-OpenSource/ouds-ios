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

import OUDSFoundations
import SwiftUI
import Testing

/// To test some extensions of `SwiftUI.ContentSizeCategory` so as to be sure applied size categories
/// are well cnsidered as large texts, accessible sizes or have the suitable values uses for factors computations.
struct ContentSizeCategoryTests {

    // MARK: - Is accessible

    @Test("Content size category extraSmall must NOT be considered as accessible size")
    func extraSmallIsAccessibleSize() throws {
        #expect(ContentSizeCategory.extraSmall.isAccessible == false)
    }

    @Test("Content size category small must NOT be considered as accessible size")
    func smallsAccessibleSize() throws {
        #expect(ContentSizeCategory.small.isAccessible == false)
    }

    @Test("Content size category medium must NOT be considered as accessible size")
    func mediumIsAccessibleSize() throws {
        #expect(ContentSizeCategory.medium.isAccessible == false)
    }

    @Test("Content size category large must NOT be considered as accessible size")
    func largeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.large.isAccessible == false)
    }

    @Test("Content size category extraLarge must NOT be considered as accessible size")
    func extraLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.extraLarge.isAccessible == false)
    }

    @Test("Content size category extraExtraLarge must NOT be considered as accessible size")
    func extraExtraLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.extraExtraLarge.isAccessible == false)
    }

    @Test("Content size category extraExtraExtraLarge must NOT be considered as accessible size")
    func extraExtraExtraLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.extraExtraExtraLarge.isAccessible == false)
    }

    @Test("Content size category accessibilityMedium must be considered as accessible size")
    func accessibilityMediumIsAccessibleSize() throws {
        #expect(ContentSizeCategory.accessibilityMedium.isAccessible == true)
    }

    @Test("Content size category accessibilityLarge must be considered as accessible size")
    func accessibilityLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.accessibilityLarge.isAccessible == true)
    }

    @Test("Content size category accessibilityExtraLarge must be considered as accessible size")
    func accessibilityExtraLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.accessibilityExtraLarge.isAccessible == true)
    }

    @Test("Content size category accessibilityExtraExtraLarge must be considered as accessible size")
    func accessibilityExtraExtraLargemIsAccessibleSize() throws {
        #expect(ContentSizeCategory.accessibilityExtraExtraLarge.isAccessible == true)
    }

    @Test("Content size category accessibilityExtraExtraExtraLarge must be considered as accessible size")
    func accessibilityExtraExtraExtraLargeIsAccessibleSize() throws {
        #expect(ContentSizeCategory.accessibilityExtraExtraExtraLarge.isAccessible == true)
    }

    // MARK: - Is large text used

    @Test("Content size category extraSmall must NOT be considered as large text")
    func extraSmallIsLargeText() throws {
        #expect(ContentSizeCategory.extraSmall.isLargeTextUsed == false)
    }

    @Test("Content size category small must NOT be considered as large text")
    func smallsLargeText() throws {
        #expect(ContentSizeCategory.small.isLargeTextUsed == false)
    }

    @Test("Content size category medium must NOT be considered as large text")
    func mediumIsLargeText() throws {
        #expect(ContentSizeCategory.medium.isLargeTextUsed == false)
    }

    @Test("Content size category large must be considered as large text")
    func largeIsLargeText() throws {
        #expect(ContentSizeCategory.large.isLargeTextUsed == false)
    }

    @Test("Content size category extraLarge must be considered as large text")
    func extraLargeIsLargeText() throws {
        #expect(ContentSizeCategory.extraLarge.isLargeTextUsed == true)
    }

    @Test("Content size category extraExtraExtraLarge must be considered as large text")
    func extraExtraExtraLargeIsLargeText() throws {
        #expect(ContentSizeCategory.extraExtraExtraLarge.isLargeTextUsed == true)
    }

    @Test("Content size category accessibilityMedium must be considered as large text")
    func accessibilityMediumIsLargeText() throws {
        #expect(ContentSizeCategory.accessibilityMedium.isLargeTextUsed == true)
    }

    @Test("Content size category accessibilityLarge must be considered as large text")
    func accessibilityLargeIsLargeText() throws {
        #expect(ContentSizeCategory.accessibilityLarge.isLargeTextUsed == true)
    }

    @Test("Content size category accessibilityExtraLarge must be considered as large text")
    func accessibilityExtraLargeIsLargeText() throws {
        #expect(ContentSizeCategory.accessibilityExtraLarge.isLargeTextUsed == true)
    }

    @Test("Content size category accessibilityExtraExtraLarge must be considered as large text")
    func accessibilityExtraExtraLargeIsLargeText() throws {
        #expect(ContentSizeCategory.accessibilityExtraExtraLarge.isLargeTextUsed == true)
    }

    @Test("Content size category accessibilityExtraExtraExtraLarge must be considered as large text")
    func accessibilityExtraExtraExtraLargeIsLargeText() throws {
        #expect(ContentSizeCategory.accessibilityExtraExtraExtraLarge.isLargeTextUsed == true)
    }

    // MARK: - Percentage rates

    @Test
    func checkPercentageRatesValues() throws {
        #expect(ContentSizeCategory.extraSmall.percentageRate == 80)
        #expect(ContentSizeCategory.small.percentageRate == 85)
        #expect(ContentSizeCategory.medium.percentageRate == 90)
        #expect(ContentSizeCategory.large.percentageRate == 100)
        #expect(ContentSizeCategory.extraLarge.percentageRate == 110)
        #expect(ContentSizeCategory.extraExtraLarge.percentageRate == 120)
        #expect(ContentSizeCategory.extraExtraExtraLarge.percentageRate == 135)
        #expect(ContentSizeCategory.accessibilityMedium.percentageRate == 160)
        #expect(ContentSizeCategory.accessibilityLarge.percentageRate == 190)
        #expect(ContentSizeCategory.accessibilityExtraLarge.percentageRate == 235)
        #expect(ContentSizeCategory.accessibilityExtraExtraLarge.percentageRate == 275)
        #expect(ContentSizeCategory.accessibilityExtraExtraExtraLarge.percentageRate == 310)
    }
}

// swiftlint:enable force_unwrapping
