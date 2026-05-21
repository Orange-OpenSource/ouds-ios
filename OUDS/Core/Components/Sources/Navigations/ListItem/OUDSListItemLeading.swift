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
@frozen public enum OOUDSListItemLeading {
    /// An soloaris icon with be tinted according toi state of the item
    case icon(asset: Image)

    /// An image
    case image(asset: Image)

    /// A country flag with the asset
    case flag(asset: Image)

    /// A video from URL
    case video(URL)

    /// An avatar
    case avatar(OUDSListItemAvatar)
}
