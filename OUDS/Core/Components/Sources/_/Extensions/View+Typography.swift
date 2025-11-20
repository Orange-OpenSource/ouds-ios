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

import OUDSThemesContract
import SwiftUI

// MARK: - View extensions for typography

extension View {

    /// Modifies the current `View` to apply a *display large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func displayLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.displayLarge))
    }

    /// Modifies the current `View` to apply a *display medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func displayMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.displayMedium))
    }

    /// Modifies the current `View` to apply a *display small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func displaySmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.displaySmall))
    }

    /// Modifies the current `View` to apply a *heading x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func headingXLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.headingXLarge))
    }

    /// Modifies the current `View` to apply a *heading large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func headingLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.headingLarge))
    }

    /// Modifies the current `View` to apply a *heading medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func headingMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.headingMedium))
    }

    /// Modifies the current `View` to apply a *heading small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func headingSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.headingSmall))
    }

    /// Modifies the current `View` to apply a *body default large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyDefaultLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyDefaultLarge))
    }

    /// Modifies the current `View` to apply a *body default medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyDefaultMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyDefaultMedium))
    }

    /// Modifies the current `View` to apply a *body default small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyDefaultSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyDefaultSmall))
    }

    /// Modifies the current `View` to apply a *body moderate large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyModerateLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyModerateLarge))
    }

    /// Modifies the current `View` to apply a *body moderate medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyModerateMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyModerateMedium))
    }

    /// Modifies the current `View` to apply a *body moderate small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyModerateSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyModerateSmall))
    }

    /// Modifies the current `View` to apply a *body strong large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyStrongLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyStrongLarge))
    }

    /// Modifies the current `View` to apply a *body strong medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyStrongMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyStrongMedium))
    }

    /// Modifies the current `View` to apply a *body strong small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func bodyStrongSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.bodyStrongSmall))
    }

    /// Modifies the current `View` to apply a *label default x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelDefaultXLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelDefaultXLarge))
    }

    /// Modifies the current `View` to apply a *label default large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelDefaultLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelDefaultLarge))
    }

    /// Modifies the current `View` to apply a *label default medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelDefaultMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelDefaultMedium))
    }

    /// Modifies the current `View` to apply a *label default small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelDefaultSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelDefaultSmall))
    }

    /// Modifies the current `View` to apply a *label moderate x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelModerateXLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelModerateXLarge))
    }

    /// Modifies the current `View` to apply a *label moderate large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelModerateLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelModerateLarge))
    }

    /// Modifies the current `View` to apply a *label moderate medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelModerateMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelModerateMedium))
    }

    /// Modifies the current `View` to apply a *label moderate small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelModerateSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelModerateSmall))
    }

    /// Modifies the current `View` to apply a *label strong x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelStrongXLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelStrongXLarge))
    }

    /// Modifies the current `View` to apply a *label strong large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelStrongLarge(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelStrongLarge))
    }

    /// Modifies the current `View` to apply a *label strong medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelStrongMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelStrongMedium))
    }

    /// Modifies the current `View` to apply a *label strong small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func labelStrongSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.labelStrongSmall))
    }

    /// Modifies the current `View` to apply a *code medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func codeMedium(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.codeMedium))
    }

    /// Modifies the current `View` to apply a *code small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable font semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func codeSmall(_ theme: OUDSTheme) -> some View {
        modifier(TypographyModifier(family: theme.family, font: theme.fonts.codeSmall))
    }
}
