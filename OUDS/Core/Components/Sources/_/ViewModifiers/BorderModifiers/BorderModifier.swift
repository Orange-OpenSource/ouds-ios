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
import OUDSTokensSemantic
import SwiftUI

/// A `ViewModifier` which will apply a specific border to a `View` using several semantic tokens.
struct BorderModifier: ViewModifier {

    // MARK: - Properties

    /// The style to apply on the component
    private let style: BorderStyleSemanticToken

    /// The width of the border
    private let width: BorderWidthSemanticToken

    /// The radius of the border to apply
    private let radius: BorderRadiusSemanticToken

    /// The color token used for the border
    private let color: MultipleColorSemanticTokens

    /// Color to apply depending to the `colorScheme`
    private var colorToApply: Color {
        color.color(for: colorScheme)
    }

    /// To know if the device is in light mode or in dark mode
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Initializer

    init(_ style: BorderStyleSemanticToken,
         _ width: BorderWidthSemanticToken,
         _ radius: BorderRadiusSemanticToken,
         _ color: MultipleColorSemanticTokens) {
        self.style = style
        self.width = width
        self.radius = radius
        self.color = color
        if style != "solid" && style != "dashed" && style != "dotted" {
            OL.error("Unmanaged style: '\(style)'!")
        }
    }

    // MARK: - Body

    @ViewBuilder
    func body(content: Content) -> some View {
        if style == "solid" {
            solid(content)
        } else if style == "dashed" {
            dashed(content)
        } else if style == "dotted" {
            dotted(content)
        } else { // if token == "none" and unmanaged cases
            none(content)
        }
    }

    private func none(_ content: Content) -> some View {
        content
    }

    private func solid(_ content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .overlay(RoundedRectangle(cornerRadius: radius).stroke(colorToApply, lineWidth: width))
    }

    private func dashed(_ content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .overlay(RoundedRectangle(cornerRadius: radius)
                .stroke(style: StrokeStyle(lineWidth: width, dash: [2, 2]))
                .foregroundColor(colorToApply)
            )
    }

    private func dotted(_ content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: radius))
            .overlay(RoundedRectangle(cornerRadius: radius)
                .stroke(style: StrokeStyle(lineWidth: width, dash: [1, 5]))
                .foregroundColor(colorToApply)
            )
    }
}
