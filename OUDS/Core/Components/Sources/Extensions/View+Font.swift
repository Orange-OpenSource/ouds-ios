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

import OUDSTokensSemantic
import SwiftUI

extension View {

    /// Applies a `CustomFontModifier` on the current `View` so as to add a specific `Font`.
    /// - Parameters:
    ///    - familyName: The font family name to load later (e.g. "Luciole")
    ///    - token: The font token to use to get useful values for `compact` or `regular` mode, to apply the typography needed
    /// - Returns: The `View` with the custom font applied
    func customFont(familyName: String, font token: MultipleFontCompositeRawTokens) -> some View {
        self.modifier(CustomFontModifier(token: token, fontFamilyName: familyName))
    }

    /// Applies a `FontModifier` to use the system font on the current `View` with a specific token
    /// - Parameter token: The font token to use to get useful values for `compact` or `regular` mode, to apply the typography needed
    /// - Returns: The `View` with the custom font applied
    func systemFont(_ token: MultipleFontCompositeRawTokens) -> some View {
        self.modifier(FontModifier(token: token))
    }
}
