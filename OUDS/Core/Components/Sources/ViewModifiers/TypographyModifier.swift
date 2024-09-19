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
import OUDSFoundations
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

// swiftlint:disable line_length
/// A `ViewModifier` which will make possible to get the horizontal and vertical classes as `@Environment` values
/// so as to define the viewport and use finaly the suitable `TypographyCompositeSemanticToken`.
/// In fact _Swift extension_ does not allow to have such stored properties, and we don't want to use *UIKit* `UIScreen.main.traitCollection` to get values
/// which may be out of date.
/// For more details about layouts, see [the Apple documentation about devices dimensions](https://developer.apple.com/design/human-interface-guidelines/layout#iOS-iPadOS-device-size-classes)
struct TypographyModifier: ViewModifier {

    /// The name of a possible custom font family, or `nil` if the font is use is _system font_
    let customFontFamily: TypographyFontFamilyRawToken?
    /// The typography to apply for *compact* or *regular* modes
    let typography: TypographyCompositeSemanticToken

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
            let composedFontFamily = fontFamilyName.compose(withFont: adaptiveTypography.weight)
            let customFont: Font = .custom(composedFontFamily, size: adaptiveTypography.size)
            return customFont
        } else {
            return .system(size: adaptiveTypography.size, weight: adaptiveTypography.weight.fontWeight)
        }
    }

    /// Applies to the `Content` the *adaptive font* (i.e. *font family*, *font weight*, *font size* and the *line height*
    /// depending to the current `TypographyCompositeSemanticToken`
    func body(content: Content) -> some View {
        content
            .font(adaptiveFont())
            .lineSpacing(adaptiveTypography.lineHeight)
            // .tracking() for letter spacing
    }
}
// swiftlint:enable line_length
