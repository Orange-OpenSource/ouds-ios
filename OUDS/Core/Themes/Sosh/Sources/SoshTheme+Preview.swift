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

#if DEBUG
import Foundation
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

extension View {

    /// Wraps `self` `View` inside an `OUDSThemeableView` applying the ``SoshTheme``
    /// so as to help tests with Xcode #Preview.
    ///
    /// ```swift
    ///     #Preview {
    ///        SampleView().soshPreview()
    ///     }
    /// ```
    ///
    /// - Note: Only available in DEBUG mode
    @ViewBuilder
    public func soshPreview() -> some View {
        if ProcessInfo.doesRunOnXcodePreview {
            OUDSThemeableView(theme: SoshTheme()) {
                self
            }
        } else {
            self
        }
    }
}
#endif
