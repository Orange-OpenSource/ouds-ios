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

import OUDS
import OUDSFoundations
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// swiftlint:disable line_length
/// A `ViewModifier` which will make possible to get the horizontal and vertical classes as `@Environment` values
/// so as to define the viewport and use finaly the suitable `MultipleTypographyCompositeRawTokens`.
/// In fact _Swift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values
/// which may be out of date.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is _system font_
    let customFontFamily: TypographyFontFamilyRawToken?
    /// The typography to apply for *compact* or *regular* modes
    let typography: MultipleTypographyCompositeRawTokens

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
    private var adaptiveTypography: FontCompositeRawToken {
        isCompactMode ? typography.compact : typography.regular
    }

    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `Font`
    private func adaptiveFont() -> Font {
        // Retrieves the base font size from the adaptive typography settings
        let fontSize = adaptiveTypography.size
        // Adjusts the font size dynamically based on the user's accessibility settings
        // using UIFontMetrics to scale the font size, ensuring Dynamic Type support
        let scaledFontSize = UIFontMetrics.default.scaledValue(for: fontSize)

        if let fontFamilyName = customFontFamily {
            let composedFontFamily = fontFamilyName.compose(withFont: "\(adaptiveTypography.weight.fontWeight)")
            let customFont: Font = .custom(composedFontFamily, size: adaptiveTypography.size)
            return customFont
        } else {
            // Apply the system font with weight, responsive to Dynamic Type
            return .system(size: scaledFontSize, weight: adaptiveTypography.weight.fontWeight, design: .default)
        }
    }

    // TODO: #51 - Call lineSpacing() and tracking() functions when values usable in FontRawTokens
    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleTypographyCompositeRawTokens`.
    /// **Does not apply _letter spacing_ nor _line height_ because raw tokens values are not usable!**
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .font(adaptiveFont())
                .minimumScaleFactor(0.5) /// Ensures text remains readable by allowing scaling down
                .onChange(of: sizeCategory) { _ in } /// Triggers view update when Dynamic Type size changes
//                .lineSpacing(adaptiveTypography.lineHeight)
//                .tracking(adaptiveTypography.letterSpacing)
        } else { // tracking() and kerning() only available for iOS 16+
            content
                .font(adaptiveFont())
                .minimumScaleFactor(0.5) /// Ensures text remains readable by allowing scaling down
                .onChange(of: sizeCategory) { _ in } /// Triggers view update when Dynamic Type size changes
//                .lineSpacing(adaptiveTypography.lineHeight)
        }
    }
}
// swiftlint:enable line_length
