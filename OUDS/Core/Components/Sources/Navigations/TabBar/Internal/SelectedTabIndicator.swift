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

/// An indicator to display at the top of the selected tab for iOS lower than 26 (i.e. Liquid Glass not available) or with Liquid Glass disabled (26+)
struct SelectedTabIndicator: View {

    // MARK: - Constants

    /// Duration in seconds of the indicator expand/collapse animation.
    static let animationDuration: CGFloat = 0.2
    /// Delay in seconds before updating the tab bar geometry after layout changes.
    static let asyncDelay: CGFloat = 0.1

    // MARK: - Properties

    /// The index of the selected tab used to compute the location of the indicator, used to compute the tab width
    @Binding var selected: Int

    /// The number of items in the tab bar with this indicator
    var count: Int

    /// Driven by `OUDSTabBar`, the single source of truth for tab bar visibility.
    /// Using a `@Binding` avoids calling helpers to try to find the tab bar to hide
    /// which was unreliable when intermediate navigation layers were present.
    @Binding var isTabBarHidden: Bool

    /// The height of the tab bar to compute the indicator position
    @State private var tabBarHeight: CGFloat = 0
    /// The safe area bottom dimension to compute the indicator position
    @State private var safeAreaBottom: CGFloat = 0
    /// Horizontal scale factor used to animate the indicator expanding from its center.
    /// Starts at 0 (invisible) and is animated to 1 (full width) whenever a tab becomes selected.
    @State private var indicatorScaleX: CGFloat = 0

    /// To disable animation if device in low power mode
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver
    /// To disable animation if user asked for it in device settings
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.iPhoneInUse) private var iPhoneInUse

    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(count)
            let indicatorWidth = theme.bar.sizeWidthCurrentIndicatorCustomTop + (theme.bar.sizeHeightCurrentIndicatorCustom / 2)
            let indicatorPosition = (geometry.size.height - tabBarHeight + safeAreaBottom) + (theme.bar.sizeHeightCurrentIndicatorCustom / 2)
            let xOffset = tabWidth * CGFloat(selected) + (tabWidth - indicatorWidth) / 2

            // Do not render the indicator when the native tab bar is hidden
            // (e.g. when the user applies `.toolbar(.hidden, for: .tabBar)`).
            if !isTabBarHidden, reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
                // No animation: display a full-tab-width indicator, instantly repositioned on selection change.
                RoundedRectangle(cornerRadius: theme.bar.borderRadiusCurrentIndicatorCustomTop)
                    .fill(theme.bar.colorCurrentIndicatorCustomSelectedEnabled.color(for: colorScheme))
                    .frame(width: indicatorWidth, height: theme.bar.sizeHeightCurrentIndicatorCustom)
                    .position(
                        x: tabWidth * CGFloat(selected) + tabWidth / 2,
                        y: indicatorPosition)
                    .onChange(of: geometry.size) { _ in
                        updateTabBarHeight()
                    }
            } else if !isTabBarHidden {
                RoundedRectangle(cornerRadius: theme.bar.borderRadiusCurrentIndicatorCustomTop)
                    .fill(theme.bar.colorCurrentIndicatorCustomSelectedEnabled.color(for: colorScheme))
                    .frame(width: indicatorWidth, height: theme.bar.sizeHeightCurrentIndicatorCustom)
                    .scaleEffect(x: indicatorScaleX, y: 1, anchor: .center)
                    .position(
                        x: xOffset + indicatorWidth / 2,
                        y: indicatorPosition)
                    .onChange(of: selected) { _ in
                        // Instantly collapse the indicator to zero width (no animation, so no slide
                        // from the old tab to the new one), then animate the line expanding outward
                        // from the center of the new tab.
                        indicatorScaleX = 0
                        withAnimation(.easeInOut(duration: Self.animationDuration)) {
                            indicatorScaleX = 1
                        }
                    }
                    .onChange(of: geometry.size) { _ in
                        updateTabBarHeight()
                    }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + Self.asyncDelay) {
                updateTabBarHeight()
                withAnimation(.easeInOut(duration: Self.animationDuration)) {
                    indicatorScaleX = 1
                }
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + Self.asyncDelay) {
                updateTabBarHeight()
            }
        }
    }

    // MARK: Tab bar heights

    /// Gets the tab bar height from the UIKit hierarchy and updates the stored dimension.
    /// Visibility (`isTabBarHidden`) is intentionally NOT updated here — it is owned by
    /// `OUDSTabBar` and passed down via `@Binding` to avoid the race condition where
    /// `findTabBar()` might return a stale `isHidden` value during a navigation transition.
    private func updateTabBarHeight() { // ༼;´༎ຶ ۝ ༎ຶ༽
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }

        safeAreaBottom = window.safeAreaInsets.bottom

        if let detectedTabBar = findTabBar() {
            tabBarHeight = detectedTabBar.frame.height
        } else {
            // If not possible to compute tab bar height, use recommended / precomputed value as fallback (╯°□°)╯︵ ┻━┻
            let heights = iPhoneInUse.tabBarHeights
            tabBarHeight = Self.isInLandscapeViewport() ? heights.landscape : heights.portrait
        }
    }
}
#endif
