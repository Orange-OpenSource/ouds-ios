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

    /// Create a SwiftUI `OUDSButton` with text and icon.
    ///
    /// - Parameters:
    ///    - iconName: The name of an image to load
    ///    - text: The text to display in the button
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    @MainActor public static func createButton(iconName: String,
                                               text: String,
                                               appearance: OUDSButton.Appearance = .default,
                                               style: OUDSButton.Style = .default,
                                               action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSButton(icon:text:appearance:style:action)")
        let swiftUIButton = OUDSButton(icon: Image(iconName),
                                       text: text,
                                       appearance: appearance,
                                       style: style,
                                       action: action)
        return wrap(component: swiftUIButton)
    }

    /// Create a SwiftUI `OUDSButton` with an icon only
    ///
    /// - Parameters:
    ///    - iconName: The name of an image to load
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the button action
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    @MainActor public static func createButton(iconName: String,
                                               accessibilityLabel: String,
                                               appearance: OUDSButton.Appearance = .default,
                                               style: OUDSButton.Style = .default,
                                               action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSButton(icon:accessibilityLabel:appearance:style:action)")
        let swiftUIButton = OUDSButton(icon: Image(iconName),
                                       accessibilityLabel: accessibilityLabel,
                                       appearance: appearance,
                                       style: style,
                                       action: action)
        return wrap(component: swiftUIButton)
    }

    /// Create a SwiftUI `OUDSButton` with a text only
    ///
    /// - Parameters:
    ///    - iconName: The name of an image to load
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the button action
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - action: The action to perform when the user triggers the button
    @MainActor public static func createButton(text: String,
                                               appearance: OUDSButton.Appearance = .default,
                                               style: OUDSButton.Style = .default,
                                               action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSButton(text:appearance:style:action)")
        let swiftUIButton = OUDSButton(text: text,
                                       appearance: appearance,
                                       style: style,
                                       action: action)
        return wrap(component: swiftUIButton)
    }
}
