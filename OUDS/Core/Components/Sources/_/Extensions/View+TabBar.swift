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

#if os(iOS)

extension View {

    /// Get the tab bar within the view hierarchy
    public func findTabBar() -> UITabBar? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return nil }

        // Find via root view controller
        if let tabBar = findTabBar(in: window.rootViewController) {
            return tabBar
        }

        // Or otherwise check in views
        return findTabBar(in: window)
    }

    /// Recursive search in view controller to find the tab bar
    private func findTabBar(in viewController: UIViewController?) -> UITabBar? {
        guard let viewController else { return nil }

        if let tabBarController = viewController as? UITabBarController {
            return tabBarController.tabBar
        }

        for child in viewController.children {
            if let tabBar = findTabBar(in: child) {
                return tabBar
            }
        }

        if let presented = viewController.presentedViewController {
            return findTabBar(in: presented)
        }

        return nil
    }

    /// Recursive search in view to find the tab bar
    private func findTabBar(in view: UIView) -> UITabBar? {
        if let tabBar = view as? UITabBar {
            return tabBar
        }

        for subview in view.subviews {
            if let tabBar = findTabBar(in: subview) {
                return tabBar
            }
        }

        return nil
    }
}
#endif

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
/// via `.hideTabBar()`, which posts this preference. `OUDSTabBar` listens with
/// `.onPreferenceChange` and updates its `isTabBarHidden` state accordingly.
///
/// The `reduce` function uses logical OR so that if any descendant hides the tab bar, the
/// preference is `true`. When all descendants that hid the bar are removed from the hierarchy,
/// SwiftUI resets the preference to the `defaultValue` (`false`), making the overlays reappear.
struct TabBarHiddenPreferenceKey: PreferenceKey {

    nonisolated(unsafe) static var defaultValue: Bool = false

    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = value || nextValue()
    }
}

// MARK: - View modifier

extension View {

    /// Hides the native tab bar **and** signals `OUDSTabBar` to hide its overlay elements
    /// (selected tab indicator and top divider) in sync.
    ///
    /// Use this modifier instead of `.toolbar(.hidden, for: .tabBar)`
    /// whenever a view inside a `NavigationStack` embedded in an `OUDSTabBar` needs to hide
    /// the tab bar. Without this modifier, `OUDSTabBar` cannot detect the visibility change
    /// and its overlay elements remain visible on top of the content. This helper must be used for
    /// apps with nested views and tab bars.
    ///
    /// Otherwise for simple app `.toolbar(.hidden, for: .tabBar)` is enough.
    ///
    /// ```swift
    /// struct DetailView: View {
    ///     var body: some View {
    ///         Text("Detail")
    ///             .hideTabBar()
    ///     }
    /// }
    /// ```
    ///
    /// - Returns: A view that hides the tab bar and propagates the hidden state to `OUDSTabBar` overlay items.
    @available(iOS 16, *)
    public func hideTabBar() -> some View {
        #if !os(macOS)
        toolbar(.hidden, for: .tabBar)
            .preference(key: TabBarHiddenPreferenceKey.self, value: true)
        #else
        preference(key: TabBarHiddenPreferenceKey.self, value: true)
        #endif
    }
}
