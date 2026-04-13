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

#if !os(watchOS) && !os(tvOS) && !os(macOS)
import SwiftUI

/// Use a navigation stack to present a stack of views over a root view.
/// and let system applies theme colors on navigation bar appearance.
///
/// - Since: 1.4.0
public struct OUDSNavigationStack<Content: View>: View {

    // MARK: - Properties

    private let hideBackButtonLabel: Bool
    @ViewBuilder private let content: Content

    // MARK: - Initializer

    /// Creates a navigation stack and apply the right appearance according to the current theme.
    ///
    /// - Parameters:
    ///    - hideBackButtonLabel: Flag to say if the label in back button should be hidden. `true` by default
    ///    - content: The stack view's content.
    public init(hideBackButtonLabel: Bool = true,
                @ViewBuilder content: @escaping () -> Content)
    {
        self.hideBackButtonLabel = hideBackButtonLabel
        self.content = content()
    }

    // MARK: - Body

    public var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack { updatedContent }
        } else {
            NavigationView { updatedContent }
                .navigationViewStyle(.stack)
        }
    }

    private var updatedContent: some View {
        content.oudsNavigationBarAppearance(hideBackButtonLabel: hideBackButtonLabel)
    }
}

extension View {

    /// Can be used to apply the right elements on navigation bar according to the current theme
    /// (tiltes fonts, colors, and back indicator).
    /// If needed, it is possible to remove the label of the back button (associated to previous chevron).
    ///
    /// - Parameter hideBackButtonLabel: Flag to say if the label in back button should be hidden. `false` by default
    public func oudsNavigationBarAppearance(hideBackButtonLabel: Bool = false) -> some View {
        modifier(NavigationStackRefresher(hideBackButtonLabel: hideBackButtonLabel))
    }
}
#endif
