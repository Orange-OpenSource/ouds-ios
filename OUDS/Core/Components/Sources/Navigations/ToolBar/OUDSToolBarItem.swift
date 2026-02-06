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
public enum OUDSToolBarNavigationItem: String { // TODO: #1174 - Use themed icons
    case back = "ic_link_previous"
    case close = "ic_close"
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

    enum Content {
        case action(icon: Image, accessibilityLabel: String, action: () -> Void)
        case navigation(icon: OUDSToolBarNavigationItem, label: String?, accessibilityLabel: String, action: () -> Void)
    }

    // MARK: - Stored properties

    public let id = UUID() // FIXME: #1174 - To remove?
    let content: Content

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Initializers

    /// Creates a navigation toolbar item with an icon only dedicated to action.
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
                label: String, // #TODO: #1174 - With label only for iOS < 26 ?
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
        if icon == .back, let label {
            Button(action: action) {
                if #unavailable(iOS 26) {
                    Label {
                        Text(label)
                    } icon: {
                        navigationIcon(icon)
                    }
                    .labelStyle(.titleAndIcon)
                    // With iOS 26 / Liquid Glass label is not always displayed
                    // and if not displayed the icon is leading shifted
                } else {
                    Label {
                        Text(label)
                    } icon: {
                        navigationIcon(icon)
                    }
                }
            }
            .accessibilityLabel(accessibilityLabel)
        } else { // Close button or back without without label
            Button(action: action) {
                navigationIcon(icon)
            }
            .accessibilityLabel(accessibilityLabel)
        }
    }

    private func navigationIcon(_ icon: OUDSToolBarNavigationItem) -> some View {
        Image(decorative: icon.rawValue, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .frame(width: 28, height: 28)
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
                .frame(width: 26, height: 26)
        }
        .accessibilityLabel(accessibilityLabel)
    }

    // MARK: - Helpers
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
