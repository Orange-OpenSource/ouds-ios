//
// Software Name: OUDSThemesContract iOS
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
import OUDSComponents // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import SwiftUI
import UIKit

extension OUDSUIKitBrige {

    /// Creates a `SwiftUI` `OUDSLink` with text and icon.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: Icon displayed in the link
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    @MainActor public static func createLink(text: String,
                                             icon: Image? = nil,
                                             size: OUDSLink.Size = .default,
                                             action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSLink(text:icon:size:action:)")
        let swiftUILink = OUDSLink(text: text, icon: icon, size: size, action: action)
        return wrap(component: swiftUILink)
    }

    /// Creates a SwiftUI `OUDSLink` with a "before `Indicator`" (`OUDSLink.Indicator.back`) or "after  indicator" (`OUDSLink.Indicator.next`) beside the text.
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - indicator: Indicator displayed in the link
    ///   When `OUDSLink.Indicator.back`, the indicator is displayed before the text
    ///   When `OudsLink.Indicator.next`, the indicator is displayed after the text
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    @MainActor public static func createLink(text: String,
                                             indicator: OUDSLink.Indicator,
                                             size: OUDSLink.Size = .default,
                                             action: @escaping () -> Void) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSLink(text:indicator:size:action:)")
        let swiftUILink = OUDSLink(text: text, indicator: indicator, size: size, action: action)
        return wrap(component: swiftUILink)
    }
}
#endif
