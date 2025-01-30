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

    /// Modifies the current `View` to apply a divider under.
    ///
    /// ```swift
    ///    var body: some View {
    ///        SomeView()
    ///           .divider()
    /// ```
    /// - Parameter:
    ///   - show: if true the divider is displayed, else there is no divider.
    ///
    /// - Returns some View: The current `View` but with a divider under.
    public func oudsDivider(show: Bool = true) -> some View {
        self.modifier(DividerModifier(show: show))
    }
}
