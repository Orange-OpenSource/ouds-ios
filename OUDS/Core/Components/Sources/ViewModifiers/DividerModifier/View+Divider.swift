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

    /// Modifies the current `View` to apply a divider below.
    ///
    /// ```swift
    ///    var body: some View {
    ///        SomeView()
    ///           .oudsDivider(show: true)
    /// ```
    /// - Parameter show: if true the divider is displayed, else there is no divider.
    ///
    /// - Returns: The current `View` but with a divider below.
    ///
    /// - Since: 0.11.0
    public func oudsDivider(show: Bool = true) -> some View {
        self.modifier(DividerModifier(show: show))
    }
}
