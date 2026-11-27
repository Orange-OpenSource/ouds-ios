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

/// Natural header width, excluding the description, and preferred theme spacing.
struct TabItemMeasurement: Equatable {
    let contentWidth: CGFloat
    let leadingPadding: CGFloat
    let trailingPadding: CGFloat

    var padding: CGFloat { leadingPadding + trailingPadding }
    var preferredWidth: CGFloat { contentWidth + padding }
}

struct TabItemAllocation: Equatable {
    let width: CGFloat
    let leadingPadding: CGFloat
    let trailingPadding: CGFloat
}

/// Keeps equal columns when they fit. Otherwise respects the natural header widths
/// and reduces padding proportionally before allowing any necessary text wrapping.
/// It never shrinks the font, truncates text or adds a scrolling distribution.
enum TabWidthAllocation {
    static func calculate(width: CGFloat, spacing: CGFloat, items: [TabItemMeasurement]) -> [TabItemAllocation] {
        guard !items.isEmpty else { return [] }
        let count = CGFloat(items.count)
        let available = max(0, width - max(0, spacing) * (count - 1))
        let equalWidth = available / count

        if items.allSatisfy({ $0.preferredWidth <= equalWidth }) {
            return items.map { TabItemAllocation(width: equalWidth, leadingPadding: $0.leadingPadding, trailingPadding: $0.trailingPadding) }
        }

        let contentWidth = items.reduce(0) { $0 + $1.contentWidth }
        let padding = items.reduce(0) { $0 + $1.padding }
        if contentWidth <= available {
            let paddingScale = padding > 0 ? min(1, max(0, (available - contentWidth) / padding)) : 0
            let extraWidth = max(0, available - contentWidth - padding * paddingScale) / count
            return items.map {
                TabItemAllocation(
                    width: $0.contentWidth + $0.padding * paddingScale + extraWidth,
                    leadingPadding: $0.leadingPadding * paddingScale,
                    trailingPadding: $0.trailingPadding * paddingScale)
            }
        }

        // Even zero padding cannot fit intrinsically oversized headers. Let complete
        // text wrap at its existing font size rather than clip or overflow the grid.
        return items.map { _ in
            TabItemAllocation(width: equalWidth, leadingPadding: 0, trailingPadding: 0)
        }
    }
}
#endif
