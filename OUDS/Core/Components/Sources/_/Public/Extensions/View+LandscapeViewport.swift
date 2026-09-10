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
import UIKit
#endif
import SwiftUI

extension View {

    /// Returns if the device is in landscape mode if the current OS is iOS / iPadOS.
    /// Otherwise returns always false.
    ///
    /// - Returns Bool: True if landscape, false in portrait
    public static func isInLandscapeViewport() -> Bool {
        #if os(iOS)
        let deviceOrientation = UIDevice.current.orientation
        if deviceOrientation.isValidInterfaceOrientation {
            return deviceOrientation.isLandscape
        }

        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first
        {
            return window.bounds.width > window.bounds.height
        }

        return UIScreen.main.bounds.width > UIScreen.main.bounds.height
        #else
        return false
        #endif
    }
}
