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

// MARK: - PreferenceKey

/// A SwiftUI `PreferenceKey` that propagates tab bar visibility intent **upward** through the
/// view hierarchy, from a child view to the `OUDSTabBar` ancestor that hosts the overlay elements.
///
/// SwiftUI's `.toolbar(.hidden, for: .tabBar)` hides the native `UITabBar` visually, but does so
/// by modifying the internal UIKit layout of the `UITabBarController` without changing any
/// observable property on `UITabBar` itself (`isHidden`, `alpha`, `frame` all stay unchanged).
/// This makes it impossible for `OUDSTabBar` to detect the change via KVO, polling, or
/// `GeometryReader`.
///
/// `TabBarHiddenPreferenceKey` solves this by letting child views explicitly signal their intent
/// via `.oudsHideTabBar()`, which posts this preference. `OUDSTabBar` listens with
/// `.onPreferenceChange` and updates its `isTabBarHidden` state accordingly.
///
/// The `reduce` function uses logical OR so that if any descendant hides the tab bar, the
/// preference is `true`. When all descendants that hid the bar are removed from the hierarchy,
/// SwiftUI resets the preference to the `defaultValue` (`false`), making the overlays reappear.
public struct TabBarHiddenPreferenceKey: PreferenceKey {
    nonisolated(unsafe) public static var defaultValue: Bool = false
    public static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = value || nextValue()
    }
}

// MARK: - View modifier

extension View {

    /// Hides the native tab bar **and** signals `OUDSTabBar` to hide its overlay elements
    /// (selected tab indicator and top divider) in sync.
    ///
    /// Use this modifier instead of — or in addition to — `.toolbar(.hidden, for: .tabBar)`
    /// whenever a view inside a `NavigationStack` embedded in an `OUDSTabBar` needs to hide
    /// the tab bar. Without this modifier, `OUDSTabBar` cannot detect the visibility change
    /// and its overlay elements remain visible on top of the content.
    ///
    /// ```swift
    /// struct DetailView: View {
    ///     var body: some View {
    ///         Text("Detail")
    ///             .oudsHideTabBar()  // hides UITabBar + OUDS overlays
    ///     }
    /// }
    /// ```
    ///
    /// - Returns: A view that hides the tab bar and propagates the hidden state to `OUDSTabBar`.
    @available(iOS 16, *)
    public func oudsHideTabBar() -> some View {
        toolbar(.hidden, for: .tabBar)
            .preference(key: TabBarHiddenPreferenceKey.self, value: true)
    }
}
