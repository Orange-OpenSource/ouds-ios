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

/// The top toolbar is a navigation bar component used to display a title, an optional subtitle,
/// and leading/trailing actions.
///
/// ``OUDSToolBarTop`` wraps any content view and applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// - **Liquid Glass (iOS 26+)**: the system renders the Liquid Glass background automatically. OUDS applies
///   semantic colors on the title and items, and highlights trailing items with an accent background.
/// - **Before iOS 26**: the toolbar background uses a regular blur and the bar translucent color token.
///
/// ## Platform considerations
///
/// - Available on iOS 16, macOS 15, visionOS 1
/// - Not available on watchOS and tvOS
///
/// ## Code sample
///
/// ```swift
/// OUDSToolBarTop(title: "Inbox", subtitle: "2 new messages") {
///     ContentView()
/// } leadingItems: {
///     OUDSToolBarItem(navigation: .back, accessibilityLabel: "Back") {
///         // Handle back
///     }
/// } trailingItems: {
///     OUDSToolBarItem {
///         Image(systemName: "bell")
///     }
/// }
/// ```
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
///
/// ### Without Liquid Glass
///
/// ![A top toolbar component in light mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_light)
/// ![A top toolbar component in dark mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_dark)
///
/// - Since: 1.1.0
@available(iOS 16, macOS 15, visionOS 1, *)
public struct OUDSToolBarTop<Content>: View where Content: View {

    // MARK: - Stored properties

    private let title: String
    private let subtitle: String?
    private let leadingItems: [OUDSToolBarItem]
    private let trailingItems: [OUDSToolBarItem]
    private let content: () -> Content

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a top toolbar with a title, optional subtitle, and leading/trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - subtitle: Optional subtitle displayed below the title.
    ///   - leadingItems: The items displayed on the leading side.
    ///   - trailingItems: The items displayed on the trailing side.
    ///   - content: The content view wrapped by the toolbar.
    public init(title: String,
                subtitle: String? = nil,
                @OUDSToolBarItemsBuilder leadingItems: () -> [OUDSToolBarItem] = { [] },
                @OUDSToolBarItemsBuilder trailingItems: () -> [OUDSToolBarItem] = { [] },
                @ViewBuilder content: @escaping () -> Content)
    {
        if title.isEmpty {
            OL.warning("The title of OUDSToolBarTop is empty, prefer a non-empty title")
        }
        if let subtitle, subtitle.isEmpty {
            OL.warning("The subtitle of OUDSToolBarTop is empty, prefer nil instead")
        }
        self.title = title
        self.subtitle = subtitle?.isEmpty == true ? nil : subtitle
        self.leadingItems = leadingItems()
        self.trailingItems = trailingItems()
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        content()
            .modifier(ToolBarTopAppearanceModifier())
            .toolbar {
                ToolbarItemGroup(placement: leadingPlacement) {
                    itemsView(leadingItems, style: .topLeading)
                }
                ToolbarItem(placement: principalPlacement) {
                    ToolBarTitleView(title: title, subtitle: subtitle)
                }
                ToolbarItemGroup(placement: trailingPlacement) {
                    itemsView(trailingItems, style: .topTrailing)
                }
            }
    }

    // MARK: - Helpers

    private var leadingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .navigationBarLeading
        #elseif os(macOS)
        return .navigation
        #else
        return .automatic
        #endif
    }

    private var trailingPlacement: ToolbarItemPlacement {
        #if os(iOS) || os(visionOS)
        return .navigationBarTrailing
        #elseif os(macOS)
        return .primaryAction
        #else
        return .automatic
        #endif
    }

    private var principalPlacement: ToolbarItemPlacement {
        .principal
    }

    @ViewBuilder
    private func itemsView(_ items: [OUDSToolBarItem], style: ToolBarItemStyle) -> some View {
        if !items.isEmpty {
            HStack(spacing: theme.spaces.fixedSmall) {
                ForEach(items) { item in
                    item.modifier(ToolBarItemStyleModifier(style: style))
                }
            }
        }
    }
}

@available(iOS 16, macOS 15, visionOS 1, *)
private struct ToolBarTitleView: View {

    let title: String
    let subtitle: String?

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: theme.spaces.fixed3xsmall) {
            Text(LocalizedStringKey(title))
                .headingSmall(theme)
            if let subtitle {
                Text(LocalizedStringKey(subtitle))
                    .labelDefaultMedium(theme)
            }
        }
        .oudsForegroundColor(theme.colors.contentDefault)
        .multilineTextAlignment(.center)
    }
}
#endif
