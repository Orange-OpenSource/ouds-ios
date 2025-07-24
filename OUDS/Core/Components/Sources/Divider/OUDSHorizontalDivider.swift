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

/// A horizontal Divider is used to separate content laid out one under the other (`VStack`).
/// The divider can be colored using dedicated ``OUDSDividerColor`` colors.
/// The thickness (height) is fixed by dedicated token from `OUDSTheme`.
///
/// ```swift
/// VStack {
///     Text("Hello wolrd!")
///     OUDSHorizontalDivider(color: .brandPrimary)
///     Text("Happy to see you")
/// }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/629e1b-divider)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 0.14.0
public struct OUDSHorizontalDivider: View { // TODO: #511 - Update documentation hyperlink

    // MARK: - Stored properties

    private let color: OUDSDividerColor

    // MARK: - Initializer

    /// Create a horizontal colored divider.
    ///
    /// - Parameter color: The color of the divider, `OUDSDividerColor.default` by default
    public init(color: OUDSDividerColor = .default) {
        self.color = color
    }

    // MARK: - Body

    public var body: some View {
        Divider().oudsHorizontalDivider(dividerColor: color)
    }
}

extension Divider {
    /// Set the color to the horizontal divider and adjust the thickness (height)
    /// automatically according to token value.
    ///
    /// ```swift
    /// VStack {
    ///     Text("Hello wolrd!")
    ///        .oudsHorizontalDivider(dividerColor: .brandPrimary)
    ///
    ///     Text("Happy to see you")
    /// }
    /// ```
    ///
    /// - Parameter dividerColor: the color of the divider, `OUDSDividerColor.default` by default
    ///
    /// **Remark: Horizontal means horizontal line (content separator in a VStack)**
    @MainActor
    public func oudsHorizontalDivider(dividerColor: OUDSDividerColor = .default) -> some View {
        modifier(DividerModifier(dividerColor: dividerColor, orientation: .horizontal))
    }
}
