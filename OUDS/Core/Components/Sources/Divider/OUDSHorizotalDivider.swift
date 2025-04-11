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
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.14.0
public struct OUDSHorizontalDivider: View {

    // - MARK: Stored properties

    private let dividerColor: OUDSDividerColor

    // - MARK: Initializer

    /// Create a horizontal colored divider.
    ///
    /// - Parameters:
    ///     - dividerColor: The color of the divider, `OUDSDividerColor.borderDefault` by default
    public init(dividerColor: OUDSDividerColor = .borderDefault) {
        self.dividerColor = dividerColor
    }

    // - MARK: Body

    public var body: some View {
        Divider().oudsHorizontalDivider(dividerColor: dividerColor)
    }
}

extension Divider {
    /// Set the color to the horizontal divider and adjust the thickness (height)
    /// automatically according to token value.
    ///
    /// - Parameter dividerColor: the color of the divider, `OUDSDividerColor.borderDefault` by default
    ///
    /// **Remark: Horizontal means horizontal line (content separator in a VStack)**
    /// 
    /// - Since: 0.14.0
    @MainActor
    public func oudsHorizontalDivider(dividerColor: OUDSDividerColor = .borderDefault) -> some View {
        self.modifier(DividerModifier(dividerColor: dividerColor, orientation: .horizontal))
    }
}
