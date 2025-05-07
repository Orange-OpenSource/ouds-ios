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

// MARK: - App

@main
struct DesignToolbox: App {

    @UIApplicationDelegateAdaptor(DesignToolboxAppDelegate.self) private var appDelegate
    @StateObject private var themeProvider = ThemeProvider()

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: themeProvider.currentTheme) {
                MainView().environmentObject(themeProvider)
            }
        }
    }
}

// MARK: - App Delegate

// swiftlint:disable discouraged_optional_collection
private final class DesignToolboxAppDelegate: NSObject, UIApplicationDelegate {

    deinit { }

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
#if DEBUG
        OUDSWCAG21Ratios.oudsDebugWCAG21Colors = true
#else
        OUDSWCAG21Ratios.oudsDebugWCAG21Colors = false
#endif
        return true
    }
}
// swiftlint:enable discouraged_optional_collection
