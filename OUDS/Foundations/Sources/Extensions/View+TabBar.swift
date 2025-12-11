//
//  View+TabBar.swift.tmp.swift
//  OUDS
//
//  Created by Pierre-Yves Lapersonne on 11/12/2025.
//

import SwiftUI

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
