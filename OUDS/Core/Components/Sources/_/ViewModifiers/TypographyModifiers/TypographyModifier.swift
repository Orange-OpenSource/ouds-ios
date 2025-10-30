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

import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/943)
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI
#if canImport(UIKit) // Conditional import and use of UIKit for documentation generation (see #628 #626)
import UIKit
#endif

// swiftlint:disable line_length

/// A `ViewModifier` which will make possible to get the horizontal and vertical classes as `@Environment` values
/// so as to define the viewport and use finaly the suitable `MultipleFontCompositeRawTokens`.
/// In fact dimensionswift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values which may be out of date.
/// In few words, contains the font elements to apply a defined typography depending to size classes and categories.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is dimensionsystem font_
    let family: FontFamilyRawToken?

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
        // isRegularMode: horizontalSizeClass == .regular || verticalSizeClass == .regular
    }

    /// Returns the `FontCompositeRawToken` to apply depending to the layour mode
    private var adaptiveFont: FontCompositeRawToken {
        isCompactMode ? font.compact : font.regular
    }

    #if canImport(UIKit)
    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `Font`
    private var adaptiveTypography: Font {
        if let family {
            // Can be a custom font load from side assets or another custom font available in the OS
            let composedFontFamily = kApplePostScriptFontNames[orKey: PSFNMK(family, adaptiveFont.weight.weight)]
            let customFont: Font = .custom(composedFontFamily, size: adaptiveFont.size)
            return customFont
        } else {
            // Apply the system font with weight, responsive to Dynamic Type
            return .system(size: scaledFontSize, weight: adaptiveFont.weight.weight, design: .default)
        }
    }

    /// Computes the line spacing value to apply on the typography.
    /// Difference between the line height token and line height of computed font to apply depending the the scaled font size.
    /// The line spacing token cannot be used as is.
    private var adaptiveLineHeight: CGFloat {
        adaptiveFont.lineHeight - UIFont.systemFont(ofSize: scaledFontSize).lineHeight
    }

    /// Adjusts the font size dynamically based on the user's accessibility settings
    /// using UIFontMetrics to scale the font size, ensuring Dynamic Type support
    private var scaledFontSize: CGFloat {
        UIFontMetrics.default.scaledValue(for: adaptiveFont.size)
    }

    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleFontCompositeRawTokens`.
    func body(content: Content) -> some View {
        // `tracking()` only available for iOS 16+
        // `minimumScaleFactor()` ensures text remains readable by allowing scaling down
        // `.onChange(of: sizeCategory) { _ in }` triggers view update when Dynamic Type size changes
        if #available(iOS 16.0, *), #available(tvOS 16.0, *) {
            content
                .font(adaptiveTypography)
                .lineSpacing(adaptiveLineHeight)
                .tracking(adaptiveFont.letterSpacing)
                .minimumScaleFactor(0.5)
                .onChange(of: sizeCategory) { _ in }
        } else {
            content
                .font(adaptiveTypography)
                .lineSpacing(adaptiveLineHeight)
                .minimumScaleFactor(0.5)
                .onChange(of: sizeCategory) { _ in }
        }
    }

    #elseif os(macOS)
    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `Font`
    private var adaptiveTypography: Font {
        if let family {
            // Can be a custom font load from side assets or another custom font available in the OS
            let composedFontFamily = kApplePostScriptFontNames[orKey: PSFNMK(family, adaptiveFont.weight.weight)]
            let customFont: Font = .custom(composedFontFamily, size: adaptiveFont.size)
            return customFont
        } else {
            // Apply the system font with weight, responsive to Dynamic Type
            return .system(size: scaledFontSize, weight: adaptiveFont.weight.weight, design: .default)
        }
    }

    /// Computes the line spacing value to apply on the typography.
    /// Difference between the line height token and line height of computed font to apply depending the the scaled font size.
    /// The line spacing token cannot be used as is.
    private var adaptiveLineHeight: CGFloat {
        let layoutManager = NSLayoutManager()
        let systemFont = NSFont.systemFont(ofSize: scaledFontSize)
        let systemLineHeight = layoutManager.defaultLineHeight(for: systemFont)
        return adaptiveFont.lineHeight - systemLineHeight
    }

    /// Adjusts the font size dynamically based on the user's accessibility settings
    /// using UIFontMetrics to scale the font size, ensuring Dynamic Type support
    private var scaledFontSize: CGFloat {
        adaptiveFont.size
    }

    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleFontCompositeRawTokens`.
    func body(content: Content) -> some View {
        // `tracking()` only available for iOS 16+
        // `minimumScaleFactor()` ensures text remains readable by allowing scaling down
        // `.onChange(of: sizeCategory) { _ in }` triggers view update when Dynamic Type size changes
        content
            .font(adaptiveTypography)
            .lineSpacing(adaptiveLineHeight)
            .tracking(adaptiveFont.letterSpacing)
            .minimumScaleFactor(0.5)
            .onChange(of: sizeCategory) { _, _ in }
    }
    #else
    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleFontCompositeRawTokens`.
    func body(content: Content) -> some View {
        // `tracking()` only available for iOS 16+
        // `minimumScaleFactor()` ensures text remains readable by allowing scaling down
        // `.onChange(of: sizeCategory) { _ in }` triggers view update when Dynamic Type size changes
        if #available(iOS 16.0, *) {
            content
                .tracking(adaptiveFont.letterSpacing)
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
