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

import OUDSFoundations
import SwiftUI

/// `ViewModifier` to manage an edge case about Liquid Glass configuration of Apple OS and Xcode versions.
///
/// If an app is compiled with Xcode 27 for iOS 27, Liquid Glass is forced by the system and considered as enabled by OUDS.
/// If an app is compiled with Xcode 26 for iOS 26, the *UIDesignRequiresCompatibility* flag is read and OUDS considers wether or not Liquid Glass is enabled.
/// If an app is compiled with Xcode 26 for iOS 18 and lower, Liquid Glass is considered as unavailable, disabled.
///
/// The edge case is when the OS version is 27, the flag *UIDesignRequiresCompatibility* stils exists but the app is compiled with Xcode 26.
/// This case is extreme: the system does not force Liquid Glass, the flag is here, and OUDS cannot only rely on the OS version.
/// Thus, this ``OUDSLegacyTabBarModifier``  will define an environment value sayin, any legacy layout things (appearances, selector, divider) must be displayed.
///
/// **You must use this `ViewModifier` with care, and oly if you are using Xcode 26 and  _UIDesignRequiresCompatibility_ to YES **.
/// Prefer build with Xcode 27 without the *UIDesignRequiresCompatibility*  flag.
///
/// ```swift
///   OUDSTabBar(selectedTab: ..., count: ...) { ... )
///     .modifier(OUDSLegacyTabBarModifier())
/// ```
///
/// - Since: 2.2.0
public struct OUDSLegacyTabBarModifier: ViewModifier {

    /// Instanciates the `OUDSLegacyTabBarModifier` and displays error messages in the standard output
    public init() {
        OL.error("You should not force the legacy layout of the tab bar; please embrace Liquid Glass!")
        OL.error("You should not use this View Modifier with Xcode 27 and UIDesignRequiresCompatibility set to YES")
    }

    /// Defines environement variable to precise the legacy tab bar must be forced
    public func body(content: Content) -> some View {
        content
            .environment(\.forceOUDSLegacyTabBar, true)
    }
}

extension EnvironmentValues {

    /// A flag indicating the OUDS tab bar must hev the legacy layout.
    /// Very experimental.
    @Entry public var forceOUDSLegacyTabBar: Bool = false
}
