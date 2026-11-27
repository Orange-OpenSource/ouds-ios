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

#if !os(watchOS)
import CoreGraphics
@testable import OUDSComponents
import Testing

struct TabWidthAllocationTests {
    @Test func preservesThemePaddingAndEqualColumnsWhenThereIsRoom() {
        let items = Array(repeating: measurement(width: 55), count: 4)
        let result = TabWidthAllocation.calculate(width: 700, spacing: 1, items: items)
        #expect(result.allSatisfy { $0.leadingPadding == 24 && $0.trailingPadding == 24 })
        #expect(result.allSatisfy { $0.width == result[0].width })
        #expect(abs(result.reduce(3) { $0 + $1.width } - 700) < 0.001)
    }

    @Test func reducesPaddingBeforeWrappingFourLabelXHeaders() {
        let items = Array(repeating: measurement(width: 55), count: 4)
        let result = TabWidthAllocation.calculate(width: 342, spacing: 1, items: items)
        #expect(result.count == 4)
        for allocation in result {
            #expect(allocation.leadingPadding < 24)
            #expect(allocation.trailingPadding < 24)
            #expect(allocation.width - allocation.leadingPadding - allocation.trailingPadding >= 55)
        }
        #expect(abs(result.reduce(3) { $0 + $1.width } - 342) < 0.001)
    }

    @Test func widerHeadersCanUseSpaceThatOtherTabsDoNotNeed() {
        let items = [measurement(width: 95), measurement(width: 55), measurement(width: 55), measurement(width: 55)]
        let result = TabWidthAllocation.calculate(width: 342, spacing: 1, items: items)
        #expect(result[0].width > result[1].width)
        for (allocation, item) in zip(result, items) {
            #expect(allocation.width - allocation.leadingPadding - allocation.trailingPadding >= item.contentWidth)
        }
        #expect(abs(result.reduce(3) { $0 + $1.width } - 342) < 0.001)
    }

    @Test func impossibleWidthsUseZeroPaddingAndRemainInsideTheGrid() {
        let items = Array(repeating: measurement(width: 100), count: 8)
        let result = TabWidthAllocation.calculate(width: 342, spacing: 1, items: items)
        #expect(result.allSatisfy { $0.leadingPadding == 0 && $0.trailingPadding == 0 })
        #expect(result.allSatisfy { $0.width >= 0 && $0.width.isFinite })
        #expect(abs(result.reduce(7) { $0 + $1.width } - 342) < 0.001)
    }

    @Test func emptyAndZeroWidthRowsAreSafe() {
        #expect(TabWidthAllocation.calculate(width: 0, spacing: 1, items: []).isEmpty)
        let result = TabWidthAllocation.calculate(width: 0, spacing: 1, items: [measurement(width: 55)])
        #expect(result[0].width == 0)
        #expect(result[0].leadingPadding == 0)
    }

    private func measurement(width: CGFloat) -> TabItemMeasurement {
        TabItemMeasurement(contentWidth: width, leadingPadding: 24, trailingPadding: 24)
    }
}
#endif
