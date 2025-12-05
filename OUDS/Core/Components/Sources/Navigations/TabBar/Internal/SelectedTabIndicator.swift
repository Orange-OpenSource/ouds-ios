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
// MARK: - Selected Tab Indicator

private let kTabBarAnimationDuration: CGFloat = 0.3
private let kAsyncDelay: CGFloat = 0.1

/// An indicator to display at the top of the selected tab for iOS lower than 26 (i.e. no Liquid Glass)
struct SelectedTabIndicator: View {

    @Binding var selected: Int
    let count: Int

    @State private var tabBarHeight: CGFloat = 0
    @State private var safeAreaBottom: CGFloat = 0
    @State private var hasFaceID: Bool = false
    @State private var isLandscape: Bool = false
    @State private var deviceModel: iPhoneDevice?

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(count)
            let indicatorWidth = theme.bar.sizeWidthActiveIndicatorCustomTop

            let xOffset = tabWidth * CGFloat(selected) + (tabWidth - indicatorWidth) / 2

            Rectangle()
                .fill(theme.bar.colorActiveIndicatorCustomSelectedEnabled.color(for: colorScheme))
                .frame(width: indicatorWidth, height: theme.bar.sizeHeightActiveIndicatorCustom)
                .position(
                    x: xOffset + indicatorWidth / 2,
                    y: calculateTopIndicatorPosition(geometry: geometry))
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

    /// Calcule la position Y pour l'indicateur en haut de la tab bar
    private func calculateTopIndicatorPosition(geometry: GeometryProxy) -> CGFloat {
        let indicatorHeight = theme.bar.sizeHeightActiveIndicatorCustom

        // Position de base : en haut de la tab bar
        let basePosition = geometry.size.height - tabBarHeight + safeAreaBottom

        // Ajuster selon l'orientation et le type d'appareil
        let topOffset = 3.0

        let finalPosition = basePosition + topOffset + (indicatorHeight / 2)

        print("🔍 Top Indicator Position (\(deviceModel)):")
        print("   - Geometry height: \(geometry.size.height)")
        print("   - Tab bar height: \(tabBarHeight)")
        print("   - Safe area bottom: \(safeAreaBottom)")
        print("   - Top offset: \(topOffset)")
        print("   - Final Y position: \(finalPosition)")

        return finalPosition
    }

    /// Charge la configuration de la tab bar selon l'appareil et l'orientation
    private func loadTabBarConfiguration() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }

        let screenBounds = UIScreen.main.nativeBounds
        safeAreaBottom = window.safeAreaInsets.bottom

        // Identifier le modèle d'appareil
        deviceModel = iPhoneDevice(screenBounds.width, screenBounds.height, safeAreaBottom)
        if let deviceModel {
            hasFaceID = !deviceModel.hasHomeButton

            // Détecter l'orientation
            let windowBounds = window.bounds
            isLandscape = windowBounds.width > windowBounds.height

            // Obtenir la hauteur de la tab bar
            updateTabBarHeight(deviceModel)

            print("🔍 Configuration loaded:")
            print("   - Device Model: \(deviceModel)")
            print("   - Device: \(hasFaceID ? "Face ID" : "Touch ID")")
            print("   - Orientation: \(isLandscape ? "Landscape" : "Portrait")")
            print("   - Tab bar height: \(tabBarHeight)")
            print("   - Safe area bottom: \(safeAreaBottom)")
        }
    }

    /// Met à jour la hauteur de la tab bar
    private func updateTabBarHeight(_ deviceModel: iPhoneDevice) {
        // Essayer de détecter la tab bar réelle
        if let detectedTabBar = findTabBar() {
            tabBarHeight = detectedTabBar.frame.height
            print("🔍 Tab bar detected with height: \(tabBarHeight)")
        } else {
            // Fallback avec les valeurs recommandées
            tabBarHeight = getRecommendedTabBarHeight(deviceModel)
            print("🔍 Using recommended tab bar height: \(tabBarHeight)")
        }
    }

    /// Retourne la hauteur recommandée selon l'appareil et l'orientation
    private func getRecommendedTabBarHeight(_ deviceModel: iPhoneDevice) -> CGFloat {
        let heights = deviceModel.tabBarHeights
        return isLandscape ? heights.landscape : heights.portrait
    }

    /// Détecte si l'iPhone a Face ID
    private func detectFaceID(_ deviceModel: iPhoneDevice) -> Bool {
        !deviceModel.hasHomeButton
    }

    /// Trouve la tab bar dans la hiérarchie des vues
    private func findTabBar() -> UITabBar? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return nil }

        // Méthode 1: Recherche via le root view controller
        if let tabBar = findTabBar(in: window.rootViewController) {
            return tabBar
        }

        // Méthode 2: Recherche directe dans les vues
        return findTabBarInView(window)
    }

    /// Recherche récursive dans les view controllers
    private func findTabBar(in viewController: UIViewController?) -> UITabBar? {
        guard let viewController else { return nil }

        if let tabBarController = viewController as? UITabBarController {
            return tabBarController.tabBar
        }

        // Recherche dans les enfants
        for child in viewController.children {
            if let tabBar = findTabBar(in: child) {
                return tabBar
            }
        }

        // Recherche dans les vues présentées
        if let presented = viewController.presentedViewController {
            return findTabBar(in: presented)
        }

        return nil
    }

    /// Recherche récursive dans les vues
    private func findTabBarInView(_ view: UIView) -> UITabBar? {
        if let tabBar = view as? UITabBar {
            return tabBar
        }

        for subview in view.subviews {
            if let tabBar = findTabBarInView(subview) {
                return tabBar
            }
        }

        return nil
    }
}
#endif
