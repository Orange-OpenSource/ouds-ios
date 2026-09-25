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

import SwiftUI

// MARK: - Limited Width Layout

/// A custom SwiftUI layout that constrains a view's width while preserving its intrinsic width whenever possible.
///
/// `LimitedWidthLayout` is designed for views such as buttons, labels, and text containers that should:
///
/// - remain as small as their content allows,
/// - never exceed a specified maximum width,
/// - never exceed the width proposed by their parent,
/// - respect a configurable minimum width,
/// - respect a configurable minimum height,
/// - and allow multiline content to adapt its height when its width is constrained.
///
/// The layout performs two measurements:
///
/// 1. It first asks the subview for its ideal size using `ProposedViewSize.unspecified`.
/// 2. It calculates the final width from the intrinsic width, maximum width, minimum width, and available width.
/// 3. It measures the subview again using that final width, allowing content such as `Text` to wrap onto multiple lines.
///
/// For example, given:
///
///     intrinsic width = 600
///     maximum width   = 480
///     available width = 390
///
/// the final width will be 390 points.
///
/// If the intrinsic width is only 120 points:
///
///     intrinsic width = 120
///     maximum width   = 480
///     available width = 390
///
/// the final width will be 120 points.
///
/// This makes the layout useful for controls that should be "as small as possible, but no larger than X".
@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, visionOS 1.0, *)
private struct LimitedWidthLayout: Layout {

    // MARK: - Properties

    /// The maximum width the layout can use.
    let maxWidth: CGFloat

    /// The minimum width the layout should use.
    let minWidth: CGFloat

    /// The minimum height the layout should use.
    let minHeight: CGFloat

    // MARK: - Size

    /// Calculates the size required by the layout for the given proposal.
    ///
    /// The layout first measures the subview without constraints to determine its ideal size.
    /// It then calculates a final width constrained by:
    ///
    ///     minWidth <= width <= min(maxWidth, availableWidth)
    ///
    /// The subview is then measured a second time using the calculated width.
    /// This second measurement is important for multiline content because the subview can determine its required height
    /// after the width constraint has been applied.
    ///
    /// - Parameters:
    ///   - proposal: The size proposed by the parent layout.
    ///   - subviews: The views managed by this layout.
    ///   - cache: A cache that can be used to store layout information.
    ///
    /// - Returns: The size required by the layout.
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {

        guard let subview = subviews.first else {
            return .zero
        }

        let idealSize = subview.sizeThatFits(.unspecified)
        let availableWidth = proposal.width ?? .infinity
        let width = min(availableWidth, max(minWidth, min(idealSize.width, maxWidth)))
        let constrainedSize = subview.sizeThatFits(ProposedViewSize(width: width, height: nil))
        let height = max(minHeight, constrainedSize.height)

        return CGSize(width: width, height: height)
    }

    // MARK: - Placement

    /// Places the layout's subview inside the calculated bounds.
    ///
    /// The subview is centered both horizontally and vertically.
    ///
    /// - Parameters:
    ///   - bounds: The bounds assigned to the layout.
    ///   - proposal: The size proposed by the parent layout.
    ///   - subviews: The views managed by this layout.
    ///   - cache: A cache that can be used to store layout information.
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        guard let subview = subviews.first else {
            return
        }

        subview.place(at: CGPoint(x: bounds.midX, y: bounds.midY),
                      anchor: .center,
                      proposal: ProposedViewSize(width: bounds.width, height: bounds.height))
    }
}

// MARK: - View Extension

/// Provides the `limitedWidth` modifier for SwiftUI views.
///
/// The modifier uses `LimitedWidthLayout` to calculate a width that preserves the view's intrinsic size
/// while respecting both the available space and the configured maximum width.
@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, visionOS 1.0, *)
extension View {

    /// Limits the view's width while preserving its intrinsic width whenever possible.
    ///
    /// The final width is calculated from:
    ///
    ///     intrinsic width
    ///     maximum width
    ///     available width
    ///     minimum width
    ///
    /// The effective rule is:
    ///
    ///     width = min(availableWidth, max(minWidth, min(intrinsicWidth, maxWidth)))
    ///
    /// The height is allowed to grow naturally when the content needs
    /// more vertical space, while `minHeight` provides a lower bound.
    ///
    /// This is particularly useful for buttons containing text:
    ///
    ///     Button("Add to cart") {
    ///         // ...
    ///     }
    ///     .limitedWidth(maxWidth: 480)
    ///
    /// A short label remains close to its intrinsic width, while a longer label can grow up to 480 points.
    /// If the available space is smaller than 480 points, the view is constrained to that available space and multiline content can wrap accordingly.
    ///
    /// - Parameters:
    ///   - minWidth: The minimum width allowed for the view.
    ///   - maxWidth: The maximum width allowed for the view.
    ///   - minHeight: The minimum height allowed for the view.
    ///
    /// - Returns: A view whose width and height are constrained
    ///   according to the specified limits.
    func limitedWidth(minWidth: CGFloat, maxWidth: CGFloat, minHeight: CGFloat) -> some View {
        LimitedWidthLayout(maxWidth: maxWidth, minWidth: minWidth, minHeight: minHeight) {
            self
        }
    }
}
