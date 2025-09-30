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

import OUDSComponents
import OUDSFoundations
import SwiftUI
import UIKit

extension OUDSSwiftUIBrige {

    /// Creates a SwiftUI `OUDSFilterChip` with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip, should not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createFilterChip(icon: Image, text: String, selected: Bool = false, action: @escaping () -> Void) -> UIViewController {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSFilterChip(icon:text:selected:action)")
        let swiftUIFilterChip = OUDSFilterChip(icon: icon, text: text, selected: selected, action: action)
        return wrap(component: swiftUIFilterChip)
    }

    /// Creates a SwiftUI `OUDSFilterChip` with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action, should not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createFilterChip(icon: Image, accessibilityLabel: String, selected: Bool = false, action: @escaping () -> Void) -> UIViewController {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSFilterChip(icon:accessibilityLabel:selected:action)")
        let swiftUIFilterChip = OUDSFilterChip(icon: icon, accessibilityLabel: accessibilityLabel, selected: selected, action: action)
        return wrap(component: swiftUIFilterChip)
    }

    /// Creates a SwiftUI `OUDSFilterChip` with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display, must not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    @MainActor public static func createFilterChip(text: String, selected: Bool = false, action: @escaping () -> Void) -> UIViewController {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSFilterChip(text:selected:action)")
        let swiftUIFilterChip = OUDSFilterChip(text: text, selected: selected, action: action)
        return wrap(component: swiftUIFilterChip)
    }
}
