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

import OUDS
import OUDSTokensSemantic
import SwiftUI

/// A horizontal Divider is used to separate content in vertical layout (VStask).
/// The divider can be colored using dedicated `OUDSDividerColor` colors.
/// The thickness (height) is fixed by dedicated token from `OUDStheme`.
///
/// ```
/// VStack {
///     Text("Hello wolrd!")
///     OUDSHorizontalDivider(color: .brandPrimary)
///     Text("Happy to see you")
/// }
/// ```
public struct OUDSHorizontalDivider: View {

    // - MARK: Stored properties

    private let color: OUDSDividerColor

    // - MARK: Initializer

    /// Create a horizontal colored divider.
    ///
    /// - Parameters:
    ///     - color: The color of the divider, `OUDSDivider.Color.borderDefault` by default
    public init(color: OUDSDividerColor = .borderDefault) {
        self.color = color
    }

    // - MARK: Body

    public var body: some View {
        Divider().oudsHorizontalDivider(color: color)
    }
}

extension Divider {
    /// Set the color to the horizontal divider and adjust the thickness (height)
    /// automatically according to token value.
    ///
    /// - Parameter color: the color of the divider, `OUDSDividerColor.borderDefault` by default
    ///
    /// **Remark: Horizontal means horizontal line (content separator in a VStack)**
    @MainActor
    public func oudsHorizontalDivider(color: OUDSDividerColor = .borderDefault) -> some View {
        self.modifier(DividerModifier(color: color, orientation: .horizontal))
    }
}
