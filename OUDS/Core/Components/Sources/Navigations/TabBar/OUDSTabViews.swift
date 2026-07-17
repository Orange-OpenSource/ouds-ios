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

#if !os(tvOS) && !os(watchOS)
import OUDSFoundations
import SwiftUI

// MARK: - OUDS Tab View

/// A tab view component that accepts native SwiftUI `Tab` items (iOS 18+) while applying the full OUDS
/// tab bar appearance — colors, typography, top divider and selected-tab indicator — just like ``OUDSTabBar``.
///
/// Use ``OUDSTabView`` instead of ``OUDSTabBar`` when you need iOS 18+ `Tab`-based API such as
/// positional `Tab("Label", image:) { }` items with a selection binding or rules like `Tab(role: .search)`.
/// For apps targeting iOS 15–17, use ``OUDSTabBar`` instead.
/// When you need `Tab(role: .search)` on iOS 26+, **with Liquid Glass enabled**, use ``OUDSLiquidGlassTabView`` instead.
///
/// ## Selection binding
///
/// A `Binding<Int>` is always required and always kept in sync, regardless of the OS version.
/// For iOS 18 or iOS 26 without Liquid Glass, also pass `count:` (the number of tabs) so the selected-tab indicator can be positioned.
/// Each `Tab` must carry an explicit `value: Int` matching the `selectedTab` binding.
/// For iOS 26+ with Liquid Glass, use ``OUDSLiquidGlassTabView``.
///
/// ## Appearances
///
/// iOS 26 brings Liquid Glass. The same rules as ``OUDSTabBar`` apply:
/// - Background and unselected item colors are applied for iOS lower than 26.
/// - On iOS 26+ with Liquid Glass enabled, only the selected accent color is applied.
/// - The top divider and selected-tab indicator are shown for iOS 18 (portrait iPhone only for
///   the indicator) and hidden under Liquid Glass.
///
/// ## Platform considerations
///
/// - Tailored for iOS and iPadOS. Requires iOS 18+.
/// - On macOS 15+ and visionOS 2+: a bare `TabView(selection:)` is rendered without UIKit styling.
/// - Not available on watchOS or tvOS.
///
/// ## Guidelines
///
/// OUDS guidelines recommend using tab bar item images at **26 × 26 pt**.
///
/// ## Code samples
///
/// ```swift
/// // iOS 18 and 26 without Liquid Glass: binding + count required for the selected-tab indicator
/// @State private var selectedTab = 0
///
/// OUDSTabView(selectedTab: $selectedTab, count: 4) {
///     Tab("first_tab_label", image: "first-tab-image", value: 0) { FirstView() }
///     Tab("second_tab_label", image: "second-tab-image", value: 1) { SecondView() }
///     Tab("third_tab_label", image: "third-tab-image", value: 2) { ThirdView() }
///     Tab(value: 3, role: .search) { SearchView() }
/// }
/// ```
///
/// ```swift
/// // iOS 26+ with Liquid Glass enabled: binding without count (no custom indicator)
/// // value: is still required — use OUDSLiquidGlassTabView for Tab without value: or Tab(role:)
/// @State private var selectedTab = 0
///
/// if #available(iOS 26, *) {
///     OUDSTabView(selectedTab: $selectedTab) {
///         Tab("first_tab_label", image: "first-tab-image", value: 0) { FirstView() }
///         Tab("second_tab_label", image: "second-tab-image", value: 1) { SecondView() }
///         Tab("third_tab_label", image: "third-tab-image", value: 2) { ThirdView() }
///     }
/// }
/// ```
///
/// - Version: 1.0.0
/// - Since: 3.0.0
@available(iOS 18, macOS 15, visionOS 2, *) // Cannot be used for OS lower than 18 because of missing `Tab(value:)` API
public struct OUDSTabView<Content: TabContent>: View where Content.TabValue == Int {

    // MARK: - Properties

    /// To compute the location of the selected tab indicator if Liquid Glass missing
    private let tabCount: Int

    /// To send to user the selected tab index and to compute the location of the selected tab indicator if Liquid Glass missing
    @Binding private var selectedTab: Int

    /// The  `TabContentBuilder` to build the `Tab` views
    private let content: () -> Content

    // MARK: - Initializers

    // NOTE: No use of #if os(iOS) to let OUDS maintainers on macOS compile the documentation.
    /// Creates an `OUDSTabView` for iOS 18 and iOS 26 with Liquid Glass disabled.
    ///
    /// Pass `selectedTab` and `count` so the selected-tab indicator can be drawn above the correct column.
    /// Each `Tab` must carry a matching `value`.
    ///
    /// ```swift
    /// @State private var selectedTab = 0
    ///
    /// OUDSTabView(selectedTab: $selectedTab, count: 3) {
    ///     Tab("Home", image: "house", value: 0) { HomePage() }
    ///     Tab("Search", image: "magnifyingglass", value: 1) { SearchPage() }
    ///     Tab("Profile", image: "person", value: 3) { ProfilePage() }
    /// }
    /// ```
    ///
    /// - Parameters:
    ///   - selectedTab: A binding to the 0-based index of the currently selected tab. Must be between  in [0 ;  `count`[.
    ///   - count: The total number of tabs. Must be a positive non-zero value.
    ///   - content: A `@TabContentBuilder` closure producing `Tab` items.
    public init(selectedTab: Binding<Int>,
                count: UInt8,
                @TabContentBuilder<Int> content: @escaping () -> Content)
    {
        if selectedTab.wrappedValue < 0 || selectedTab.wrappedValue >= count {
            OL.warning("The selected tab binding for the OUDSTabView does not match the count of tabs")
        }
        _selectedTab = selectedTab
        tabCount = Int(count)
        self.content = content
    }

    // NOTE: No use of #if os(iOS) to let OUDS maintainers on macOS compile the documentation.
    /// Creates an `OUDSTabView` for iOS 26+ (Liquid Glass enabled).
    ///
    /// ```swift
    /// @State private var selectedTab = 0
    ///
    /// if #available(iOS 26, *) {
    ///     OUDSTabView(selectedTab: $selectedTab) {
    ///         Tab("Home", image: "house", value: 0) { HomePage() }
    ///         Tab("Search", image: "magnifyingglass", value: 1) { SearchPage() }
    ///         Tab("Profile", image: "person", value: 2) { ProfilePage() }
    ///     }
    /// }
    /// ```
    ///
    /// - Parameters:
    ///   - selectedTab: A binding to the currently selected tab index. Updated automatically.
    ///   - content: A `@TabContentBuilder` closure producing `Tab` items, each with an explicit `value: Int`.
    @available(iOS 26, *)
    public init(selectedTab: Binding<Int>,
                @TabContentBuilder<Int> content: @escaping () -> Content)
    {
        _selectedTab = selectedTab
        tabCount = 0
        self.content = content
    }

    public var body: some View {
        OUDSTabViewBody(selectedTab: $selectedTab, tabCount: tabCount) {
            TabView(selection: $selectedTab) {
                content()
            }
        }
    }
}

// MARK: - OUDS Liquid Glass Tab View

/// A tab view component for iOS 26+ that accepts native SwiftUI `Tab` items including `Tab(role: .search)`,
/// while applying the full OUDS tab bar appearance — colors, typography and top divider.
///
/// Use ``OUDSLiquidGlassTabView`` when you need role-based tabs (iOS 26+) or targeting iOS 26+ OS with Liquid Glass.
/// For iOS 18 and iOS 26 without Liquid Glass, use ``OUDSTabView`` instead.
/// For older iOS version use ``OUDSTabBar`` instead.
///
/// ## Platform considerations
///
/// - Requires iOS 26+ / macOS 26+ / visionOS 26+.
/// - Not available on watchOS or tvOS.
///
/// ## Code samples
///
/// ```swift
/// OUDSLiquidGlassTabView {
///     Tab("Home", image: "house") { HomePage() }
///     Tab("Search", image: "magnifyingglass") { SearchPage() }
///     Tab("Profile", image: "person") { ProfilePage() }
/// }
/// ```
///
/// - Version: 1.0.0
/// - Since: 3.0.0
@available(iOS 26, macOS 26, visionOS 26, *)
public struct OUDSLiquidGlassTabView<Content: TabContent>: View where Content.TabValue == Never {

    /// The `TabContentBuilder` to build the `Tab` views
    private let content: () -> Content

    /// Creates an `OUDSLiquidGlassTabView` with `Tab` items
    ///
    /// ```swift
    /// OUDSLiquidGlassTabView {
    ///     Tab("Home", image: "house") { HomePage() }
    ///     Tab("Search", image: "magnifyingglass") { SearchPage() }
    ///     Tab("Profile", image: "person") { ProfilePage() }
    /// }
    /// ```
    ///
    /// - Parameter content: A `@TabContentBuilder` closure producing `Tab` items.
    public init(@TabContentBuilder<Never> content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        // tabCount 0: indicator never shown (Liquid Glass always active on iOS 27+, asked to use this component for iOS 26 with Liquid Glass
        OUDSTabViewBody(selectedTab: .constant(0), tabCount: 0) {
            TabView {
                content()
            }
        }
    }
}

// MARK: - Internal shared decoration body

/// Internal view that holds the full OUDS tab bar decoration logic shared by
/// ``OUDSTabView`` and ``OUDSLiquidGlassTabView``:
/// - ``OUDSTabBarViewModifier`` — UITabBarAppearance tokens
/// - ``SelectedTabIndicator`` — selected-tab pill (iOS < 26, portrait iPhone)
/// - ``TabBarTopDivider`` — top divider stroke (legacy layout)
/// - ``DeviceModifier`` — injects `iPhoneInUse` into the environment
///
/// The `content` closure receives a fully-built `TabView` (already typed as `some View`),
/// so this helper does not need to know about `TabContent` or `@TabContentBuilder`.
@available(iOS 18, macOS 15, visionOS 2, *)
private struct OUDSTabViewBody<TabViewContent: View>: View {

    @Binding var selectedTab: Int
    let tabCount: Int
    @ViewBuilder let content: () -> TabViewContent

    @State private var isLandscape: Bool = false

    #if os(iOS)
    @State private var isTabBarHidden: Bool = false
    #endif

    @Environment(\.forceOUDSLegacyLayout) private var forceOUDSLegacyLayout
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    var body: some View {
        #if os(iOS)
        ZStack(alignment: .bottom) {

            // NOTE: Do not understand why, but if we do not have these SelectedTabIndicator TWICE
            // the indicator will be never disabled if Liquid Glass unavailable or disabled
            // for iOS 26+ with Liquid Glass disabled and Xcode 26.4.1
            // (ノಠ益ಠ)ノ彡┻━┻
            SelectedTabIndicator(selected: $selectedTab, count: tabCount, isTabBarHidden: $isTabBarHidden)
                .opacity(shouldShowTabIndicator ? 1 : 0)
                .ignoresSafeArea(.keyboard, edges: .bottom)

            content()
                .modifier(OUDSTabBarViewModifier())

            SelectedTabIndicator(selected: $selectedTab, count: tabCount, isTabBarHidden: $isTabBarHidden)
                .opacity(shouldShowTabIndicator ? 1 : 0)
                .ignoresSafeArea(.keyboard, edges: .bottom)

            TabBarTopDivider(isTabBarHidden: $isTabBarHidden)
                .opacity(hasLegacyLayout ? 1 : 0)
                .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        .onAppear {
            isLandscape = Self.isInLandscapeViewport()
        }
        // React to child views calling `.hideTabBar()`, which posts `TabBarHiddenPreferenceKey`.
        .onPreferenceChange(TabBarHiddenPreferenceKey.self) { hidden in
            isTabBarHidden = hidden
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + SelectedTabIndicator.asyncDelay) {
                isLandscape = Self.isInLandscapeViewport()
            }
        }
        .modifier(DeviceModifier())
        #else
        content()
        #endif
    }

    private var shouldShowTabIndicator: Bool {
        #if canImport(UIKit) && !os(watchOS)
        if forceOUDSLegacyLayout { return true }
        guard isLiquidGlassDisabled else { return false }
        guard UIDevice.current.userInterfaceIdiom == .phone else { return false }
        return !isLandscape
        #else
        return false
        #endif
    }

    private var hasLegacyLayout: Bool {
        #if canImport(UIKit) && !os(watchOS)
        if forceOUDSLegacyLayout { return true }
        if isLiquidGlassDisabled {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return true
            } else if UIDevice.current.userInterfaceIdiom == .pad {
                if #unavailable(iOS 18.0) {
                    return true
                }
            }
        }
        return false
        #else
        return false
        #endif
    }
}
#endif
