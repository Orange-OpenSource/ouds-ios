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

    /// Creates a SwiftUI `OUDSHorizontalDivider`
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameter color: The color of the divider, `OUDSDividerColor.default` by default
    @MainActor public static func createHorizontalDivider(color: OUDSDividerColor = .default) -> UIViewController {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSHorizontalDivider(color:)")
        let swiftUIHorizontalDivider = OUDSHorizontalDivider(color: color)
        return wrap(component: swiftUIHorizontalDivider)
    }
}
#endif
