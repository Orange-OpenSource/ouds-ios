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

import SwiftUI

/// A `ViewModifier` adding the `isToggle` trait to the target view
/// if  and only if the operating system is at least**iOS 17.0**.
struct IsToggleModifier: ViewModifier {

    func body(content: Content) -> some View {
        #if canImport(UIKit) // Remember: doc is generated with non-iOS aware tool...
        if #available(iOS 17.0, *) {
            content.accessibilityAddTraits(.isToggle)
        } else {
            content
        }
        #else
        content
        #endif
    }
}
