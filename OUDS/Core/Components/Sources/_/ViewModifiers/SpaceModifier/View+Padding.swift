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
    /// Adds an equal padding amount to specific edges of this view according to the `horizontalSizeClass`.
    ///
    /// For mode details see ``View/padding(_:)``.
    ///
    ///  ```
    ///    @Environement(\.theme) private var theme
    ///    Text("Hello world")
    ///       .padding(.all, theme.spaces.scaled2xlarge)
    ///  ```
    ///
    /// - Parameters:
    ///   - edges: The set of edges to pad for this view. The default
    ///     is ``Edge/Set/all``.
    ///   - scaledSpaces: The sementic spaces ``MultipleSpaceSemanticToken`` that defines
    ///     spaces depending to size classes. If you set the value to `nil`, SwiftUI uses
    ///     a platform-specific default amount. The default value of this
    ///     parameter is `nil`.
    ///
    /// - Returns: A view that's padded by the specified amount on the
    ///   specified edges.
    ///
    /// - Since: 1.3.0
    public func padding(_ edge: Edge.Set, _ scaledSpaces: MultipleSpaceSemanticToken) -> some View {
        modifier(VerticalModifier(edge: edge, space: scaledSpaces))
            .modifier(HorizontalModifier(edge: edge, space: scaledSpaces))
    }
}
