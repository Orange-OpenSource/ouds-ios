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

import OUDSFoundations
import SwiftUI

// MARK: - Radio Item Picker

/// A picker allowing to expose several radio buttons and choose only one within the others.
/// Each radio button contains a "tag", i.e. a supposed to be unique value.
/// The picked will exposed the choosen value throug this "tag".
///
/// - Since: 0.14.0
public struct OUDSRadioPicker<Tag>: View where Tag: Hashable {

    /// The tag of the selected radio button
    var selection: Binding<Tag>

    /// The list of data to wrapp in ``OUDSRadiooItem`` inside this picker
    private let radios: [OUDSRadioPickerData<Tag>]

    @Environment(\.theme) private var theme

    // TODO: Forced properties (divider, readonly, error, reversed, outlined)

    /// Defines the picker view which displays using ``OUDSRadioItem`` view the ``OUDSRadioPickerData``
    /// - Parameters:
    ///    - selection: The current selected value
    ///    - radios: The raw data to wrap in ``OUDSRadioItem`` for display
    public init(selection: Binding<Tag>, radios: [OUDSRadioPickerData<Tag>]) {
        self.selection = selection
        self.radios = radios
        verifySelection()
    }

    // MARK: - Helpers

    /// Checks if the given selection is available only one time within the radio configurations.
    /// if not, displays a error message.
    private func verifySelection() {
        let selection = selection.wrappedValue
        let selectionCount = radios.count(where: { $0.tag == selection })
        if selectionCount == 0 {
            OL.error("It seems the selection '\(selection)' is not available inside the radio buttons. Be sure the value is available in only one tag.")
        } else if selectionCount > 1 {
            OL.error("It seems the selection '\(selection)' is available more than one time. Be sure the value is available in only one tag.")
        }
    }
    // MARK: - Body

    public var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
            ForEach(radios, id: \.tag) { radio in
                content(for: radio)
            }
        }
    }

    private func content(for radio: OUDSRadioPickerData<Tag>) -> some View {
        OUDSRadioItem<Tag>(isOn: selection.wrappedValue == radio.tag ? .constant(true) : .constant(false),
                           labelText: radio.label,
                           additionalLabelText: radio.additionalLabel,
                           helperText: radio.helper,
                           icon: radio.icon,
                           isOutlined: radio.isOutlined,
                           isInversed: radio.isReversed,
                           isError: radio.isError,
                           isReadOnly: radio.isReadOnly,
                           hasDivider: radio.hasDivider,
                           tag: radio.tag) {
            selection.wrappedValue = radio.tag
        }
    }
}

// MARK: - Radio Picker Data

/// The data to use to populate the picker of ``OUDSRadioItem`` objects
public struct OUDSRadioPickerData<Tag> where Tag: Hashable {

    /// The identifier, supposed to be unique, to discriminate the element.
    /// This value will be exposed as selection inside the ``OUDSRadioPicker``.
    let tag: Tag

    /// The label, main text, the ``OUDSRadioItem`` must have
    let label: String

    /// An optional additional label the ``OUDSRadioItem`` can have
    let additionalLabel: String?

    /// An optional helper text the ``OUDSRadioItem`` can have
    let helper: String?

    /// An optional image the ``OUDSRadioItem`` can have
    let icon: Image?

    /// Define if the ``OUDSRadioItem`` is outlined or not (default set to *false*)
    let isOutlined: Bool

    /// Define if the ``OUDSRadioItem`` is reversed or not (default set to *false*)
    let isReversed: Bool

    /// Define if the ``OUDSRadioItem`` is in error context or not (default set to *false*)
    let isError: Bool

    /// Define if the ``OUDSRadioItem`` is in read only mode or not (default set to *false*)
    let isReadOnly: Bool

    /// Define if the ``OUDSRadioItem`` as a divider not (default set to *false*)
    let hasDivider: Bool

    /// Defines the data to use to define the radio buttons (``OUDSRadioItem``)
    /// - Parameters:
    ///     - tag: a value to discriminate one radio to another
    ///     - label: the mandatory text to add to ``OUDSRadioItem``
    ///     - additionalLabel: An optional additinal text, default set to nil
    ///     - helper: Another optional text, default set to nil
    ///     - icon: An optional image, default set to nil
    ///     - isOutlined: True to outline the ``OUDSRadioItem``, false otherwise (default)
    ///     - isReversed: True to use to reversed layour of the ``OUDSRadioItem``, false otherwise (default)
    ///     - isError: True if in an error context, false otherwise (default)
    ///     - isError: True if read only, false otherwise (default)
    ///     - hasDivider: True if a divider must be added for the current ``OUDSRadioItem``, false otherwise (default)
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
