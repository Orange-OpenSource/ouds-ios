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
import OUDS
import SwiftUI

// MARK: - View extensions for typography

extension View {

    /// Modifies the current `View` to apply a *display large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeDisplayLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeDisplayLarge))
    }

    /// Modifies the current `View` to apply a *display medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeDisplayMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeDisplayMedium))
    }

    /// Modifies the current `View` to apply a *display small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeDisplaySmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeDisplaySmall))
    }

    /// Modifies the current `View` to apply a *heading x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeHeadingXLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeHeadingXLarge))
    }

    /// Modifies the current `View` to apply a *heading large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeHeadingLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeHeadingLarge))
    }

    /// Modifies the current `View` to apply a *heading medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeHeadingMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeHeadingMedium))
    }

    /// Modifies the current `View` to apply a *heading small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeHeadingSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeHeadingSmall))
    }

    /// Modifies the current `View` to apply a *body default large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyDefaultLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultLarge))
    }

    /// Modifies the current `View` to apply a *body default medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyDefaultMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultMedium))
    }

    /// Modifies the current `View` to apply a *body default small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyDefaultSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultSmall))
    }

    /// Modifies the current `View` to apply a *body strong large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyStrongLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyStrongLarge))
    }

    /// Modifies the current `View` to apply a *body strong medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyStrongMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyStrongMedium))
    }

    /// Modifies the current `View` to apply a *body strong small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeBodyStrongSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyStrongSmall))
    }

    /// Modifies the current `View` to apply a *label default x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelDefaultXLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeLabelDefaultXLarge))
    }

    /// Modifies the current `View` to apply a *label default large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelDefaultLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultLarge))
    }

    /// Modifies the current `View` to apply a *label default medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelDefaultMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultMedium))
    }

    /// Modifies the current `View` to apply a *label default small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelDefaultSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeBodyDefaultSmall))
    }

    /// Modifies the current `View` to apply a *label strong x large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelStrongXLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeLabelStrongXLarge))
    }

    /// Modifies the current `View` to apply a *label strong large* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelStrongLarge(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeLabelStrongLarge))
    }

    /// Modifies the current `View` to apply a *label strong medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelStrongMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeLabelStrongMedium))
    }

    /// Modifies the current `View` to apply a *label strong small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelStrongSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeLabelStrongSmall))
    }

    /// Modifies the current `View` to apply a *code medium* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelCodeMedium(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeCodeMedium))
    }

    /// Modifies the current `View` to apply a *code small* typography.
    /// The current `OUDSTheme` must be given in parameter because `@Environment` property cannot be accessed through an extension or inside a method.
    /// - Parameter theme: The current `OUDSTheme` to use to load the current font family and the suitable typography semantic token.
    /// - Returns some View: The current `View` but with new typography applied
    public func typeLabelCodeSmall(_ theme: OUDSTheme) -> some View {
        self.modifier(TypographyModifier(customFontFamily: theme.customFontFamily, typography: theme.typeCodeSmall))
    }
}
