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

/// A vertical Divider is used to separate content laid out side by side (`HStack`).
/// The divider can be colored using dedicated ``OUDSDividerColor`` colors.
/// The thickness (width) is fixed by dedicated token from `OUDSTheme`.
///
/// ```swift
/// HStack {
///     Text("Hello wolrd!")
///     OUDSVerticalDivider(color: .brandPrimary)
///     Text("Happy to see you")
/// }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/73c701-components)
///
/// - Since: 0.14.0
public struct OUDSVerticalDivider: View { // TODO: #511 - Update documentation hyperlink

    // MARK: - Stored properties

    private let color: OUDSDividerColor

    // MARK: - Initializer

    /// Create a vertical colored divider.
    ///
    /// - Parameter color: The color of the divider, `OUDSDivider.Color.borderDefault` by default
    ///
    /// **Remark: Vertical means vertical line (content separator in a HStack)**
    public init(color: OUDSDividerColor = .borderDefault) {
        self.color = color
    }

    // MARK: - Body

    public var body: some View {
        Divider().oudsVerticalDivider(color: color)
    }
}

extension Divider {
    /// Set the color to the vertical divider and adjust the thickness (width)
    /// automatically according to token value.
    ///
    /// ```swift
    /// HStack {
    ///     Text("Hello wolrd!")
    ///        .oudsVerticalDivider(color: .brandPrimary)
    ///
    ///     Text("Happy to see you")
    /// }
    /// ```
    ///
    /// - Parameter color: the color of the divider, `OUDSDividerColor.borderDefault` by default
    ///
    /// **Remark: Vertical means vertical line (content separator in a HStack)**
    @MainActor
    public func oudsVerticalDivider(color: OUDSDividerColor) -> some View {
        modifier(DividerModifier(dividerColor: color, orientation: .vertical))
    }
}
