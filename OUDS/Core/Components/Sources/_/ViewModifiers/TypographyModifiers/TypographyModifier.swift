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
/// so as to define the viewport and use finaly the suitable `MultipleFontCompositeSemanticToken`.
/// In fact dimensionswift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values which may be out of date.
/// In few words, contains the font elements to apply a defined typography depending to size classes and categories.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is dimensionsystem font_
    let family: FontFamilyRawToken?

    /// The typography to apply for *compact* or *regular* modes, i.e. font tokens
    let font: MultipleFontCompositeSemanticToken

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

    /// Returns the `FontCompositeSemanticToken` to apply depending to the layout mode
    private var adaptiveFontToken: FontCompositeSemanticToken {
        isCompactMode ? font.compact : font.regular
    }

    #if os(macOS)
    private typealias NativeFont = NSFont
    #else
    private typealias NativeFont = UIFont
    #endif

    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `NativeFont`
    /// The `UIFont` is preferred to the `Font` because the `lineHeight`to compute the `lineSpacing` is needed.
    /// In addition, SwiftUI line height dedicated API stack text to the top, and OUDS requires to have text centered.
    private var adaptativeFont: NativeFont {
        if let family {
            // Can be a custom font loaded from side assets or another custom font available in the OS
            let composedFontFamily = kApplePostScriptFontNames[orKey: PSFNMK(family, Font.Weight(weight: adaptiveFontToken.weight))]
            let customFont = NativeFont(name: composedFontFamily, size: scaledFontSize)
            if let customFont {
                return customFont
            }
        }

        // If no family or not loaded
        // Apply the system font with weight, responsive to Dynamic Type
        return NativeFont.systemFont(ofSize: scaledFontSize, weight: Font.Weight(weight: adaptiveFontToken.weight).nativeFontWeight)
    }

    /// Adjusts the font size dynamically based on the user's accessibility settings
    /// using `UIFontMetrics` for non-macOS OS to scale the font size, ensuring Dynamic Type support
    private var scaledFontSize: CGFloat {
        #if os(macOS)
        adaptiveFontToken.size
        #else
        UIFontMetrics.default.scaledValue(for: adaptiveFontToken.size)
        #endif
    }

    /// Computes the line height value scaled according to Dynamic Type (if not macOS)
    private var scaledLineHeight: CGFloat {
        #if os(macOS)
        adaptiveFontToken.lineHeight
        #else
        UIFontMetrics.default.scaledValue(for: adaptiveFontToken.lineHeight)
        #endif
    }

    /// Computes the font line height depending to the `adaptiveFont`
    private var fontLineHeight: CGFloat {
        #if os(macOS)
        NSLayoutManager().defaultLineHeight(for: adaptativeFont)
        #else
        adaptativeFont.lineHeight
        #endif
    }

    /// Computes the line spacing value to apply on the typography.
    /// The returned value is the difference between the token line height scaled according to Dynamic Type and the height
    /// of the font used.
    private var lineSpacing: CGFloat {
        scaledLineHeight - fontLineHeight
    }

    /// Computes the extra padding which should be added at top and bottom to conform the line height.
    private var padding: CGFloat {
        lineSpacing / 2
    }

    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*)
    /// depending to the current `MultipleFontCompositeSemanticToken`.
    func body(content: Content) -> some View {
        Group {
            // `kerning()` and `fontWeight, only available for iOS 16+
            if #available(iOS 16.0, macOS 13.0, tvOS 16.0, visionOS 16.0, watchOS 9.0, *) {
                content
                    .font(Font(adaptativeFont))
                    .fontWeight(Font.Weight(weight: adaptiveFontToken.weight))
                    .kerning(adaptiveFontToken.letterSpacing)
                    .lineSpacing(lineSpacing)
                    .padding(.vertical, padding)
            } else {
                content
                    .font(Font(adaptativeFont))
                    .lineSpacing(lineSpacing)
                    .padding(.vertical, padding)
            }
        }
        .modifier(OnChangeSizeCategoryModifier(sizeCategory: sizeCategory))
    }

    // MARK: - On Change Size Category Modifier

    private struct OnChangeSizeCategoryModifier: ViewModifier {
        let sizeCategory: ContentSizeCategory

        func body(content: Content) -> some View {
            #if os(visionOS) || os(watchOS)
            content.onChange(of: sizeCategory) { _, _ in }
            #elseif os(macOS)
            if #available(macOS 14.0, *) {
                content.onChange(of: sizeCategory) { _, _ in }
            } else {
                content.onChange(of: sizeCategory) { _ in }
            }
            #else
            content.onChange(of: sizeCategory) { _ in }
            #endif
        }
    }
}

// swiftlint:enable line_length
