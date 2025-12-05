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

import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

#if os(iOS)

// MARK: - Constants

let kTabBarAnimationDuration: CGFloat = 0.3
let kAsyncDelay: CGFloat = 0.1

// MARK: - Selected Tab Indicator

/// An indicator to display at the top of the selected tab for iOS lower than 26 (i.e. no Liquid Glass)
struct SelectedTabIndicator: View {

    @Binding var selected: Int
    let count: Int

    @State private var tabBarHeight: CGFloat = 0
    @State private var safeAreaBottom: CGFloat = 0
    @State private var isLandscape: Bool = false

    @Environment(\.iPhoneInUse) private var iPhoneInUse
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(count)
            let indicatorWidth = theme.bar.sizeWidthActiveIndicatorCustomTop + (theme.bar.sizeHeightActiveIndicatorCustom / 2)
            let indicatorPosition = (geometry.size.height - tabBarHeight + safeAreaBottom) + (theme.bar.sizeHeightActiveIndicatorCustom / 2)
            let xOffset = tabWidth * CGFloat(selected) + (tabWidth - indicatorWidth) / 2

            Rectangle()
                .fill(theme.bar.colorActiveIndicatorCustomSelectedEnabled.color(for: colorScheme))
                .frame(width: indicatorWidth, height: theme.bar.sizeHeightActiveIndicatorCustom)
                .position(
                    x: xOffset + indicatorWidth / 2,
                    y: indicatorPosition)
                .animation(.easeInOut(duration: kTabBarAnimationDuration), value: selected)
        }
        .onAppear {
            loadTabBarConfiguration()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                loadTabBarConfiguration()
            }
        }
    }

    // MARK: Tab bar heights

    /// Gets from device some metrucs like bottom safe area and flags to help to compute indicator location
    private func loadTabBarConfiguration() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first,
              iPhoneInUse != iPhoneDevice.unknown else { return }

        safeAreaBottom = window.safeAreaInsets.bottom
        isLandscape = window.bounds.width > window.bounds.height
        updateTabBarHeight()
    }

    /// Get the tab bar height depending to the state of the device
    private func updateTabBarHeight() {
        if let detectedTabBar = findTabBar() {
            tabBarHeight = detectedTabBar.frame.height
        } else {
            // If not possible to compute tab abr height, get recommended / precomptued value
            let heights = iPhoneInUse.tabBarHeights
            tabBarHeight = isLandscape ? heights.landscape : heights.portrait
        }
    }

    // MARK: - Tab bar search

    /// Get the tab bar within the view hierarchy
    private func findTabBar() -> UITabBar? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return nil }

        // Find via root view controller
        if let tabBar = findTabBar(in: window.rootViewController) {
            return tabBar
        }

        // Or otherwise check in views
        return findTabBar(in: window)
    }

    /// recursive search in view controllers to find the tab bar
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

    /// Recursive search in views to find the tab bar
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
