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
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// MARK: - Native fonts

#if os(macOS)
/// For OUDS a `NativeFont` on macOS is a `NSFont`
public typealias NativeFont = NSFont
#else
/// For OUDS a `NativeFont` on iOS is a `UIFont`
public typealias NativeFont = UIFont
#endif

// MARK: - Extension of Font

extension Font {

    /// Generates a `NativeFont` object based on tokens, i.e. a `UIFont` for UIKit apps or a `NSFont` for AppKit apps.
    ///
    /// ```swift
    ///     @Environment(\.theme) private var theme
    ///     @Environment(\.verticalSizeClass) private var verticalSizeClass
    ///     @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    ///
    ///     let font = Font.makeFont(
    ///                 family: theme.fontFamily,
    ///                 from: theme.fonts.labelModerateLarge,
    ///                 isCompact: horizontalSizeClass == .compact || verticalSizeClass == .compact)
    ///
    ///     // To SwiftUI font
    ///     let swiftUiFont = Font(font)
    /// ```
    ///
    /// You may need to use instead `View/font(:MultipleFontCompositeSemanticToken)` `ViewModifier` so as to apply computed lines and letters
    /// heights and spacings, e.g:
    ///
    /// ```swift
    ///     SomeView().font(theme.fonts.labelModerateLarge)
    /// ```
    ///
    /// - Parameters:
    ///   - family: Token of font family to apply
    ///   - fontToken: The token of font to apply
    ///   - isCompact: If *true*, use compact mode, otherwise use regular
    /// - Returns: The font object created from font tokens
    public static func makeFont(
        family: FontFamilyRawToken?,
        from fontToken: MultipleFontCompositeSemanticToken,
        isCompact: Bool) -> NativeFont
    {
        let adaptiveFontToken = isCompact ? fontToken.compact : fontToken.regular

        // Adjusts the font size dynamically based on the user's accessibility settings
        // using `UIFontMetrics` for non-macOS OS to scale the font size, ensuring Dynamic Type support
        #if canImport(UIKit)
        let scaledFontSize = UIFontMetrics.default.scaledValue(for: adaptiveFontToken.size)
        #else
        let scaledFontSize = adaptiveFontToken.size
        #endif

        if let family {
            // Can be a custom font loaded from side assets or another custom font available in the OS
            let composedFontFamily = kApplePostScriptFontNames[orKey: PSFNMK(family, Font.Weight(weight: adaptiveFontToken.weight))]
            if let customFont = NativeFont(name: composedFontFamily, size: scaledFontSize) {
                return customFont
            }
        }

        // If no family or not loaded
        // Apply the system font with weight, responsive to Dynamic Type
        return NativeFont.systemFont(ofSize: scaledFontSize, weight: Font.Weight(weight: adaptiveFontToken.weight).nativeFontWeight)
    }
}

#if canImport(UIKit)

// MARK: - Extension of UIFont

extension UIFont {

    /// From a `UIFont` of UIKit, creates a SwiftUI `Font` object
    ///
    /// Note in some cases the `UIFont` is preferred to the `Font` because the *line height* to compute the *line spacing* is needed.
    /// In addition, SwiftUI *line height* dedicated API stacks text to the top, and OUDS requires to have text centered.
    ///
    /// You may need to use instead `View/font(:MultipleFontCompositeSemanticToken)` so as to apply computed lines and letters
    /// heights and spacings.
    public var font: Font {
        Font(self)
    }
}
#endif
