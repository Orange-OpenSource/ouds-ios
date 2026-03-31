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

extension View {

    /// Adds a margin amount to specific edges of this view.
    /// Indicate the edges to margin by naming either a single value from `Edge/Set`,
    /// or by specifying an `OptionSet`.
    ///
    /// ```swift
    ///   MyView().gridMargin(.horizontal)
    /// ```
    ///
    /// - Parameter edges: The set of edges to add margin for this view (default is  `.all`).
    /// - Returns: A view that's margin are added by the specified amount on the specified edges.
    public func gridMargin(_ edges: Edge.Set = .all) -> some View {
        modifier(GridMarginModifier(edges: edges))
    }

    /// Adds a margin amount to specific edges of this view.
    /// Indicate the edges to margin by naming either a single value from `Edge/Set`,
    /// or by specifying an `OptionSet`.
    ///
    /// ```swift
    ///   MyView().oudsGridMargin(.horizontal)
    /// ```
    ///
    /// - Parameter edges: The set of edges to add margin for this view (default is  `.all`).
    /// - Returns: A view that's margin are added by the specified amount on the specified edges.
    @available(*, deprecated, renamed: "gridMargin(_:)", message: "Use gridMargin(_:) instead")
    public func oudsGridMargin(_ edges: Edge.Set = .all) -> some View {
        gridMargin(edges)
    }
}
