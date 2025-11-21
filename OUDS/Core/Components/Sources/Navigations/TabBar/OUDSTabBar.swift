//
//  OUDSTabBar.swift.tmp.swift
//  OUDS
//
//  Created by Pierre-Yves Lapersonne on 21/11/2025.
//

import OUDSThemesContract
import SwiftUI

/// The ``OUDSTabBar`` ...
///
/// ## Appearances
///
/// ...
///
/// ## Code samples
///
/// ```swift
///     ...
/// ```
///
/// ## Styles
///
/// ...
///
/// ## Specific behavior
///
/// ...
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](...)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A tab bar component in light and dark mode with Orange theme](component_tabBar_Orange)
///
/// ### Orange Business Tools
///
/// ![A  tab bar component in light and dark mode with Orange Business Tools theme](component_tabBar_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A  tab bar component in light and dark mode with Sosh theme](component_tabBar_Sosh)
///
/// ### Wireframe
///
/// ![A  tab bar component in light and dark mode with Wireframe theme](component_tabBar_Wireframe)
///
/// - Version: xxx (Figma component design version)
/// - Since: 0.23.0
@available(iOS 15, macOS 15, visionOS 1, *)
public struct OUDSTabBar<Content>: View where Content: View {

    @ViewBuilder private let content: () -> Content
    @Environment(\.theme) private var theme

    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        TabView {
            content()
        }
        .oudsAccentColor(theme.colors.contentBrandPrimary)
    }
}
