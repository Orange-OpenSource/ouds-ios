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

    /// Creates a SwiftUI `OUDSHorizontalDivider`
    ///
    /// - Parameter color: The color of the divider, `OUDSDividerColor.default` by default
    @MainActor public static func createHorizontalDivider(color: OUDSDividerColor = .default) -> UIViewController {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSHorizontalDivider(color:)")
        let swiftUIHorizontalDivider = OUDSHorizontalDivider(color: color)
        return wrap(component: swiftUIHorizontalDivider)
    }
}
