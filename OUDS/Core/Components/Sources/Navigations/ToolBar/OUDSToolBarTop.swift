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

import SwiftUI

/// The top toolbar is a navigation bar component, displayed at the top of the screen.
/// It presents a mandatory title and an optional subtitle, and lets you provide leading and trailing toolbar items.
///
/// ## Appearances
///
/// - For iOS 26 and later, Liquid Glass is used and the system manages the background style.
/// - For iOS versions lower than 26, the bar uses a regular blur and applies `bar.colorBgTranslucent`.
/// - The title and subtitle always use `colors.contentDefault`.
/// - Leading items use `colors.contentDefault`.
/// - Trailing items use `colors.contentDefault`, and on iOS 26+ they also use `colors.actionAccent` as background.
///
/// ## Usage
///
/// ```swift
/// OUDSToolBarTop(title: "Dashboard", subtitle: "Overview") {
///     ContentView()
/// } leadingItems: {
///     OUDSToolBarNavigationItem(icon: .back, label: "Back") {
///         // Handle back
///     }
/// } trailingItems: {
///     OUDSToolBarItem(placement: .trailing) {
///         Button(action: {}) {
///             Image(systemName: "magnifyingglass")
///         }
///     }
/// }
/// ```
///
/// ## Platform considerations
///
/// - Available on iOS 15, macOS 15, and visionOS 1.
/// - Not available on watchOS or tvOS.
///
/// - Since: 1.1.0
@available(iOS 15, macOS 15, visionOS 1, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public struct OUDSToolBarTop<Content: View, Leading: View, Trailing: View>: View {

    // MARK: Properties

    private let title: String
    private let subtitle: String?
    @ViewBuilder private let content: () -> Content
    @ViewBuilder private let leadingItems: () -> Leading
    @ViewBuilder private let trailingItems: () -> Trailing

    // MARK: Init

    /// Creates a top toolbar with leading and trailing items.
    ///
    /// - Parameters:
    ///   - title: The toolbar title.
    ///   - subtitle: An optional subtitle displayed below the title.
    ///   - content: The main content view.
    ///   - leadingItems: Items displayed on the leading edge of the toolbar.
    ///   - trailingItems: Items displayed on the trailing edge of the toolbar.
    public init(title: String,
                subtitle: String? = nil,
                @ViewBuilder content: @escaping () -> Content,
                @ViewBuilder leadingItems: @escaping () -> Leading = { EmptyView() },
                @ViewBuilder trailingItems: @escaping () -> Trailing = { EmptyView() })
    {
        self.title = title
        self.subtitle = subtitle
        self.content = content
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
    }

    // MARK: Body

    public var body: some View {
        content()
            .modifier(ToolBarTopAppearanceModifier())
            .toolbar {
                ToolbarItem(placement: .principal) {
                    ToolBarTitleView(title: title, subtitle: subtitle)
                }
                leadingToolbarItems
                trailingToolbarItems
            }
        #if os(iOS) || os(visionOS)
            .navigationBarTitleDisplayMode(.inline)
        #endif
    }

    @ToolbarContentBuilder
    private var leadingToolbarItems: some ToolbarContent {
        #if os(macOS)
        ToolbarItemGroup(placement: .navigation) {
            leadingItems()
        }
        #else
        ToolbarItemGroup(placement: .navigationBarLeading) {
            leadingItems()
        }
        #endif
    }

    @ToolbarContentBuilder
    private var trailingToolbarItems: some ToolbarContent {
        #if os(macOS)
        ToolbarItemGroup(placement: .primaryAction) {
            trailingItems()
        }
        #else
        ToolbarItemGroup(placement: .navigationBarTrailing) {
            trailingItems()
        }
        #endif
    }
}
