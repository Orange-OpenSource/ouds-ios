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
/// so as to define the viewport and use finaly the suitable `MultipleTypographyTokens`.
/// In fact _Swift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values
/// which may be out of date.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is _system font_
    let customFontFamily: TypographyFontFamilyRawToken?
    /// The typography to apply for *compact* or *regular* modes
    let typography: MultipleTypographyTokens

    /// To get programatically and on the fly the horizontal layout size
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    /// To get programatically and on the fly the vertical layout size
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    /// Says wether or not the layout is in *compact mode*
    private var isCompactMode: Bool {
        horizontalSizeClass == .compact || verticalSizeClass == .compact
    }

    /// Says wether or not the layout is in *regular mode*
    private var isRegularMode: Bool {
        horizontalSizeClass == .regular || verticalSizeClass == .regular
    }

    /// Returns the `TypographyCompositeRawToken` to apply depending to the layour mode
    private var adaptiveTypography: TypographyCompositeRawToken {
        isCompactMode ? typography.compact : typography.regular
    }

    /// According to the current `OUDSTheme` and if a custom font is applied or not, returns the suitable `View`
    private func adaptiveFont() -> Font {
        if let fontFamilyName = customFontFamily {
            let composedFontFamily = fontFamilyName.compose(withFont: "\(adaptiveTypography.weight.fontWeight)")
            let customFont: Font = .custom(composedFontFamily, size: adaptiveTypography.size)
            return customFont
        } else {
            return .system(size: adaptiveTypography.size, weight: adaptiveTypography.weight.fontWeight)
        }
    }

    // TODO: #51 - Call lineSpacing() and tracking() functions when values usable in TypographyRawTokens
    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight* and *font size*
    /// depending to the current `MultipleTypographyTokens`.
    /// **Does not apply _letter spacing_ nor _line height_ because raw tokens values are not usable!**
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *) {
            content
                .font(adaptiveFont())
//                .lineSpacing(adaptiveTypography.lineHeight)
//                .tracking(adaptiveTypography.letterSpacing)
        } else { // tracking() and kerning() only available for iOS 16+
            content
                .font(adaptiveFont())
//                .lineSpacing(adaptiveTypography.lineHeight)
        }
    }
}
// swiftlint:enable line_length
