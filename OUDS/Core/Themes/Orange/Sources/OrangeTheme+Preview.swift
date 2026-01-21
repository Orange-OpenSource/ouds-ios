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

import Foundation
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

#if DEBUG
extension View {

    /// Wraps `self` `View` inside an `OUDSThemeableView` applying the `OrangeTheme`
    /// so as to help tests with Xcode #Preview.
    ///
    /// ```swift
    ///     #Preview {
    ///        SampleView().orangePreview()
    ///     }
    /// ```
    ///
    /// - Note: Only available in DEBUG mode
    @ViewBuilder
    public func orangePreview() -> some View {
        if ProcessInfo.doesRunOnXcodePreview {
            OUDSThemeableView(theme: OrangeTheme()) {
                self
            }
        } else {
            self
        }
    }
}
#endif
