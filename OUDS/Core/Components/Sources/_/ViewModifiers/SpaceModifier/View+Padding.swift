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

import OUDSTokensSemantic
import SwiftUI

extension View {

    /// Adds an equal padding amount to specific edges of this view using tokens.
    ///
    /// ```swift
    ///    @Environement(\.theme) private var theme
    ///    Text("Hello world")
    ///       .padding(.all, theme.spaces.scaled2xlarge)
    /// ```
    ///
    /// - Parameters:
    ///     - edge: The set of edges to pad for this view.
    ///     - scaledSpaces: The sementic spaces `MultipleSpaceSemanticToken` that defines spaces depending to size classes.
    ///     If set to `nil`, SwiftUI uses a platform-specific default amount. Default set to `nil`.
    /// - Returns: A view that's padded by the specified amount on the specified edges.
    public func padding(_ edge: Edge.Set, _ scaledSpaces: MultipleSpaceSemanticToken) -> some View {
        modifier(VerticalModifier(edge: edge, space: scaledSpaces))
            .modifier(HorizontalModifier(edge: edge, space: scaledSpaces))
    }
}
