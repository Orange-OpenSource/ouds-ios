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

import OUDSTokensSemantic
import SwiftUI

/// Help to create a `HStach` with spacing scaled according to `horizontalSizeClass` base on
///  OUDS `MultipleSpaceSemanticToken`.
///
/// ```
///    OUDSHStack(alignment: .top, spacing: theme.space.scaledMedium) {
///        Text("Hello")
///        Text("World")
///    }
///
///    // For not scaled space use the HStsack
///    HStack(alignment: .top, spacing: theme.spaces.columnGapMedium) {
///        Text("Hello")
///        Text("World")
///    }
///
/// ```
///
/// - Since: 1.3.0
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
@frozen public struct OUDSHStack<Content: View>: View {

    public let alignment: VerticalAlignment
    public let spacing: MultipleSpaceSemanticToken?
    @ViewBuilder
    public let content: () -> Content
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    /// Creates a horizontal stack with the given spacing and vertical alignment.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack. This
    ///     guide has the same vertical screen coordinate for every subview.
    ///   - spacing: The distance between adjacent subviews, or `nil` if you
    ///     want the stack to choose a default distance for each pair of subviews.
    ///   - content: A view builder that creates the content of this stack.
    @inlinable public init(alignment: VerticalAlignment = .center, spacing: MultipleSpaceSemanticToken? = nil, @ViewBuilder content: @escaping () -> Content) {
        self.alignment = alignment
        self.spacing = spacing
        self.content = content
    }

    public var body: some View {
        HStack(alignment: alignment,
               spacing: scaledSpacing,
               content: content)
    }

    private var scaledSpacing: CGFloat? {
        if let spacing, let horizontalSizeClass {
            return CGFloat(spacing.dimension(for: horizontalSizeClass))
        }

        return nil
    }
}
