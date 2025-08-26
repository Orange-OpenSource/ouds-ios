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

// MARK: - Colored Surface

/// Used to define if a content is used on a colored surface.
///
/// It applies the `color` to the background and set the `oudsColoredSurface` environment variable to *true*.
/// This variable is useful, for example, to change the style of a component according to its environment (e.g monochrome mode on `OUDSButton`).
///
/// ```swift
///   OUDSColoredSurface(color: theme.colorModes.modeOnBrandPrimary) {
///      OUDSButton(icon: Image("ic_heart"), hierarchy: .strong) {}
///   }
/// ```
///
/// ## Theme rendering
///
/// ### Orange
///
/// ![A colored surface with text, button and link in light and dark mode with Orange theme](component_coloredsurface_Orange)
///
/// - Since: 0.13.0
public struct OUDSColoredSurface<Content>: View where Content: View {

    /// A type alias to use for clarity reasons ; a surface color is in the end a token
    public typealias SurfaceColor = MultipleColorModeSemanticTokens

    // MARK: Stored Properties

    let backgroundSurfaceColor: SurfaceColor
    let content: () -> Content

    // MARK: Initializer

    /// Create a view with background color applied on the `content` view.
    ///
    /// - Parameters:
    ///    - color: The color applied as background on the content view
    ///    - content: The content view builder
    public init(color: SurfaceColor, @ViewBuilder content: @escaping () -> Content) {
        backgroundSurfaceColor = color
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        content().modifier(OUDSColoredSurfaceModifier(backgroundSurfaceColor: backgroundSurfaceColor))
    }
}
