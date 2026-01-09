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

/// Divider is a UI element that allows to structure the content by visually separating the content zones.
/// Divider improves readability and content organization without introducing a stronger visual hierarchy like a heading or a container would.
/// A horizontal Divider is used to separate content laid out one under the other (`VStack`).
/// The divider can be colored using dedicated ``OUDSDividerColor`` colors.
/// The thickness (height) is fixed by dedicated token from `OUDSTheme`.
///
/// ## Code samples
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-divider)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An horizontal divider component in light and dark modes with Orange theme](component_horizontalDivider_Orange)
///
/// ### Orange Business Tools
///
/// ![A horizontal divider component in light and dark modes with Orange Business Tools theme](component_horizontalDivider_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A horizontal divider component in light and dark modes with Sosh theme](component_horizontalDivider_Sosh)
///
/// ### Wireframe
///
/// ![A horizontal divider component in light and dark modes with Wireframe theme](component_horizontalDivider_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 0.14.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSHorizontalDivider: View {

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
    ///
    ///     Divider()
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
        modifier(DividerModifier(orientation: .horizontal, dividerColor: dividerColor))
    }
}
