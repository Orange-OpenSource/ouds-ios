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

#if canImport(UIKit)
import OUDSComponents
import OUDSFoundations
import SwiftUI
import UIKit

extension OUDSUIKitBrige {

    /// Creates a SwiftUI `OUDSSuggestionChip` with text and icon.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createSuggestionChip(icon: Image,
                                                       text: String,
                                                       action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSSuggestionChip(text:icon:size:action)")
        let swiftUISuggestionChip = OUDSSuggestionChip(icon: icon, text: text, action: action)
        return wrap(component: swiftUISuggestionChip)
    }

    /// Creates a SwiftUI `OUDSSuggestionChip` with an icon only.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action, should not be empty
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createSuggestionChip(icon: Image,
                                                       accessibilityLabel: String,
                                                       action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSSuggestionChip(icon:accessibilityLabel:action)")
        let swiftUISuggestionChip = OUDSSuggestionChip(icon: icon, accessibilityLabel: accessibilityLabel, action: action)
        return wrap(component: swiftUISuggestionChip)
    }

    /// Creates a chip with a text only.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - text: The text of the button to display,  must not be empty
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createSuggestionChip(text: String,
                                                       action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSSuggestionChip(text:action)")
        let swiftUISuggestionChip = OUDSSuggestionChip(text: text, action: action)
        return wrap(component: swiftUISuggestionChip)
    }
}
#endif
