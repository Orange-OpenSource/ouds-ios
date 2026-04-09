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

// MARK: - OUDS ToolBar Item

/// A strongly typed toolBar item container used inside:
/// - ``oudsToolBarTop(_:hasLargeTitle:subtitle:leadingItems:trailingItems:)``
/// - ``oudsToolBarBottom(leadingItems:trailingItems:)``.
///
/// Use ``OUDSToolBarItem`` to provide custom toolbar views or predefined navigation items.
///
/// ```swift
///     // A toolBar item with only the close icon
///     OUDSToolBarItem(navigation: .close) {
///         // Handle navigation
///     }
///
///     // A toolBar item with the back icon and and a text, for iOS < 26
///     OUDSToolBarItem(navigation: .back(label: "Back")) {
///         // Handle navigation with a text label
///     }
///
///     // A toolBar item with some View inside
///     OUDSToolBarItem {
///         // Menu, ...
///     }
/// ```
///
/// - Since: 1.4.0
public struct OUDSToolBarItem: View, Identifiable {

    // MARK: - Content

    enum Content {
        case action(type: ActionType, style: ActionStyle)
        case navigation(type: NavigationType)
        case customView(AnyView)
    }

    /// Defines the styling configuration for toolBar items for ios > 26
    public enum ActionStyle {
        case `default`
        case proiminent
        case tinted
    }

    // MARK: - OUDS ToolBar Action Item

    /// Defines the built-in action type available for the toolBars.
    /// Those items can be usend at `.topLeading` and `.topTrailing` position of a ``oudsToolBarTop(_:hasLargeTitle:subtitle:leadingItems:trailingItems:)``
    ///
    /// - Since: 1.4.0
    public enum ActionType {
        /// Create an action wth label only that could be emphasized. For ios > 26, label is always emphasized.
        ///
        ///  - Paramters:
        ///     - string: The text displayed in the Label
        ///     - accessibilityHint: Communicates to the user what happens after performing the action
        ///     - emphasized: Flag to know if text is emphasized. Default set to true. Ignored on ios > 26
        ///     - action: The action to do when clicked. If nil the button is disabled.
        case label(_ string: String, emphasized: Bool = false, accessibilityHint: String? = nil, action: (() -> Void)? = nil)

        /// Create an action wth icon only.
        ///
        ///  - Parameters:
        ///     - asset: The asset displayed in the icon
        ///     - accessibilityLabel: The accessibility label discribes the action
        ///     - accessibilityHint: Communicates to the user what happens after performing the action
        ///     - action: The action to do when clicked. If nil the button is disabled.
        case icon(asset: Image, accessibilityLabel: String, accessibilityHint: String? = nil, action: (() -> Void)? = nil)
    }

    // MARK: - OUDS ToolBar Navigation Item

    /// Defines the built-in navigation type available for the toolBars. Those items must be used only on topLeading position of `.toolBar`
    /// Each case maps to an image asset provided by the OUDS package resources.
    ///
    /// - Since: 1.4.0
    public enum NavigationType {

        /// The back button that can be added manualy if need. According to our design system, in could be the case for a sheet.
        /// In a navigation, by default the system one is displayed (without text). If prefered, this one can be added but the system one must be hidden
        /// using `View.navigationBarBackButtonHidden()`
        /// **Warning: if OS is iOS 26+ / Liquid Glass, the label will not appear**
        ///
        ///  - Parameters:
        ///     - label; The optional string label displayed near to the back indicator
        ///     - accessibilityLabel: The accessinility label to describe the back action that could be overtied if needed.
        ///     - action: The action to do when clicked. If nill the button is disabled. By default the dismiss is done after `action` is colled.
        case back(label: String? = nil, accessibilityLabel: String = "core_common_back", action: (() -> Void)? = nil)

        /// The close button can be used to close sheets, the close feature is automatically managed.
        case close

        /// The name of the icon associated to the button.
        var iconName: String {
            switch self {
            case .back:
                "ic_link_previous"
            case .close:
                "ic_button_expurge"
            }
        }
    }

    // MARK: - Stored properties

    public let id = UUID() // FIXME: #1174 - To remove?
    let content: Content

    // MARK: - Initializers

    /// Creates an action toolBar item with only a text
    ///
    /// - Parameters:
    ///   - label: The text to display in the item, must not be empty
    ///   - action: The action triggered when the item is tapped
    public init(label: String, action: (() -> Void)? = nil) {
        if label.isEmpty {
            OL.fatal("The label for a toolBar item without icon must not be empty")
        }
        content = .action(type: .label(label, action: action), style: .default)
    }

    /// Creates an action toolBar item with an icon only dedicated to action.
    ///
    /// - Parameters:
    ///   - icon: The `Image` to add as button as action item
    ///   - accessibilityLabel: The accessibility label describing the icon
    ///   - action: The action triggered when the item is tapped
    public init(icon: Image, accessibilityLabel: String, action: (() -> Void)? = nil) {
        content = .action(type: .icon(asset: icon, accessibilityLabel: accessibilityLabel, action: action), style: .default)
    }

    /// Creates a toolBar item with action type.
    ///
    /// - Parameter type: The action type describing the layout and assoicated action.
    public init(action type: Self.ActionType) {
        content = .action(type: type, style: .default)
    }

    /// Creates a toolBar item with action type.
    ///
    /// - Parameters
    ///     - type: The action type describing the layout and assoicated action.
    ///     - style: The action style to apply on layout
    @available(iOS 26, *)
    public init(action type: Self.ActionType, style: ActionStyle) {
        content = .action(type: type, style: style)
    }

    /// Creates a toolBar item with icon dedicated to navigation.
    ///
    /// - Parameter type: The navigation type describing asset and associated action.
    public init(navigation type: Self.NavigationType) {
        content = .navigation(type: type)
    }

    /// Creates a toolBar item with a custom view.
    ///
    /// Use this initializer to provide any SwiftUI view, such as a `Menu`, custom button, or complex layout.
    ///
    /// ```swift
    /// OUDSToolBarItem {
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
        case let .action(type, style):
            ActionBoutons(type: type, style: style)
        case let .navigation(type):
            NavigationButton(type: type)
        case let .customView(view):
            view
        }
    }
}

// MARK: - OUDS Tool Bar Items Builder

/// A result builder to group ``OUDSToolBarItem`` instances.
///
/// - Since: 1.4.0
@resultBuilder
public enum OUDSToolBarItemsBuilder {
    /// Combines multiple `OUDSToolBarItem` instances into a single array
    public static func buildBlock(_ components: OUDSToolBarItem...) -> [OUDSToolBarItem] {
        components
    }

    /// Combines multiple `OUDSToolBarItem` instances into a single array
    public static func buildBlock(_ components: [OUDSToolBarItem]...) -> [OUDSToolBarItem] {
        components.flatMap(\.self)
    }

    // swiftlint:disable discouraged_optional_collection
    /// Finalizes the result, returning an empty list of items
    public static func buildOptional(_ component: [OUDSToolBarItem]?) -> [OUDSToolBarItem] {
        component ?? []
    }

    // swiftlint:enable discouraged_optional_collection

    /// Finalizes the result, returning the complete list of items
    public static func buildFinalResult(_ component: [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        component
    }

    /// Handles the first branch of an if-else statement (true branch)
    public static func buildEither(first component: [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        component
    }

    /// Handles the second branch of an if-else statement (false branch)
    public static func buildEither(second component: [OUDSToolBarItem]) -> [OUDSToolBarItem] {
        component
    }

    /// Finalizes the result, returning an array of items from array of array of items
    public static func buildArray(_ components: [[OUDSToolBarItem]]) -> [OUDSToolBarItem] {
        components.flatMap(\.self)
    }
}
#endif
