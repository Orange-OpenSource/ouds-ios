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

#if !os(watchOS) && !os(tvOS)
import OUDSThemesContract
import SwiftUI

// MARK: - OUDS Tool Bar Navigation Item
/// Defines the built-in navigation icons available for the toolbars.
/// Each case maps to an image asset provided by the OUDS package resources.
///
/// - Since: 1.2.0
public enum OUDSToolBarNavigationItem: String {
    case back = "ic_navigation_back"
    case close = "ic_navigation_close"
    case menu = "ic_navigation_menu"
}

// MARK: - OUDS Tool Bar Item

/// A strongly typed toolbar item container used inside ``OUDSToolBarTop`` and ``OUDSToolBarBottom``.
///
/// Use ``OUDSToolBarItem`` to provide custom toolbar views or predefined navigation items.
///
/// ```swift
/// OUDSToolBarItem(navigation: .back, accessibilityLabel: "Back") {
///     // Handle navigation
/// }
///
/// OUDSToolBarItem(navigation: .back, label: "Back") {
///     // Handle navigation with a text label
/// }
///
/// OUDSToolBarItem {
///     OUDSButton(text: "Edit") { /* action */ }
/// }
/// ```
///
/// - Since: 1.2.0
public struct OUDSToolBarItem: View, Identifiable {

    // MARK: - Content

    private enum Content {
        case action(icon: Image, accessibilityLabel: String, action: () -> Void)
        case navigation(icon: OUDSToolBarNavigationItem, label: String?, accessibilityLabel: String, action: () -> Void)
    }

    // MARK: - Stored properties

    public let id = UUID()
    private let content: Content

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Initializers

    /// Creates a navigation toolbar item with an icon only dedicated to navigations.
    ///
    /// - Parameters:
    ///   - icon: The `Image` to add as button as action item
    ///   - accessibilityLabel: The accessibility label describing the icon.
    ///   - action: The action triggered when the item is tapped.
    public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
        content = .action(icon: icon, accessibilityLabel: accessibilityLabel, action: action)
    }

    /// Creates a navigation toolbar item with an icon only dedicated to navigation.
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use.
    ///   - accessibilityLabel: The accessibility label describing the icon.
    ///   - action: The action triggered when the item is tapped.
    public init(navigation: OUDSToolBarNavigationItem, accessibilityLabel: String, action: @escaping () -> Void) {
        content = .navigation(icon: navigation, label: nil, accessibilityLabel: accessibilityLabel, action: action)
    }

    /// Creates a navigation toolbar item with icon and label.
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use.
    ///   - label: The text displayed next to the icon.
    ///   - accessibilityLabel: The accessibility label describing the item.
    ///   - action: The action triggered when the item is tapped.
    public init(navigation: OUDSToolBarNavigationItem,
                label: String,
                accessibilityLabel: String? = nil,
                action: @escaping () -> Void)
    {
        content = .navigation(icon: navigation,
                              label: label,
                              accessibilityLabel: accessibilityLabel ?? label,
                              action: action)
    }

    // MARK: - Body

    public var body: some View {
        switch content {
        case let .action(icon, accessibilityLabel, action):
            actionButton(icon: icon, accessibilityLabel: accessibilityLabel, action: action)
        case let .navigation(icon, label, accessibilityLabel, action):
            navigationButton(icon: icon, label: label, accessibilityLabel: accessibilityLabel, action: action)
        }
    }

    // MARK: - Navigation buttons

    @ViewBuilder
    private func navigationButton(icon: OUDSToolBarNavigationItem,
                                  label: String?,
                                  accessibilityLabel: String,
                                  action: @escaping () -> Void) -> some View
    {
        if let label {
            Button(action: action) {
                Label {
                    Text(LocalizedStringKey(label))
                        .labelDefaultLarge(theme)
                } icon: {
                    navigationIcon(icon)
                }
            }
            .accessibilityLabel(LocalizedStringKey(accessibilityLabel))
            .buttonStyle(.plain)
        } else {
            Button(action: action) {
                navigationIcon(icon)
            }
            .accessibilityLabel(LocalizedStringKey(accessibilityLabel))
            .buttonStyle(.plain)
        }
    }

    private func navigationIcon(_ icon: OUDSToolBarNavigationItem) -> some View {
        Image(decorative: icon.rawValue, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .frame(width: iconSize, height: iconSize)
            .toFlip(icon == .back && layoutDirection == .rightToLeft)
    }

    // MARK: - Action buttons

    @ViewBuilder
    private func actionButton(icon: Image,
                              accessibilityLabel: String,
                              action: @escaping () -> Void) -> some View
    {
        Button(action: action) {
            icon
                .renderingMode(.template)
                .resizable()
//                .frame(width: iconSize, height: iconSize)
        }
        .accessibilityLabel(LocalizedStringKey(accessibilityLabel))
//        .buttonStyle(.plain)
    }

    // MARK: - Helpers

    private var iconSize: CGFloat {
        theme.sizes.iconDecorativeMedium
    }
}

// MARK: - OUDS Tool Bar Items Builder

/// A result builder to group ``OUDSToolBarItem`` instances.
///
/// - Since: 1.2.0
@resultBuilder
public enum OUDSToolBarItemsBuilder {
    public static func buildBlock(_ components: OUDSToolBarItem...) -> [OUDSToolBarItem] {
        components
    }

    public static func buildOptional(_ component: [OUDSToolBarItem]?) -> [OUDSToolBarItem] {
        component ?? []
    }

    public static func buildEither(first component: [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        component
    }

    public static func buildEither(second component: [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        component
    }

    public static func buildArray(_ components: [[OUDSToolBarItem]]) -> [OUDSToolBarItem] {
        components.flatMap(\.self)
    }
}
#endif
