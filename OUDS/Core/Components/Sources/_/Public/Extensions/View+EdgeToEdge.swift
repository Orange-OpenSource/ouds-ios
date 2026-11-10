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

    /// Flag to define if OUDS components (`ControlItem`, `ListItem`) are used in edge-to-edge context.
    /// Means component is full screen width, so an internal horizontal margin padding is added to align content to other
    /// elements in screen.
    /// Set via ``SwiftUICore/View/oudIsEdgeToEdge(_:)``
    @Entry var isEdgeToEdge: Bool = true
}

// MARK: - Edge to Edge View Modifier

/// `ViewModifier` that propagates flag down the environment.
struct EdgeToEdgeComponentModifier: ViewModifier {

    let useEdgeToEdge: Bool

    func body(content: Content) -> some View {
        content.environment(\.isEdgeToEdge, useEdgeToEdge)
    }
}

// MARK: - View extension

extension View {

    /// Flag to display components in full width of screen (edge to edge).
    /// Means component is full screen width, so an internal horizontal margin padding is added to
    /// align verticaly content to other elements in screen.
    ///
    /// ```swift
    /// OUDSSwitchItem(label: "Title", isOn: $isOn)
    ///     .oudIsEdgeToEdge(true)
    /// ```
    ///
    /// - Parameter isEdgeToEdge: True if component must be edge-to-edge, false otherwise.
    /// - Returns: A view that sets the component edge to edge.
    /// - Since: 3.3.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudIsEdgeToEdge(_ isEdgeToEdge: Bool) -> some View {
        modifier(EdgeToEdgeComponentModifier(useEdgeToEdge: isEdgeToEdge))
    }
}
