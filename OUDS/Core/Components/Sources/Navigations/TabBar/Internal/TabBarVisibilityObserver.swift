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
import SwiftUI

#if os(iOS)

/// A KVO-based observer that watches `UITabBar.isHidden` and broadcasts a custom notification
/// whenever the property changes. This allows OUDS overlay views (`SelectedTabIndicator`,
/// `TabBarTopDivider`) to react when `.toolbar(.hidden, for: .tabBar)` is applied or removed.
///
/// Because `UITabBar.isHidden` is a `@MainActor`-isolated property in Swift 6, KVO is performed
/// through a raw string key path (`"hidden"`) rather than a typed Swift key path (`\.isHidden`),
/// which avoids a compiler error when the observation closure is a `@Sendable` context.
final class TabBarVisibilityObserver: NSObject, @unchecked Sendable {

    /// Posted on the default `NotificationCenter` whenever the observed `UITabBar.isHidden` changes.
    static let visibilityDidChange = Notification.Name("ouds.tabBarVisibilityDidChange")

    private weak var tabBar: UITabBar?

    init(tabBar: UITabBar) {
        self.tabBar = tabBar
        super.init()
        // Use raw string KVO key ("hidden") to avoid "cannot form key path to main actor-isolated
        // property" error raised by Swift 6 when using the typed key path `\.isHidden`.
        tabBar.addObserver(self, forKeyPath: "hidden", options: [.new], context: nil)
    }

    deinit {
        tabBar?.removeObserver(self, forKeyPath: "hidden")
    }

    // swiftlint:disable block_based_kvo
    // swiftlint:disable discouraged_optional_collection
    override func observeValue(forKeyPath keyPath: String?,
                               of object: Any?,
                               change: [NSKeyValueChangeKey: Any]?,
                               context: UnsafeMutableRawPointer?)
    {
        guard keyPath == "hidden" else { return }
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: TabBarVisibilityObserver.visibilityDidChange, object: nil)
        }
    }
    // swiftlint:enable block_based_kvo
    // swiftlint:enable discouraged_optional_collection
}
#endif
