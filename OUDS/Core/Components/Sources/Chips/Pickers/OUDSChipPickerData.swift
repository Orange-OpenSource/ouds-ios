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

/// The data to use to populate the picker of ``OUDSFilterChip`` objects.
/// Each property in this ``OUDSChipPickerData`` is used to define the suitable ``OUDSFilterChip``.
///
/// - Since: 0.16.0
public struct OUDSChipPickerData<Tag> where Tag: Hashable {

    /// The identifier, supposed to be unique, to discriminate the element.
    /// This value will be exposed as selection inside the ``OUDSChipPicker``.
    let tag: Tag

    /// The layout of the ``OUDSFilterChip``.
    ///
    /// **Remark: For texts, strings are wording keys from strings catalog stored in `Bundle.main`, they are automatically localized. Else, prefer to
    /// provide the localized string if key is stored in another bundle.**
    public enum Layout {
        /// Layout with text only
        case text(text: String)

        /// Layout with icon only and its accessibility label
        case icon(icon: Image, accessibilityLabel: String)

        /// Layout with text and icon
        case textAndIcon(text: String, icon: Image)
    }

    /// The layout of the ``OUDSFilterChip``
    let layout: Layout

    /// Defines the data to use to define the chip (``OUDSFilterChip``)
    /// - Parameters:
    ///    - tag: a value to discriminate one chip to another
    ///    - layout: the layout of the ``OUDSFilterChip``
    public init(tag: Tag, layout: Layout) {
        self.tag = tag
        self.layout = layout
    }
}
