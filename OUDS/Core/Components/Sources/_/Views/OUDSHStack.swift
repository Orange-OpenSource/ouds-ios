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

/// Creates an `HStack` with spacing scaled according to `horizontalSizeClass` base on OUDS `MultipleSpaceSemanticToken`.
///
/// ```swift
///     // For scaled space use the initialier with the token you want
///    OUDSHStack(alignment: .top, spacing: theme.space.scaledMedium) {
///        Text("Hello")
///        Text("World")
///    }
///
///    // For not scaled space use the initializer with a Double parameter
///    OUDSHStack(alignment: .top, spacing: theme.spaces.rowGapMedium) {
///        Text("Hello")
///        Text("World")
///    }
/// ```
///
/// - Since: 1.3.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSHStack<Content: View>: View {

    // MARK: - Properties

    private let alignment: VerticalAlignment
    private let spacingToken: MultipleSpaceSemanticToken?
    private let spacing: Double?
    @ViewBuilder private let content: () -> Content

    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: - Initializers

    /// Creates an horizontal stack with the given spacing token and vertical alignment.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack. This guide has the same vertical screen coordinate for every subview. Default set to `.center`.
    ///   - spacing: The distance between adjacent subviews, or `nil` if you want the stack to choose a default distance for each pair of subviews. Default set to `nil`.
    ///   - content: A view builder that creates the content of this stack.
    public init(alignment: VerticalAlignment = .center,
                spacing: MultipleSpaceSemanticToken? = nil,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.alignment = alignment
        spacingToken = spacing
        self.spacing = nil
        self.content = content
    }

    /// Creates an horizontal stack with the given spacing value and vertical alignment.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack. This guide has the same vertical screen coordinate for every subview. Default set to `.center`.
    ///   - spacing: The distance between adjacent subviews, or `nil` if you want the stack to choose a default distance for each pair of subviews. Default set to `nil`.
    ///   - content: A view builder that creates the content of this stack.
    public init(alignment: VerticalAlignment = .center,
                spacing: Double? = nil,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.alignment = alignment
        spacingToken = nil
        self.spacing = spacing
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        HStack(alignment: alignment,
               spacing: scaledSpacing,
               content: content)
    }

    // MARK: - Helpers

    private var scaledSpacing: CGFloat? {
        if let spacingToken, let horizontalSizeClass {
            return CGFloat(spacingToken.dimension(for: horizontalSizeClass))
        }

        if let spacing {
            return spacing
        }

        return nil
    }
}
