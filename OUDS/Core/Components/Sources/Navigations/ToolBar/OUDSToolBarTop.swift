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

// MARK: - OUDS ToolBar Top View Modifier

/// The top toolbar (aka *navigation bar* on iOS and iPadOS 18 and lower) sits at the top of the screen and provides contextual information
/// and controls related to the current view.
/// It typically displays the page title, and may include navigation actions such as “Back” or "Close" as well as supplementary actions.
/// It can contains leading and trailing actions.
///
/// `toolBarTop(_:hasLargeTitle:subtitle:leadingItems:trailingItems:)`  View helper applies a SwiftUI toolbar configuration.
///
/// ## Appearances
///
/// With Liquid Glass / iOS 26+ the OS will change the rendering of the toolbar items depending to the context:
/// - The OS can group the items of same types in one group with kind of rectangle (e.g. views with menus)
/// - But for buttons items they will remain isolated
/// - The placement of the title can be leading or centered depending to the length of the text
/// - The text can be truncated if there is not enough remaining space
/// - The OS can apply another style for the back button
///
/// Without Liquid Glass / iOS 18 and lower, the OS won't change that much the style of the toolbar items, Items won't be visually grouped.
///
/// Globaly the appearence of the * navigation bar* elements is changed by the `oudsNavigationBarAppearance`
/// helper of `View` that must be applyed on the root view of the `NavigationStack` for example.
///
/// ## Technical constraints
///
/// To be sure for iOS 18 and lower the back buttton and text have the good color, in your main view apply the following accent color:
///
/// ```swift
///     struct AppMainView: View {
///         var body: some View {
///             ContentView()
///                 .accentColor(theme.colors.contentDefault)
///         }
///     }
/// ```
///
/// ## Platform considerations
///
/// - The component is available on iOS, iPadOS, and visionOS
/// - The component is not available for watchOS, tvOS and macOS
///
/// ## Badges uses
///
/// For iOS 26 with Liquid Glass, the system badge is used because the ``OUDSBadge`` does not provide a suitable rendering with the glassified effect applied on the top toolbar.
/// For iOS until 18 and without Liquid Glass ``OUDSBadge`` is always used.
///
/// ## Code sample
///
/// ```swift
///     ContentView()
///         .toolBarTop("Title",
///             leadingItems: {
///                 OUDSToolBarItem(navigation: .back())
///             },
///             trailingItems: {
///                 OUDSToolBarItem(label: "Label") { /* Action to process */ }
///                 OUDSToolBarItem(icon: Image(decorative: "some_image"), accessibilityLabel: "Label") { /* Action to process */ }
///             }
///         )
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-ios-tool-bar-top)
///
/// ## Themes rendering
///
/// ### Liquid Glass
///
/// #### Orange
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange theme](component_toolBarTop_LiquidGlass_Orange_dark)
///
/// #### Orange Compact
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Orange Compact theme](component_toolBarTop_LiquidGlass_OrangeCompact_dark)
///
/// #### Sosh
///
/// ![A top toolbar component in light mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Sosh theme](component_toolBarTop_LiquidGlass_Sosh_dark)
///
/// #### Wireframe
///
/// ![A top toolBar component in light mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_light)
/// ![A top toolbar component in dark mode with Liquid Glass effect and Wireframe theme](component_toolBarTop_LiquidGlass_Wireframe_dark)
///
/// ### Without Liquid Glass
///
/// #### Orange
///
/// ![A top toolbar component in light mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_light)
/// ![A top toolbar component in dark mode without Liquid Glass effect and Orange theme](component_toolBarTop_Orange_dark)
///
/// #### Orange Compact
///
/// ![A top toolbar component in light mode without Liquid Glass effect and Orange Compact theme](component_toolBarTop_OrangeCompact_light)
/// ![A top toolbar component in dark mode without Liquid Glass effect and Orange Compact theme](component_toolBarTop_OrangeCompact_dark)
///
/// #### Sosh
///
/// ![A top toolbar component in light mode without Liquid Glass effect and Sosh theme](component_toolBarTop_Sosh_light)
/// ![A top toolbar component in dark mode without Liquid Glass effect and Sosh theme](component_toolBarTop_Sosh_dark)
///
/// #### Wireframe
///
/// ![A top toolbar component in light mode without Liquid Glass effect and Wireframe theme](component_toolBarTop_Wireframe_light)
/// ![A top toolbar component in dark mode without Liquid Glass effect and Wireframe theme](component_toolBarTop_Wireframe_dark)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.4.0
@available(iOS 15, visionOS 1, *)
public struct OUDSToolBarTop: ViewModifier {
    // NOTE: As Swift DocC cannot build rich documention for methods, this struct does not the job

    // MARK: Properties

    /// The toolbar title
    private let title: String
    /// If the title must be displayed in large mode or not
    private let hasLargeTitle: Bool
    /// An optional subtitle displayed below the title if iOS 26+
    private let subtitle: String?
    /// The items to display in leading position
    @OUDSToolBarItemsBuilder private let leadingItems: () -> [OUDSToolBarItem]
    /// The items to display in trailing position
    @OUDSToolBarItemsBuilder private let trailingItems: () -> [OUDSToolBarItem]

    // MARK: Initializer

    /// `ViewModifier` to define an OUDS top toolbar.
    ///
    ///  You should prefer `toolBarTop(_:hasLargeTitle:subtitle:leadingItems:trailingItems:)` on view placed
    ///  inside `NavigationView` or`NavigationStack`.
    ///
    /// ```swift
    ///     OUDSToolBarTop(title: "Home") {
    ///         OUDSToolBarItem(navigation: .back { })
    ///     } trailingItems: {
    ///         OUDSToolBarItem(label: "Done") { }
    ///     }
    /// ```
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If *title* must be displayed in large mode or not, *false* by default. If large mode, the *subtitle* is not displayed
    ///   - subtitle: Optional *subtitle* displayed below the *title* if iOS 26+, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side, *empty* by default.
    ///   - trailingItems: The items displayed on the trailing side, *empty* by default.
    public init(title: String,
                hasLargeTitle: Bool = false,
                subtitle: String? = nil,
                leadingItems: @escaping () -> [OUDSToolBarItem] = { [] },
                trailingItems: @escaping () -> [OUDSToolBarItem] = { [] })
    {
        self.title = title
        self.hasLargeTitle = hasLargeTitle
        self.subtitle = subtitle
        self.leadingItems = leadingItems
        self.trailingItems = trailingItems
    }

    // MARK: - Body

    public func body(content: Content) -> some View {
        content.toolBarTop(title,
                           hasLargeTitle: hasLargeTitle,
                           subtitle: subtitle,
                           leadingItems: leadingItems,
                           trailingItems: trailingItems)
    }
}

// MARK: - Extension of View

extension View {

    /// Creates a top toolbar with a title, optional subtitle (for iOS 26+), leading and trailing items.
    ///
    /// The view which contains this *top toolbar* must be placed inside a `NavigationView` or `NavigationStack`,
    /// otherwise th top toolbar won't appear..
    ///
    /// There must be only one *top toolbar*.
    ///
    /// - Parameters:
    ///   - title: The toolbar title. Prefer a non-empty string.
    ///   - hasLargeTitle: If *title* must be displayed in large mode or not, *false* by default. If large mode, the *subtitle* is not displayed
    ///   - subtitle: Optional *subtitle* displayed below the *title* if iOS 26+, *nil* by default.
    ///   - leadingItems: The items displayed on the leading side, *empty* by default.
    ///   - trailingItems: The items displayed on the trailing side, *empty* by default.
    @available(iOS 15, visionOS 1, *)
    public func toolBarTop(_ title: String,
                           hasLargeTitle: Bool = false,
                           subtitle: String? = nil,
                           @OUDSToolBarItemsBuilder leadingItems: @escaping () -> [OUDSToolBarItem] = { [] },
                           @OUDSToolBarItemsBuilder trailingItems: @escaping () -> [OUDSToolBarItem] = { [] }) -> some View
    {
        modifier(ToolBarTopModifier(title: title,
                                    hasLargeTitle: hasLargeTitle,
                                    subtitle: subtitle,
                                    leadingItems: leadingItems,
                                    trailingItems: trailingItems))
    }
}
#endif
