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
import OUDSFoundations
import OUDSThemesContract
import SwiftUI

// MARK: - OUDS Toolbar Navigation Item

/// Defines the built-in navigation icons available for the toolbars.
/// Each case maps to an image asset provided by the OUDS package resources.
///
/// - Since: 1.3.0
public enum OUDSToolbarNavigationItem: String { // TODO: #1174 - Use themed icons
    case back = "ic_link_previous"
    case close = "ic_close"
}

// MARK: - OUDS Toolbar Item

/// A strongly typed toolbar item container used inside ``OUDSToolbarTop`` and ``OUDSToolbarBottom``.
///
/// Use ``OUDSToolbarItem`` to provide custom toolbar views or predefined navigation items.
///
/// ```swift
///     // A toolbar item with only the close icon
///     OUDSToolbarItem(navigation: .close, accessibilityLabel: "Close") {
///         // Handle navigation
///     }
///
///     // A toolbar item with the back icon and and a text, for iOS < 26
///     OUDSToolbarItem(navigation: .back, label: "Back") {
///         // Handle navigation with a text label
///     }
///
///     // A toolbar item with some View inside
///     OUDSToolbarItem {
///         // Menu, ...
///     }
/// ```
///
/// - Since: 1.3.0
public struct OUDSToolbarItem: View, Identifiable {

    // MARK: - Content

    enum Content {
        case actionWithoutIcon(label: String, action: () -> Void)
        case actionWithIcon(icon: Image, accessibilityLabel: String, action: () -> Void)
        case navigation(icon: OUDSToolbarNavigationItem, label: String?, accessibilityLabel: String, action: () -> Void)
        case customView(AnyView)
    }

    // MARK: - Stored properties

    public let id = UUID() // FIXME: #1174 - To remove?
    let content: Content

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: - Initializers

    /// Creates a toolbar item with only a text
    ///
    /// - Parameters:
    ///   - label: The text to display in the item, must not be empty
    ///   - action: The action triggered when the item is tapped
    public init(label: String, action: @escaping () -> Void) {
        if label.isEmpty {
            OL.fatal("The label for a toolbar item without icon must not be empty")
        }
        content = .actionWithoutIcon(label: label, action: action)
    }

    /// Creates a toolbar item with an icon only dedicated to action.
    ///
    /// - Parameters:
    ///   - icon: The `Image` to add as button as action item
    ///   - accessibilityLabel: The accessibility label describing the icon
    ///   - action: The action triggered when the item is tapped
    public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
        content = .actionWithIcon(icon: icon, accessibilityLabel: accessibilityLabel, action: action)
    }

    /// Creates a toolbar item with an icon only dedicated to navigation.
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use.
    ///   - accessibilityLabel: The accessibility label describing the icon.
    ///   - action: The action triggered when the item is tapped.
    public init(navigation: OUDSToolbarNavigationItem, accessibilityLabel: String, action: @escaping () -> Void) {
        content = .navigation(icon: navigation, label: nil, accessibilityLabel: accessibilityLabel, action: action)
    }

    /// Creates a toolbar item with icon dedicated to navigation and label.
    /// **Warning: if OS is iOS 26+ / Liquid Glass, the label will not appear**
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use
    ///   - label: The text displayed next to the icon, if iOS lower than 26
    ///   - accessibilityLabel: The accessibility label describing the item
    ///   - action: The action triggered when the item is tapped
    public init(navigation: OUDSToolbarNavigationItem,
                label: String,
                accessibilityLabel: String? = nil,
                action: @escaping () -> Void)
    {
        content = .navigation(icon: navigation,
                              label: label,
                              accessibilityLabel: accessibilityLabel ?? label,
                              action: action)
    }

    /// Creates a toolbar item with a custom view.
    ///
    /// Use this initializer to provide any SwiftUI view, such as a `Menu`, custom button, or complex layout.
    ///
    /// ```swift
    /// OUDSToolbarItem {
    ///     Menu("Options") {
    ///         Button("Option 1") { }
    ///         Button("Option 2") { }
    ///     }
    /// }
    /// ```
    ///
    /// - Parameter content: A view builder that returns the custom view to display.
    public init(@ViewBuilder content: () -> some View) {
        self.content = .customView(AnyView(content()))
    }

    // MARK: - Body

    public var body: some View {
        switch content {
        case let .actionWithoutIcon(label, action):
            actionButton(label: label, action: action)
        case let .actionWithIcon(icon, accessibilityLabel, action):
            actionButton(icon: icon, accessibilityLabel: accessibilityLabel, action: action)
        case let .navigation(icon, label, accessibilityLabel, action):
            navigationButton(icon: icon, label: label, accessibilityLabel: accessibilityLabel, action: action)
        case let .customView(view):
            view
        }
    }

    // MARK: - Navigation buttons

    @ViewBuilder
    private func navigationButton(icon: OUDSToolbarNavigationItem,
                                  label: String?,
                                  accessibilityLabel: String,
                                  action: @escaping () -> Void) -> some View
    {
        if icon == .back, let label {
            // It seems there is not enough spaces with iOS 26 / Liquid Glass to display both icon and text,
            // major part of text is hidden
            if #available(iOS 26, *) {
                Button(action: action) {
                    navigationIcon(icon)
                }
                .accessibilityLabel(accessibilityLabel)
            } else {
                Button(action: action) {
                    HStack(spacing: 2) { // TODO: #1174 - Hard-coded spacing value? Not token?
                        navigationIcon(icon)
                        Text(label)
                    }
                }
                .accessibilityLabel(accessibilityLabel)
            }
        } else { // Close button or back button without label
            Button(action: action) {
                navigationIcon(icon)
            }
            .accessibilityLabel(accessibilityLabel)
        }
    }

    private func navigationIcon(_ icon: OUDSToolbarNavigationItem) -> some View {
        Image(decorative: icon.rawValue, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .frame(width: 28, height: 28) // TODO: #1174 - Hard-coded value for dimensions?
            .toFlip(icon == .back && layoutDirection == .rightToLeft)
    }

    // MARK: - Action buttons

    @ViewBuilder
    private func actionButton(label: String,
                              action: @escaping () -> Void) -> some View
    {
        Button(action: action) {
            Text(label)
        }
    }

    @ViewBuilder
    private func actionButton(icon: Image,
                              accessibilityLabel: String,
                              action: @escaping () -> Void) -> some View
    {
        Button(action: action) {
            icon
                .renderingMode(.template)
                .resizable()
                .frame(width: 26, height: 26) // TODO: #1174 - Hard-coded value for dimensions?
        }
        .accessibilityLabel(accessibilityLabel)
        // NOTE: Cannot define size of 44x44 for button because with Liquid Glass height is constrained and button will be flattened
    }
}

// MARK: - OUDS Tool Bar Items Builder

/// A result builder to group ``OUDSToolbarItem`` instances.
///
/// - Since: 1.3.0
@resultBuilder
public enum OUDSToolbarItemsBuilder {
    public static func buildBlock(_ components: OUDSToolbarItem...) -> [OUDSToolbarItem] {
        components
    }

    public static func buildOptional(_ component: [OUDSToolbarItem]?) -> [OUDSToolbarItem] {
        component ?? []
    }

    public static func buildEither(first component: [OUDSToolbarItem]) -> [OUDSToolbarItem] {
        component
    }

    public static func buildEither(second component: [OUDSToolbarItem]) -> [OUDSToolbarItem] {
        component
    }

    public static func buildArray(_ components: [[OUDSToolbarItem]]) -> [OUDSToolbarItem] {
        components.flatMap(\.self)
    }
}
#endif
