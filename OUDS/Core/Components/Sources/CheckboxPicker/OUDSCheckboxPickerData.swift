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

/// The data to use to populate the picker of ``OUDSCheckboxItem`` objects.
/// Each property in this ``OUDSCheckboxPickerData`` is used to define the suitable ``OUDSCheckboxItem``.
///
/// - Since: 0.14.0
public struct OUDSCheckboxPickerData<Tag> where Tag: Hashable {

    /// The identifier, supposed to be unique, to discriminate the element.
    /// This value will be exposed as selection inside the ``OUDSCheckboxPicker``.
    let tag: Tag

    /// The label, main text, the ``OUDSCheckboxItem`` must have
    let label: String

    /// An optional additional label the ``OUDSCheckboxItem`` can have
    let additionalLabel: String?

    /// An optional helper text the ``OUDSCheckboxItem`` can have
    let helper: String?

    /// An optional image the ``OUDSCheckboxItem`` can have
    let icon: Image?

    /// Define if the ``OUDSCheckboxItem`` is outlined or not
    let isOutlined: Bool

    /// Define if the ``OUDSCheckboxItem`` is reversed or not
    let isReversed: Bool

    /// Define if the ``OUDSCheckboxItem`` is in error context or not
    let isError: Bool

    /// Define if the ``OUDSCheckboxItem`` is in read only mode or not
    let isReadOnly: Bool

    /// Define if the ``OUDSCheckboxItem`` has a divider not
    let hasDivider: Bool

    /// Defines the data to use to define the radio buttons (``OUDSCheckboxItem``)
    /// - Parameters:
    ///    - tag: a value to discriminate one checkbox to another
    ///    - label: the mandatory text to add to ``OUDSCheckboxItem``
    ///    - additionalLabel: An optional additional text, default set to nil
    ///    - helper: Another optional text, default set to nil
    ///    - icon: An optional image, default set to nil
    ///    - isOutlined: True to outline the ``OUDSCheckboxItem``, false otherwise (default)
    ///    - isReversed: True to use to reversed layout of the ``OUDSCheckboxItem``, false otherwise (default)
    ///    - isError: True if in an error context, false otherwise (default)
    ///    - isReadOnly: True if read only, false otherwise (default)
    ///    - hasDivider: True if a divider must be added for the current ``OUDSCheckboxItem``, false otherwise (default)
    public init(tag: Tag,
                label: String,
                additionalLabel: String? = nil,
                helper: String? = nil,
                icon: Image? = nil,
                isOutlined: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false) {
        self.tag = tag
        self.label = label
        self.additionalLabel = additionalLabel
        self.helper = helper
        self.icon = icon
        self.isOutlined = isOutlined
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
    }
}
