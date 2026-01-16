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

/// The bottom toolbar is a navigation component displayed at the bottom of the screen.
/// It lets you provide leading and trailing toolbar items.
///
/// ## Appearances
///
/// - For iOS 26 and later, Liquid Glass is used and the system manages the background style.
/// - For iOS versions lower than 26, the bar uses a regular blur and applies `bar.colorBgTranslucent`.
/// - Items always use `colors.contentDefault` as foreground color.
/// - On iOS 26+, items also use `colors.actionAccent` as background color.
///
/// ## Usage
///
/// ```swift
/// OUDSToolBarBottom {
///     ContentView()
/// } leadingItems: {
///     OUDSToolBarItem(placement: .leading) {
///         Button(action: {}) {
///             Image(systemName: "square.and.arrow.up")
///         }
///     }
/// } trailingItems: {
///     OUDSToolBarItem(placement: .trailing) {
///         Button(action: {}) {
///             Image(systemName: "trash")
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
public struct OUDSToolBarBottom<Content: View, Leading: View, Trailing: View>: View {

    // MARK: Properties

    @ViewBuilder private let content: () -> Content
    @ViewBuilder private let leadingItems: () -> Leading
    @ViewBuilder private let trailingItems: () -> Trailing

    // MARK: Init

    /// Creates a bottom toolbar with leading and trailing items.
    ///
    /// - Parameters:
    ///   - content: The main content view.
    ///   - leadingItems: Items displayed on the leading edge of the toolbar.
    ///   - trailingItems: Items displayed on the trailing edge of the toolbar.
    public init(@ViewBuilder content: @escaping () -> Content,
                @ViewBuilder leadingItems: @escaping () -> Leading = { EmptyView() },
                @ViewBuilder trailingItems: @escaping () -> Trailing = { EmptyView() })
    {
        self.content = content
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
    }

    // MARK: Body

    public var body: some View {
        content()
            .modifier(ToolBarBottomAppearanceModifier())
            .toolbar {
                leadingToolbarItems
                trailingToolbarItems
            }
    }

    @ToolbarContentBuilder
    private var leadingToolbarItems: some ToolbarContent {
        #if os(macOS)
        ToolbarItemGroup(placement: .automatic) {
            leadingItems()
        }
        #else
        ToolbarItemGroup(placement: .bottomBar) {
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
        ToolbarItemGroup(placement: .bottomBar) {
            trailingItems()
        }
        #endif
    }
}
