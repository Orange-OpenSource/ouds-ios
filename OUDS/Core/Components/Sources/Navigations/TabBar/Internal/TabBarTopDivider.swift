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

    @Environment(\.iPhoneInUse) private var iPhoneInUse
    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            let dividerPosition = geometry.size.height - tabBarHeight + safeAreaBottom

            Rectangle()
                .fill(theme.colors.borderMinimal.color(for: colorScheme))
                .frame(height: 1)
                .position(
                    x: geometry.size.width / 2,
                    y: dividerPosition)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                updateTabBarHeight()
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
            let isLandscape = window.bounds.width > window.bounds.height
            tabBarHeight = isLandscape ? heights.landscape : heights.portrait
        }
    }
}

#endif
