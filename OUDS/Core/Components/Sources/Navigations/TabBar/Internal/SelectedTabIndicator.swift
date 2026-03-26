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

// MARK: - Constants

let kTabBarAnimationDuration: CGFloat = 0.2
let kAsyncDelay: CGFloat = 0.1

// MARK: - Selected Tab Indicator

/// An indicator to display at the top of the selected tab for iOS lower than 26 (i.e. no Liquid Glass)
struct SelectedTabIndicator: View {

    @Binding var selected: Int
    var count: Int

    @State private var tabBarHeight: CGFloat = 0
    @State private var safeAreaBottom: CGFloat = 0
    /// Horizontal scale factor used to animate the indicator expanding from its center.
    /// Starts at 0 (invisible) and is animated to 1 (full width) whenever a tab becomes selected.
    @State private var indicatorScaleX: CGFloat = 0

    /// To disable animation if device in low power mode
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver
    /// To disable animation if user asked for it in device settings
    @Environment(\.accessibilityReduceMotion) private var reduceMotion

    @Environment(\.iPhoneInUse) private var iPhoneInUse
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(count)
            let indicatorWidth = theme.bar.sizeWidthActiveIndicatorCustomTop + (theme.bar.sizeHeightActiveIndicatorCustom / 2)
            let indicatorPosition = (geometry.size.height - tabBarHeight + safeAreaBottom) + (theme.bar.sizeHeightActiveIndicatorCustom / 2)
            let xOffset = tabWidth * CGFloat(selected) + (tabWidth - indicatorWidth) / 2

            if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
                // No animation: display a full-tab-width indicator, instantly repositioned on selection change.
                RoundedRectangle(cornerRadius: theme.bar.borderRadiusActiveIndicatorCustomTop)
                    .fill(theme.bar.colorActiveIndicatorCustomSelectedEnabled.color(for: colorScheme))
                    .frame(width: indicatorWidth, height: theme.bar.sizeHeightActiveIndicatorCustom)
                    .position(
                        x: tabWidth * CGFloat(selected) + tabWidth / 2,
                        y: indicatorPosition)
                    .onChange(of: geometry.size) { _ in
                        updateTabBarHeight()
                    }
            } else {
                RoundedRectangle(cornerRadius: theme.bar.borderRadiusActiveIndicatorCustomTop)
                    .fill(theme.bar.colorActiveIndicatorCustomSelectedEnabled.color(for: colorScheme))
                    .frame(width: indicatorWidth, height: theme.bar.sizeHeightActiveIndicatorCustom)
                    .scaleEffect(x: indicatorScaleX, y: 1, anchor: .center)
                    .position(
                        x: xOffset + indicatorWidth / 2,
                        y: indicatorPosition)
                    .onChange(of: selected) { _ in
                        // Instantly collapse the indicator to zero width (no animation, so no slide
                        // from the old tab to the new one), then animate the line expanding outward
                        // from the center of the new tab.
                        indicatorScaleX = 0
                        withAnimation(.easeInOut(duration: kTabBarAnimationDuration)) {
                            indicatorScaleX = 1
                        }
                    }
                    .onChange(of: geometry.size) { _ in
                        updateTabBarHeight()
                    }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                updateTabBarHeight()
                withAnimation(.easeInOut(duration: kTabBarAnimationDuration)) {
                    indicatorScaleX = 1
                }
            }
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                updateTabBarHeight()
            }
        }
    }

    // MARK: Tab bar heights

    /// Get the tab bar height depending to the state of the device and updates the same area stored dimension
    private func updateTabBarHeight() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }

        safeAreaBottom = window.safeAreaInsets.bottom

        if let detectedTabBar = findTabBar() {
            tabBarHeight = detectedTabBar.frame.height
        } else {
            // If not possible to compute tab bar height, get recommended / precomputed value as fallback
            let heights = iPhoneInUse.tabBarHeights
            tabBarHeight = Self.isInLandscapeViewport() ? heights.landscape : heights.portrait
        }
    }
}
#endif
