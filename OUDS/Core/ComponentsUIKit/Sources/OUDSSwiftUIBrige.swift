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
import SwiftUI
import UIKit

// MARK: - Type aliases

/// OUDS UIKit is not managed with implementation from scratch, but a bridge exists
public typealias OUDSUIKit = OUDSSwiftUIBrige

// MARK: OUDS SwiftUI Bridge

/// Helps to wrap OUDS components written in SwiftUI for UIKit views
public enum OUDSSwiftUIBrige {

    // MARK: Properties

    /// The `OUDSTheme` is madnatory and must be used for components tuning
    private nonisolated(unsafe) static var theme: OUDSTheme!
    private nonisolated(unsafe) static var lowPowerModeObserver: OUDSLowPowerModeObserver!

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
            OL.warning("The theme is not assigned to OUDS SwiftUI Brige, call init(theme:) before using it!")
            return false
        }
        OL.debug("Everything is ok for OUDS SwiftUI Brige!")
        return true
    }

    // MARK: - View building

    /// Gives objects as environment values and wraps the given view inside a `UIHostingController`
    ///
    /// - Parameter view: The SwiftUI view (supposed to be OUDS component)
    /// - Returns: A `UIViewController` containing the given `view`
    @MainActor public static func wrap(component view: any View) -> UIViewController {
        checkPrerequisites()
        let viewWithEnvironment = view
            .environment(\._theme, OUDSSwiftUIBrige.theme)
            .environmentObject(OUDSSwiftUIBrige.lowPowerModeObserver)
        return UIHostingController(rootView: AnyView(viewWithEnvironment))
    }
}
