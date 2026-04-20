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

#if os(iOS)

import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

/// A small stroke, like a divider, to display in the top of the tab bar
struct TabBarTopDivider: View {

    @State private var tabBarHeight: CGFloat = 0
    @State private var safeAreaBottom: CGFloat = 0
    @State private var isTabBarHidden: Bool = false

    @Environment(\.iPhoneInUse) private var iPhoneInUse
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            // The condition is placed OUTSIDE the Rectangle but INSIDE the GeometryReader
            // so that the geometry proxy is always available. The guard is re-evaluated
            // on every state change because GeometryReader itself re-renders when @State changes.
            // `tabBarHeight > 0` prevents a misplaced render on the first layout pass
            // (before `updateTabBarHeight()` has run). The GeometryReader size does not change
            // between passes so we need the state-driven condition here rather than relying
            // on geometry changes to trigger re-evaluation.
            //
            // NOTE: the condition must live outside the GeometryReader closure at the `body`
            // level so SwiftUI identity-diffs it on every @State update. If placed inside the
            // GeometryReader, SwiftUI may skip re-running the closure when geometry.size is
            // unchanged even though @State values have changed.
            //
            // We keep the GeometryReader always present (so its size is always measured) and
            // use `.opacity` to hide/show the Rectangle — this guarantees the closure is
            // re-evaluated and the position calculation always uses fresh state values.
            let dividerPosition = geometry.size.height - tabBarHeight + safeAreaBottom
            Rectangle()
                .fill(theme.colors.borderMinimal.color(for: colorScheme))
                .frame(height: 1)
                .position(
                    x: geometry.size.width / 2,
                    y: dividerPosition)
                .opacity(tabBarHeight > 0 && !isTabBarHidden ? 1 : 0)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + SelectedTabIndicator.asyncDelay) {
                updateTabBarStatus()
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + SelectedTabIndicator.asyncDelay) {
                updateTabBarStatus()
            }
        }
        // React to `.toolbar(.hidden, for: .tabBar)` being applied or removed at any time.
        .onReceive(NotificationCenter.default.publisher(for: TabBarVisibilityObserver.visibilityDidChange)) { _ in
            updateTabBarStatus()
        }
    }

    // MARK: Tab bar heights

    /// Get the tab bar height depending to the state of the device and updates the same area stored dimension.
    /// Also updates `isTabBarHidden` to reflect whether `.toolbar(.hidden, for: .tabBar)` has been applied.
    private func updateTabBarStatus() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }

        safeAreaBottom = window.safeAreaInsets.bottom

        if let detectedTabBar = findTabBar() {
            // UITabBar found: read actual height and visibility.
            isTabBarHidden = detectedTabBar.isHidden
            tabBarHeight = detectedTabBar.frame.height
        } else {
            // UITabBar not yet in the hierarchy (timing issue on first appear).
            // Use hardcoded fallback so `tabBarHeight > 0` unlocks the render guard,
            // but do NOT touch `isTabBarHidden` — KVO via TabBarVisibilityObserver is
            // the sole source of truth for visibility; we just don't know it yet here.
            let heights = iPhoneInUse.tabBarHeights
            tabBarHeight = Self.isInLandscapeViewport() ? heights.landscape : heights.portrait
            // Schedule a retry so we can replace the fallback with the real value once
            // the UIKit hierarchy has settled.
            DispatchQueue.main.asyncAfter(deadline: .now() + SelectedTabIndicator.asyncDelay) {
                if let retryTabBar = findTabBar() {
                    isTabBarHidden = retryTabBar.isHidden
                    tabBarHeight = retryTabBar.frame.height
                }
            }
        }
    }
}

#endif
