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
import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import OUDSThemesContract // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import SwiftUI
import UIKit

// MARK: - Type aliases

/// OUDSThemesContract UIKit is not managed with implementation from scratch, but a bridge exists
public typealias OUDSUIKit = OUDSUIKitBrige

/// An component interfaction is defined by a target (like a `UIViewController`), a triggered action (e.g. `Selector`) and an event (e.g. *value changed*)
public typealias ComponentInteraction = (target: AnyObject, action: Selector, events: UIControl.Event)

// MARK: OUDSThemesContract SwiftUI Bridge

/// Helps to wrap OUDSThemesContract components written in SwiftUI for UIKit views.
/// Contains environement objects like themes or observers.
/// Provides utilities to to get OUDSThemesContract SwiftUI components wrapper in UIKit controllers.
///
/// **This is still an experimental feature and it is recommended to use SwiftUI components**
///
/// - Since: 0.20.0
public enum OUDSUIKitBrige {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// The `OUDSTheme` is mandatory and must be used for components tuning
    nonisolated(unsafe) static var theme: OUDSTheme!
    /// The `OUDSLowPowerModeObserver` is mandatory for, for example, buttons with animations to be avoided if low energy mode
    nonisolated(unsafe) static var lowPowerModeObserver: OUDSLowPowerModeObserver!
    // swiftlint:enable implicitly_unwrapped_optional

    // MARK: Init

    /// Saves for the `SwiftUIBridgeBuilder` the theme to use
    ///
    /// - Parameter theme: The theme to apply to the components
    @MainActor public static func `init`(theme: OUDSTheme) {
        Self.theme = theme
        lowPowerModeObserver = OUDSLowPowerModeObserver()
    }

    /// Checks if all prerequisites are ready to use the bridge.
    /// Displays a debug message if everything is ok, or warning messages if not.
    ///
    /// - Returns: True if everyting is ok, false otherwise
    @discardableResult public static func checkPrerequisites() -> Bool {
        guard theme != nil else {
            OL.warning("The theme is not assigned to OUDSThemesContract SwiftUI Brige, call init(theme:) before using it!")
            return false
        }
        OL.debug("Everything is ok for OUDSThemesContract SwiftUI Brige!")
        return true
    }

    // MARK: - View building

    /// Gives objects as environment values and wraps the given view inside a `UIHostingController`
    ///
    /// - Parameter view: The SwiftUI view (supposed to be OUDSThemesContract component)
    /// - Returns: A `UIViewController` containing the given `view`
    @MainActor public static func wrap(component view: any View) -> UIViewController {
        checkPrerequisites()
        let viewWithEnvironment = view
            .environment(\._theme, OUDSUIKitBrige.theme)
            .environmentObject(OUDSUIKitBrige.lowPowerModeObserver)
        return UIHostingController(rootView: AnyView(viewWithEnvironment))
    }
}
#endif
