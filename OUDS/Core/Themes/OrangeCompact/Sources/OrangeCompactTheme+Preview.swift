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

    /// Wraps `self` `View` inside an `OUDSThemeableView` applying the ``OrangeCompactTheme``.
    /// This helper should be used in two cases:
    /// - to debug a `View` in Xcode `#Preview` macro
    /// - to let end-users testing on their side in `#Preview` macro your `View` based on OUDS.
    ///
    /// ```swift
    ///     // In this case, apply the theme on the preview
    ///     #Preview {
    ///        SampleView().orangeCompactPreview()
    ///     }
    /// ```
    ///
    /// ```swift
    ///     // In this case, you defined a `View` you provide to outside developers who use `#Preview` macro
    ///     // In your side:
    ///     struct YourView(): View {
    ///         var body: some View {
    ///            yourContentView.orangeCompactPreview()
    ///         }
    ///     }
    ///
    ///     // In their side:
    ///     #Preview {
    ///         TheirView() // Using your view
    ///     }
    /// ```
    ///
    /// Note this second case works only if *YourView* does not refer directly to the `theme` (see [#1268](https://github.com/Orange-OpenSource/ouds-ios/issues/1268))
    @ViewBuilder
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func orangeCompactPreview() -> some View {
        #if DEBUG
        if ProcessInfo.doesRunOnXcodePreview {
            OUDSThemeableView(theme: OrangeCompactTheme()) {
                self
            }
        } else {
            self
        }
        #else
        self
        #endif
    }

    /// Wraps `self` `View` inside an `OUDSThemeableView` applying the ``OrangeCompactTheme``.
    /// This helper should be used in two cases:
    /// - to debug a `View` in Xcode `#Preview` macro
    /// - to let end-users testing on their side in `#Preview` macro your `View` based on OUDS.
    ///
    /// ```swift
    ///     // In this case, apply the theme on the preview
    ///     #Preview {
    ///        SampleView().orangeCompactPreview(tuning: someTuning)
    ///     }
    /// ```
    ///
    /// ```swift
    ///     // In this case, you defined a `View` you provide to outside developers who use `#Preview` macro
    ///     // In your side:
    ///     struct YourView: View {
    ///         var body: some View {
    ///            yourContentView.orangeCompactPreview(tuning: someTuning)
    ///         }
    ///     }
    ///
    ///     // In their side:
    ///     #Preview {
    ///         TheirView() // Using your view
    ///     }
    /// ```
    ///
    /// - Parameter tuning: The `OUDSThemeTuning` to apply to the theme
    /// - Since: 3.2.0
    @ViewBuilder
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func orangeCompactPreview(tuning: Tuning) -> some View {
        #if DEBUG
        if ProcessInfo.doesRunOnXcodePreview {
            OUDSThemeableView(theme: OrangeCompactTheme(tuning: tuning)) {
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
