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

/// A `ViewModifier` which will apply a specific divider under a `View` using color and size semantic token for a specified orientation.
///
/// - Since: 0.13.0
struct DividerModifier: ViewModifier {

    /// Divider orientation
    enum Orientation {
        case horizontal
        case vertical
    }

    // MARK: Stored properties

    let dividerColor: OUDSDividerColor
    let tokenColor: MultipleColorSemanticTokens?
    let orientation: Orientation

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    /// Internal usage, create with a `tokenColor`. The `dividerColor` is ignored
    ///
    /// - Parameters:
    ///   - orientation: The divider orientation
    ///   - tokenColor: The token of the color to apply
    init(orientation: Orientation, tokenColor: MultipleColorSemanticTokens) {
        dividerColor = .default
        self.tokenColor = tokenColor
        self.orientation = orientation
    }

    /// Normal (public) usage, create with a `dividerColor`
    ///
    /// - Parameters:
    ///   - orientation: The divider orientation
    ///   - dividerColor: The color allowed for divider in a public usage
    init(orientation: Orientation, dividerColor: OUDSDividerColor) {
        self.dividerColor = dividerColor
        tokenColor = nil
        self.orientation = orientation
    }

    // - MARK: Body

    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .overlay(color.color(for: colorScheme))
    }

    // - MARK: Private helper

    private var height: CGFloat? {
        switch orientation {
        case .horizontal:
            theme.divider.dividerBorderWidth
        case .vertical:
            nil
        }
    }

    private var width: CGFloat? {
        switch orientation {
        case .horizontal:
            nil
        case .vertical:
            theme.divider.dividerBorderWidth
        }
    }

    private var color: MultipleColorSemanticTokens {
        tokenColor ?? dividerColor.colorToken(in: theme)
    }
}

extension Divider {
    /// Set the color to the vertical divider with token sementic color for internal usage
    ///
    /// ```swift
    /// HStack {
    ///     Text("Hello wolrd!")
    ///
    ///     Divider()
    ///        .oudsVerticalDivider(tokenColor: theme.colors.colorContentStatusNegative)
    ///
    ///     Text("Happy to see you")
    /// }
    /// ```
    ///
    /// - Parameter tokenColor: the sementic color token of the divider
    @MainActor
    func oudsVerticalDivider(tokenColor: MultipleColorSemanticTokens) -> some View {
        modifier(DividerModifier(orientation: .vertical, tokenColor: tokenColor))
    }

    /// Set the color to the horizontal divider with token sementic color for internal usage
    /// ```swift
    /// VStack {
    ///     Text("Hello wolrd!")
    ///
    ///     Divider()
    ///        .oudsHorizontalDivider(dividerColor: .brandPrimary)
    ///
    ///     Text("Happy to see you")
    /// }
    /// ```
    ///
    @MainActor
    func oudsHorizontalDivider(tokenColor: MultipleColorSemanticTokens) -> some View {
        modifier(DividerModifier(orientation: .horizontal, tokenColor: tokenColor))
    }
}
