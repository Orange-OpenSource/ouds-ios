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

/// To test some extensions of `SwiftUI.DynamicTypeSize` so as to be sure applied size categories
/// are well considered as large texts or have the suitable values used for factors computations.
struct DynamicTypeSizeTests {

    // MARK: - Is large text used

    @Test("Content size category xSmall must NOT be considered as large text")
    func xSmallIsLargeText() throws {
        #expect(DynamicTypeSize.xSmall.isLargeTextUsed == false)
    }

    @Test("Content size category small must NOT be considered as large text")
    func smallIsLargeText() throws {
        #expect(DynamicTypeSize.small.isLargeTextUsed == false)
    }

    @Test("Content size category medium must NOT be considered as large text")
    func mediumIsLargeText() throws {
        #expect(DynamicTypeSize.medium.isLargeTextUsed == false)
    }

    @Test("Content size category large must be considered as large text")
    func largeIsLargeText() throws {
        #expect(DynamicTypeSize.large.isLargeTextUsed == false)
    }

    @Test("Content size category xLarge must be considered as large text")
    func xLargeIsLargeText() throws {
        #expect(DynamicTypeSize.xLarge.isLargeTextUsed == true)
    }

    @Test("Content size category xxLarge must be considered as large text")
    func xxLargeIsLargeText() throws {
        #expect(DynamicTypeSize.xxLarge.isLargeTextUsed == true)
    }

    @Test("Content size category xxxLarge must be considered as large text")
    func xxxLargeIsLargeText() throws {
        #expect(DynamicTypeSize.xxxLarge.isLargeTextUsed == true)
    }

    @Test("Content size category accessibility1 must be considered as large text")
    func accessibility1IsLargeText() throws {
        #expect(DynamicTypeSize.accessibility1.isLargeTextUsed == true)
    }

    @Test("Content size category accessibility2 must be considered as large text")
    func accessibility2IsLargeText() throws {
        #expect(DynamicTypeSize.accessibility2.isLargeTextUsed == true)
    }

    @Test("Content size category accessibility3 must be considered as large text")
    func accessibility3IsLargeText() throws {
        #expect(DynamicTypeSize.accessibility3.isLargeTextUsed == true)
    }

    @Test("Content size category accessibility4 must be considered as large text")
    func accessibility4IsLargeText() throws {
        #expect(DynamicTypeSize.accessibility4.isLargeTextUsed == true)
    }

    @Test("Content size category accessibility5 must be considered as large text")
    func accessibility5IsLargeText() throws {
        #expect(DynamicTypeSize.accessibility5.isLargeTextUsed == true)
    }

    // MARK: - Percentage rates

    @Test
    func checkPercentageRatesValues() throws {
        #expect(DynamicTypeSize.xSmall.percentageRate == 80)
        #expect(DynamicTypeSize.small.percentageRate == 85)
        #expect(DynamicTypeSize.medium.percentageRate == 90)
        #expect(DynamicTypeSize.large.percentageRate == 100)
        #expect(DynamicTypeSize.xLarge.percentageRate == 110)
        #expect(DynamicTypeSize.xxLarge.percentageRate == 120)
        #expect(DynamicTypeSize.xxxLarge.percentageRate == 135)
        #expect(DynamicTypeSize.accessibility1.percentageRate == 160)
        #expect(DynamicTypeSize.accessibility2.percentageRate == 190)
        #expect(DynamicTypeSize.accessibility3.percentageRate == 235)
        #expect(DynamicTypeSize.accessibility4.percentageRate == 275)
        #expect(DynamicTypeSize.accessibility5.percentageRate == 310)
    }
}
