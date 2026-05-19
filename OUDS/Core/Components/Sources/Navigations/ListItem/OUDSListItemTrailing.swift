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

/// Defines the elements can be added at leading of the list item
///
/// - Since: 2.0.0
@frozen public enum OOUDSListItemTrailing {

    /// Define the type of trailing text
    ///
    /// - Since: 2.0.0
    @frozen public enum TextType {
        /// Default label
        case label(Text)

        /// Muted label
        case labelMuted(Text)

        /// Strong label
        case labelStrong(Text)

        ///  Default label and additional extra label.
        ///  **Remark: For small size of the list item, the extra label is ignored**
        case labelAndExtraLabel(Text, Text)
    }

    /// A text
    case text(TextType)

    /// A badge
    case badge(OUDSBadge)

    /// A tag
    case tag(OUDSTag)

    /// An solaris icon with be tinted according toi state of the item
    case icon(asset: Image)

    /// An image
    case image(asset: Image)

    /// A country flag with the asset
    case flag(asset: Image)

    /// A video from URL
    case video(URL)
}
