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

import OUDSThemesContract
import SwiftUI

/// Placement of a toolbar item.
///
/// - Since: 1.1.0
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public enum OUDSToolBarItemPlacement {
    case leading
    case trailing
}

/// A strongly typed toolbar item wrapper used with ``OUDSToolBarTop`` and ``OUDSToolBarBottom``.
/// It applies the correct OUDS foreground and background tokens depending on the toolbar placement.
///
/// - Since: 1.1.0
@available(iOS 15, macOS 15, visionOS 1, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public struct OUDSToolBarItem<Content: View>: View {

    // MARK: Properties

    private let placement: OUDSToolBarItemPlacement
    @ViewBuilder private let content: () -> Content

    // MARK: Init

    /// Creates an OUDS toolbar item.
    ///
    /// - Parameters:
    ///   - placement: The placement of the toolbar item.
    ///   - content: The content of the toolbar item.
    public init(placement: OUDSToolBarItemPlacement, @ViewBuilder content: @escaping () -> Content) {
        self.placement = placement
        self.content = content
    }

    // MARK: Body

    public var body: some View {
        content()
            .modifier(ToolBarItemStyleModifier(placement: placement))
    }
}

/// Predefined navigation leading items for ``OUDSToolBarTop``.
///
/// - Since: 1.1.0
@available(iOS 15, macOS 15, visionOS 1, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public struct OUDSToolBarNavigationItem: View {

    // MARK: Types

    /// Supported navigation icons for leading items.
    public enum Icon {
        case back
        case close
        case menu
    }

    // MARK: Properties

    private let icon: Icon
    private let label: String?
    private let accessibilityLabel: String?
    private let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: Init

    /// Creates an icon-only navigation item.
    ///
    /// - Parameters:
    ///   - icon: The icon to display.
    ///   - accessibilityLabel: The accessibility label for the icon-only item.
    ///   - action: The action to perform.
    public init(icon: Icon, accessibilityLabel: String, action: @escaping () -> Void) {
        self.icon = icon
        label = nil
        self.accessibilityLabel = accessibilityLabel
        self.action = action
    }

    /// Creates a navigation item with an icon and a label.
    ///
    /// - Parameters:
    ///   - icon: The icon to display.
    ///   - label: The label text to display.
    ///   - action: The action to perform.
    public init(icon: Icon, label: String, action: @escaping () -> Void) {
        self.icon = icon
        self.label = label
        accessibilityLabel = nil
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        OUDSToolBarItem(placement: .leading) {
            let button = Button(action: action) {
                if let label {
                    Label {
                        Text(LocalizedStringKey(label))
                    } icon: {
                        iconImage
                    }
                } else {
                    iconImage
                }
            }

            if let accessibilityLabel {
                button.accessibilityLabel(LocalizedStringKey(accessibilityLabel))
            } else {
                button
            }
        }
    }

    // MARK: Helpers

    private var iconImage: some View {
        Image(decorative: iconResourceName, bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .frame(width: 20, height: 20)
            .toFlip(layoutDirection == .rightToLeft)
    }

    private var iconResourceName: String {
        switch icon {
        case .back:
            "ic_toolbar_back"
        case .close:
            "ic_toolbar_close"
        case .menu:
            "ic_toolbar_menu"
        }
    }
}
