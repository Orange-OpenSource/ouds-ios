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

/// A `ViewModifier` which will apply a specific divider under a `View` using color and size semantic token for a specified orientation.
///
/// - Since: 0.13.0
struct DividerModifier: ViewModifier {

    /// Divider orientation
    enum Orientation {
        case horizontal
        case vertical
    }

    // MARK: Stored properties

    let dividerColor: OUDSDividerColor
    let orientation: Orientation

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    // - MARK: Body

    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .overlay(dividerColor.colorToken(in: theme).color(for: colorScheme))
    }

    // - MARK: Private helper

    var height: CGFloat? {
        switch orientation {
        case .horizontal:
            return theme.divider.dividerBorderWidth
        case .vertical:
            return nil
        }
    }

    var width: CGFloat? {
        switch orientation {
        case .horizontal:
            return nil
        case .vertical:
            return theme.divider.dividerBorderWidth
        }
    }
}
