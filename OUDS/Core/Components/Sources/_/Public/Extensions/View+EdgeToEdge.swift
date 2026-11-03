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

// MARK: - Environment values

extension EnvironmentValues {

    /// Flag to define if OUDS components (`ControlItem`, `ListItem`) are used in edgeToEdge context.
    /// Means component is full screen width, so an interal horizontal margin padding is added to align content to other
    /// elements in screen.
    /// Set via ``SwiftUICore/View/oudsUseEdgeToEdge(flag:)``
    @Entry var oudsEdgeToEdge: Bool = true
}

// MARK: - OUDS Component edge to edge usage

/// `ViewModifier` that propagates flag down the environment.
struct OUDSComponentEdgeToEdgeModifier: ViewModifier {

    let useEdgeToEdge: Bool

    func body(content: Content) -> some View {
        content.environment(\.oudsEdgeToEdge, useEdgeToEdge)
    }
}

// MARK: - View extension

extension View {

    /// Flag to display components in full width of screen (edge to edge).
    /// Means component is full screen width, so an interal horizontal margin padding is added to
    /// align verticaly content to other elements in screen.
    ///
    /// ```swift
    /// OUDSSwitchItem(label: "Title", isOn: $isOn)
    ///     .oudsUseEdgeToEdge(true)
    /// ```
    ///
    /// - Parameter flag: The flag value.
    /// - Returns: A view that sets the component edge to edge.
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsUseEdgeToEdge(_ flag: Bool) -> some View {
        modifier(OUDSComponentEdgeToEdgeModifier(useEdgeToEdge: flag))
    }
}

