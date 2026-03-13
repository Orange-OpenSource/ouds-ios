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
import OUDSTokensSemantic
import SwiftUI

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
        case action(type: ActionType)
        case navigation(type: NavigationType, label: String?, accessibilityLabel: String, action: () -> Void)
        case customView(AnyView)
    }

    // MARK: - OUDS Toolbar Action Item

    /// Defines the built-in action type available for the toolbars.
    /// Each case maps to an image asset provided by the OUDS package resources.
    ///
    /// - Since: 1.3.0
    public enum ActionType {
        case label(String, action: (() -> Void)?)
        case icon(asset: Image, accessibilityLabel: String, action: (() -> Void)?)
    }

    // MARK: - OUDS Toolbar Navigation Item

    /// Defines the built-in navigation type available for the toolbars.
    /// Each case maps to an image asset provided by the OUDS package resources.
    ///
    /// - Since: 1.3.0
    public enum NavigationType {
        case back
        case close

        var iconName: String {
            switch self {
            case .back:
                "ic_link_previous"
            case .close:
                "ic_tag_close" // TODO: Use expurge
            }
        }
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
    public init(label: String, action: (() -> Void)? = nil) {
        if label.isEmpty {
            OL.fatal("The label for a toolbar item without icon must not be empty")
        }
        content = .action(type: .label(label, action: action))
    }

    /// Creates a toolbar item with an icon only dedicated to action.
    ///
    /// - Parameters:
    ///   - icon: The `Image` to add as button as action item
    ///   - accessibilityLabel: The accessibility label describing the icon
    ///   - action: The action triggered when the item is tapped
    public init(icon: Image, accessibilityLabel: String, action: (() -> Void)? = nil) {
        content = .action(type: .icon(asset: icon, accessibilityLabel: accessibilityLabel, action: action))
    }

    /// Creates a toolbar item with an icon only dedicated to navigation.
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use.
    ///   - accessibilityLabel: The accessibility label describing the icon.
    ///   - action: The action triggered when the item is tapped.
    public init(navigation type: Self.NavigationType, accessibilityLabel: String, action: @escaping () -> Void) {
        content = .navigation(type: type, label: nil, accessibilityLabel: accessibilityLabel, action: action)
    }

    /// Creates a toolbar item with icon dedicated to navigation and label.
    /// **Warning: if OS is iOS 26+ / Liquid Glass, the label will not appear**
    ///
    /// - Parameters:
    ///   - navigation: The navigation icon to use
    ///   - label: The text displayed next to the icon, if iOS lower than 26
    ///   - accessibilityLabel: The accessibility label describing the item
    ///   - action: The action triggered when the item is tapped
    public init(navigation type: Self.NavigationType,
                label: String,
                accessibilityLabel: String? = nil,
                action: @escaping () -> Void)
    {
        content = .navigation(type: type,
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
        case let .action(type):
            ActionBoutons(type: type)
        case let .navigation(type, label, accessibilityLabel, action):
            NavigationButton(type: type, label: label, accessibilityLabel: accessibilityLabel, action: action)
        case let .customView(view):
            view
        }
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

    public static func buildBlock(_ components: [OUDSToolbarItem]...) -> [OUDSToolbarItem] {
        components.flatMap(\.self)
    }

    public static func buildOptional(_ component: [OUDSToolbarItem]?) -> [OUDSToolbarItem] {
        component ?? []
    }

    /// Finalizes the result, returning the complete list of items
    public static func buildFinalResult(_ component: [OUDSToolbarItem]) -> [OUDSToolbarItem] {
        component
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

struct ActionBoutons: View {

    let type: OUDSToolbarItem.ActionType

    var body: some View {

        switch type {
        case let .label(label, action):
            Button {
                action?()
            } label: {
                Text(label)
            }
            .disabled(action == nil)
        case let .icon(asset, _, action):
            Button {
                action?()
            } label: {
                asset
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 26, height: 26) // TODO: #1174 - Hard-coded value for dimensions?
                // NOTE: Cannot define size of 44x44 for button because with Liquid Glass height is constrained and button will be flattened
            }
        }
    }
}

struct NavigationButton: View {
    let type: OUDSToolbarItem.NavigationType
    let label: String?
    let accessibilityLabel: String
    let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection
    @Environment(\.presentationMode) private var presentationMode

    var body: some View {
        switch type {
        case .back:
            if #available(iOS 26, *) {
                Button(action: action) {
                    navigationIcon
                }
                .accessibilityLabel(accessibilityLabel)
            } else {
                Button(action: action) {
                    HStack(spacing: 2) { // TODO: #1174 - Hard-coded spacing value? Not token?
                        navigationIcon

                        if let label {
                            Text(label)
                        }
                    }
                }
                .accessibilityLabel(accessibilityLabel)
            }
        case .close:
            Button(action: action) {
                HStack {
                    navigationIcon
                }
                .frame(width: 44, height: 44, alignment: .center)
                .oudsBackground(MultipleColorSemanticToken("78788029")) // TODO: Dark mode ?
                .clipShape(Circle())
            }
            .accessibilityLabel(accessibilityLabel)
            .padding(.top, paddingTop)
        }
    }

    private var paddingTop: CGFloat {
        if #available(iOS 26, *) {
            0
        } else {
            36
        }
    }

    private var navigationIcon: some View {
        Image(decorative: type.iconName, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .frame(width: 28, height: 28)
            .toFlip(type == .back && layoutDirection == .rightToLeft)
    }
}
#endif
