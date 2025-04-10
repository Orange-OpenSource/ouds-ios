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

/// `ViewModifier` which helps to apply a predefined color mode on a view.
/// This mode is based on ``OUDSColoredSurface.SurfaceColor`` and defines which tyê of color scheme
/// and monochrome must be considered.
public struct OUDSColoredSurfaceModifier: ViewModifier {

    // MARK: - Stored properties

    let backgroundSurfaceColor: OUDSColoredSurface.SurfaceColor
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // MARK: - Body

    public func body(content: Content) -> some View {
        content
            .background(useColorToken.color(for: colorScheme))
            .environment(\.oudsUseMonochrome, useMonochrome)
            .environment(\.oudsOnColoredSurface, true)
            .environment(\.colorScheme, useColorScheme)
    }

    // MARK: - Computed properties

    private var useColorToken: MultipleColorSemanticTokens {
        theme.colorModes.toColor(from: backgroundSurfaceColor)
    }

    private var useColorScheme: ColorScheme {
        theme.colorModes.useColorScheme(for: backgroundSurfaceColor, colorScheme)
    }

    private var useMonochrome: Bool {
        theme.colorModes.isMonochrome(mode: backgroundSurfaceColor)
    }
}
