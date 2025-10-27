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

/// A `ViewModifier` which will apply a specific divider under a `View` using color and size semantic tokens for a specified orientation.
struct DividerModifier: ViewModifier {

    /// Divider orientation
    enum Orientation {
        case horizontal
        case vertical
    }

    // MARK: Properties

    let dividerColor: OUDSDividerColor
    let forceColor: MultipleColorSemanticTokens?
    let orientation: Orientation

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Init

    /// Normal (public) usage, creates with a `dividerColor`
    ///
    /// - Parameters:
    ///   - orientation: The divider orientation
    ///   - dividerColor: The color allowed for divider in a public usage
    init(orientation: Orientation, dividerColor: OUDSDividerColor) {
        self.dividerColor = dividerColor
        forceColor = nil
        self.orientation = orientation
    }

    /// For internal usage, creates with a `forceColor`. The `dividerColor` is ignored.
    ///
    /// - Parameters:
    ///   - orientation: The divider orientation
    ///   - forceColor: The token of the color to apply
    init(orientation: Orientation, forceColor: MultipleColorSemanticTokens) {
        dividerColor = .default
        self.forceColor = forceColor
        self.orientation = orientation
    }

    // MARK: - Body

    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .overlay(color.color(for: colorScheme))
    }

    // MARK: - Helpers

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
        forceColor ?? dividerColor.colorToken(in: theme)
    }
}

extension Divider {

    /// Force the color of the vertical divider (for internal usage)
    ///
    /// - Parameter color: The color to force for the divider
    @MainActor
    func verticalDivider(force color: MultipleColorSemanticTokens) -> some View {
        modifier(DividerModifier(orientation: .vertical, forceColor: color))
    }

    /// Force the color of the horizontal divider (for internal usage)
    ///
    /// - Parameter color: The color to force for the divider
    @MainActor
    func horizontalDivider(force color: MultipleColorSemanticTokens) -> some View {
        modifier(DividerModifier(orientation: .horizontal, forceColor: color))
    }
}
