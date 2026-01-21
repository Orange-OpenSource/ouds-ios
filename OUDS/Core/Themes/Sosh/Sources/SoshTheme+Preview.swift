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

extension View {

    /// Wraps `self` `View` inside an `OUDSThemeableView` applying the ``SoshTheme``.
    /// This helper should be used in two cases:
    /// - to debug a `View` in Xcode `#Preview` macro
    /// - to let end-users testing on their side in `#Preview` macro your `View` based on OUDS.
    ///
    /// ```swift
    ///     // In this case, apply the theme on the preview
    ///     #Preview {
    ///        SampleView().soshPreview()
    ///     }
    /// ```
    ///
    /// ```swift
    ///     // In this case, you defined a `View` you provide to outside developers who use `#Preview` macro
    ///     // In your side:
    ///     struct YourView(): View {
    ///         var body: some View {
    ///            yourContentView.soshPreview()
    ///         }
    ///     }
    ///
    ///     // In their side:
    ///     #Preview {
    ///         TheirView()
    ///     }
    /// ```
    ///
    /// Note this second case works only if *YourView* does not refer directly to the `theme` (see [#1268](https://github.com/Orange-OpenSource/ouds-ios/issues/1268))
    @ViewBuilder
    public func soshPreview() -> some View {
        #if DEBUG
        if ProcessInfo.doesRunOnXcodePreview {
            OUDSThemeableView(theme: SoshTheme()) {
                self
            }
        } else {
            self
        }
        #else
        self
        #endif
    }
}
