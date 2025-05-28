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

// Conditional import and use of UIKit for documentation generation (see #628 #626)
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

// swiftlint:disable line_length

/// A `ViewModifier` which will make possible to get the horizontal and vertical classes as `@Environment` values
/// so as to define the viewport and use finaly the suitable `MultipleFontCompositeRawTokens`.
/// In fact _Swift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values which may be out of date.
/// In few words, contains the font elements to apply a defined typography depending to size classes and categories.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is _system font_
    let fontFamily: FontFamilyRawToken?

    /// The typography to apply for *compact* or *regular* modes, i.e. font tokens
    let font: MultipleFontCompositeRawTokens

    /// To get programatically and on the fly the horizontal layout size
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    /// To get programatically and on the fly the vertical layout size
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    /// Environment variable to observe Dynamic Type changes in accessibility settings
    @Environment(\.sizeCategory) private var sizeCategory

    /// Says wether or not the layout is in *compact mode*
    private var isCompactMode: Bool {
        horizontalSizeClass == .compact || verticalSizeClass == .compact
    }

    /// Says wether or not the layout is in *regular mode*
    private var isRegularMode: Bool {
        horizontalSizeClass == .regular || verticalSizeClass == .regular
    }

    /// Returns the `FontCompositeRawToken` to apply depending to the layour mode
    private var adaptiveFontToken: FontCompositeRawToken {
        isCompactMode ? font.compact : font.regular
    }

    #if canImport(UIKit)
    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `Font`
    private var adaptiveFont: Font {
        if let fontFamilyName = fontFamily {
            let composedFontFamily = fontFamilyName.compose(withFont: "\(adaptiveFontToken.weight.fontWeight)")
            let customFont: Font = .custom(composedFontFamily, size: adaptiveFontToken.size)
            return customFont
        } else {
            // Apply the system font with weight, responsive to Dynamic Type
            return .system(size: scaledFontSize, weight: adaptiveFontToken.weight.fontWeight, design: .default)
        }
    }

    /// Adjusts the lignt height dynamically based on the user's accessibility settings
    /// using UIFontMetrics to scale the line height, ensuring Dynamic Type support
    private var scaledLineHeight: CGFloat {
        UIFontMetrics.default.scaledValue(for: adaptiveFontToken.lineHeight)
    }

    /// Adjusts the font size dynamically based on the user's accessibility settings
    /// using UIFontMetrics to scale the font size, ensuring Dynamic Type support
    private var scaledFontSize: CGFloat {
        UIFontMetrics.default.scaledValue(for: adaptiveFontToken.size)
    }

    /// Computes the line spacing value to apply on the typography.
    /// Difference between the token line height and the font size (both scaled according to Dynamic Type)
    private var lineSpacing: CGFloat {
        scaledLineHeight - scaledFontSize
    }

    /// Computes the extra padding should be added at top and bottom to conform the line height.
    private var padding: CGFloat {
        lineSpacing / 2
    }

    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleFontCompositeRawTokens`.
    func body(content: Content) -> some View {
        // `kerning()` only available for iOS 16+
        // `lineSpacing` to conform to the line height token when text is on sevral lines
        // `padding` to conform to the line height height token when text is in one line
        // `.onChange(of: sizeCategory) { _ in }` triggers view update when Dynamic Type size changes
        if #available(iOS 16.0, *) {
            content
                .font(adaptiveFont)
                .kerning(adaptiveFontToken.letterSpacing * UIScreen.main.scale)
                .lineSpacing(lineSpacing)
                .padding(.vertical, padding)
                .onChange(of: sizeCategory) { _ in }
        } else {
            content
                .font(adaptiveFont)
                .lineSpacing(lineSpacing)
                .padding(.vertical, padding)
                .onChange(of: sizeCategory) { _ in }
        }
    }
    #else
    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleFontCompositeRawTokens`.
    func body(content: Content) -> some View {
        // `kerning()` only available for iOS 16+
        // `minimumScaleFactor()` ensures text remains readable by allowing scaling down
        // `.onChange(of: sizeCategory) { _ in }` triggers view update when Dynamic Type size changes
        if #available(iOS 16.0, *) {
            content
                .kerning(adaptiveFontToken.letterSpacing * UIScreen.main.scale)
                .minimumScaleFactor(0.5)
                .onChange(of: sizeCategory) { _ in }
        } else {
            content
                .minimumScaleFactor(0.5)
                .onChange(of: sizeCategory) { _ in }
        }
    }
    #endif
}
// swiftlint:enable line_length
