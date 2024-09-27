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

import Foundation
import OUDSTokensSemantic
import OUDSFoundations
import SwiftUI

/// A `ViewModifier` which will apply a specific border style to a `View` using several semantic tokens.
public struct BorderStyleModifier: ViewModifier {

    // MARK: - Properties

    /// The style to apply on the component
    private let token: BorderStyleSemanticToken

    /// The width of the border
    private let width: BorderWidthSemanticToken

    /// The radius of the border to apply
    private let radius: BorderRadiusSemanticToken

    /// The colors of the border
    private let color: ColorSemanticToken

    /// Color to apply depending to the `colorScheme`
    private var colorToApply: Color {
        (colorScheme == .light ? color.light.color : color.dark.color).opacity(0.5)
    }

    /// To know if the device is in light mode or in dark mode
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Initializer

    public init(_ token: BorderStyleSemanticToken,
                _ width: BorderWidthSemanticToken,
                _ radius: BorderRadiusSemanticToken,
                _ color: ColorSemanticToken) {
        self.token = token
        self.width = width
        self.radius = radius
        self.color = color
        if token != "solid" && token != "dashed" && token != "dotted" {
            OUDSLogger.error("Unmanaged token: '\(token)'!")
        }
    }

    // MARK: - Body

    @ViewBuilder
    public func body(content: Content) -> some View {
        if token == "solid" {
            solid(content)
        } else if token == "dashed" {
            dashed(content)
        } else if token == "dotted" {
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
                .stroke(style: StrokeStyle(lineWidth: width, dash: [10, 5]))
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
