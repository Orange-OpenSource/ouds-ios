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

/// Describes the visual style of an ``OUDSCard``, defining how its background, borders
/// and elevation are rendered.
///
/// - Since: 3.4.0
@available(iOS 15, macOS 13, visionOS 1, tvOS 16, *)
@frozen public enum OUDSCardStyle {

    /// A card with a filled background, with no border and no elevation.
    ///
    /// - Parameters:
    ///    - divider: If `true`, a divider is displayed inside the card to visually separate its content.
    ///    - useDefaultBackground: If `true` (default), the card uses the default themed background color.
    ///      If `false`, the card does not apply any background, letting the content define its own background.
    case filled(divider: Bool, useDefaultBackground: Bool = true)

    /// A card with no background fill, but with a visible border around its content.
    case outlined

    /// A card with an elevation (shadow) effect, with no visible border.
    ///
    /// - Parameter useDefaultBackground: If `true` (default), the card uses the default themed background color.
    ///   If `false`, the card does not apply any background, letting the content define its own background.
    case elevated(useDefaultBackground: Bool = true)
}
