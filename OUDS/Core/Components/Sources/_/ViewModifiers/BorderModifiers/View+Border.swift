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

extension View {

    /// Modifies the current `View` to apply a border.
    ///
    /// ```swift
    ///     @Environment(\.theme) private var theme
    ///
    ///    var body: some View {
    ///        SomeView()
    ///        .border(
    ///             style: theme.borders.styleDefault,
    ///             width: theme.borders.widthThin,
    ///             radius: theme.borders.radiusNone,
    ///             color: theme.colors.borderDefault)
    ///     }
    /// ```
    ///
    /// - Parameters
    ///     - style: The style to apply on the component
    ///     - width: The width of the border
    ///     - radius: The radius of the border to apply
    ///     - color: The colors of the border (depending to the `colorScheme`)
    /// - Returns some View: The current `View` but with a border.
    public func border(
        style: BorderStyleSemanticToken,
        width: BorderWidthSemanticToken,
        radius: BorderRadiusSemanticToken,
        color: MultipleColorSemanticToken) -> some View
    {
        modifier(BorderModifier(style, width, radius, color))
    }

    /// Modifies the current `View` to apply a default border using the tokens from the current theme.
    ///
    /// This is a convenience method that uses `theme.borders.styleDefault`, `theme.borders.widthDefault`,
    /// `theme.borders.radiusDefault` and `theme.colors.borderDefault` automatically.
    ///
    /// ```swift
    ///    var body: some View {
    ///        SomeView()
    ///            .borderDefault()
    ///     }
    /// ```
    ///
    /// - Returns some View: The current `View` but with a default border.
    public func borderDefault() -> some View {
        modifier(BorderDefaultModifier())
    }

    /// Modifies the current `View` to apply a border.
    ///
    /// ```swift
    ///     @Environment(\.theme) private var theme
    ///
    ///    var body: some View {
    ///        SomeView()
    ///        .border(
    ///             style: theme.borders.styleDefault,
    ///             width: theme.borders.widthThin,
    ///             radius: theme.borders.radiusNone,
    ///             color: theme.colors.borderDefault)
    ///     }
    /// ```
    ///
    /// - Parameters
    ///     - style: The style to apply on the component
    ///     - width: The width of the border
    ///     - radius: The radius of the border to apply
    ///     - color: The colors of the border (depending to the `colorScheme`)
    /// - Returns some View: The current `View` but with a border.
    @available(*, deprecated, renamed: "border(style:width:radius:color:)", message: "Use border(style:width:radius:color:) instead")
    public func oudsBorder(
        style: BorderStyleSemanticToken,
        width: BorderWidthSemanticToken,
        radius: BorderRadiusSemanticToken,
        color: MultipleColorSemanticToken) -> some View
    {
        border(style: style, width: width, radius: radius, color: color)
    }
}
