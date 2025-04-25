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

/// A picker allowing to expose several radio buttons and choose only one within the others.
/// Each radio button contains a "tag", i.e. a supposed to be unique value.
/// The picker will expose the choosen value through this "tag".
/// It has also some configuration elements which will override the one applied to nested ``OUDSRadioItem`` (divider, read only and error mode, layout and outlined)
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom radio trait.
///
/// ## Forbidden by design
///
/// The design system does not allow to have ``OUDSRadioItem`` in both an error situation and a read only state.
/// The design system does not allow to have ``OUDSRadioItem`` in both an error situation and a disabled state.
/// The design system does not allow to have ``OUDSRadioItem`` in both a read only and a disabled state.
///
/// ## Code samples
///
/// ```swift
///     // Define the elements to display in radio buttons using OUDSRadioPickerData.
///     // This object has the same properties as the OUDSRadioItem,
///     // and some of them are optional withdefault values set
///     var someDataToPopulate: [OUDSRadioPickerData<String>] {
///         [
///             OUDSRadioPickerData<String>(tag: "Choice_1",
///                                         label: "Virgin Holy Lava",
///                                         additionalLabel: "Very spicy",
///                                         helper: "No alcohol, only tasty flavors",
///                                         icon: Image(systemName: "flame")),
///
///             OUDSRadioPickerData<String>(tag: "Choice_2",
///                                         label: "IPA beer",
///                                         helper: "From Brewdog company",
///                                         icon: Image(systemName: "dog.fill")),
///
///             OUDSRadioPickerData<String>(tag: "Choice_3",
///                                         label: "Mineral water",
///                                         icon: Image(systemName: "waterbottle.fill")),
///         ]
///     }
///
///     // Prepare the selection, with a value previously selected
///     // Use the data and the binding for the picker.
///     @State var selection: String = "Choice_1"
///
///     // Here the picker is vertical
///     OUDSRadioPicker(selection: $selection, radios: someDataToPopulate)
///
///     // The picker can apply some settings to all its radio buttons.
///     // It can be also horitzontal with a scroll indicator.
///     // Here all the the radio buttons are in read only mode and use reversed layout.
///     OUDSRadioPicker(selection: $selection,
///                     radios: someDataToPopulate,
///                     isReversed: true,
///                     isReadOnly: true,
///                     placement: .horitzontal(true))
/// ```
///
/// - Since: 0.14.0
public struct OUDSRadioPicker<Tag>: View where Tag: Hashable {

    // MARK: - Properties

    /// The tag of the selected radio button
    var selection: Binding<Tag>

    /// The list of data to wrap in ``OUDSRadiooItem`` inside this picker
    private let radios: [OUDSRadioPickerData<Tag>]

    /// The type of layout the picker must have
    private let placement: OUDSRadioPickerPlacement

    /// Overrides any configuration applied to embeded ``OUDSRadioItem`` and displays a divider (except for the last one)
    private let hasDivider: Bool

    /// Overrides any configuration applied to embeded ``OUDSRadioItem`` and forces them to read only mode
    private let isReadOnly: Bool

    /// Overrides any configuration applied to embeded ``OUDSRadioItem`` and forces them to error mode
    private let isError: Bool

    /// Overrides any configuration applied to embeded ``OUDSRadioItem`` and forces them to apply the reversed layout
    private let isReversed: Bool

    /// Overrides any configuration applied to embeded ``OUDSRadioItem`` and forces them to apply the outlined layout
    private let isOutlined: Bool

    @Environment(\.theme) private var theme

    // MARK: - Init

    /// Defines the picker view which displays using ``OUDSRadioItem`` view the ``OUDSRadioPickerData``
    /// - Parameters:
    ///    - selection: The current selected value
    ///    - radios: The raw data to wrap in ``OUDSRadioItem`` for display
    ///    - placement: How radio buttons must be placed (default set to *vertical*)
    ///    - isOutlined: If *true*, force all ``OUDSRadioItem`` to be outlined (default set to *false*)
    ///    - isReversed: If *true*, force all ``OUDSRadioItem`` to have reversed layout (default set to *false*)
    ///    - isError: If *true*, force all ``OUDSRadioItem`` to be in error mode (default set to *false*)
    ///    - isReadOnly: If *true*, force all ``OUDSRadioItem`` to be in read only mode (default set to *false*)
    ///    - hasDivider: If *true*, force all ``OUDSRadioItem`` except the last one to have a divider (default set to *false*)
    public init(selection: Binding<Tag>,
                radios: [OUDSRadioPickerData<Tag>],
                placement: OUDSRadioPickerPlacement = .vertical,
                isOutlined: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false) {
        self.selection = selection
        self.radios = radios
        self.placement = placement
        self.isOutlined = isOutlined
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
        verifySelection()
    }

    // MARK: - Helpers

    /// Checks if the given selection is available only one time within the radio configurations.
    /// If not, displays a error message in the logs.
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
        switch placement {
        case .horizontal(let showsIndicator):
            ScrollView(.horizontal, showsIndicators: showsIndicator) {
                HStack(alignment: .center, spacing: theme.spaces.spaceFixedNone) {
                    content(for: radios)
                }
            }
        case .vertical:
            VStack(alignment: .leading, spacing: theme.spaces.spaceFixedNone) {
                content(for: radios)
            }
        }
    }

    private func content(for radios: [OUDSRadioPickerData<Tag>]) -> some View {
        ForEach(radios, id: \.tag) { radio in
            content(for: radio,
                    noDivider: (radios[radios.count - 1].tag == radio.tag)) // No divider for last item
        }
    }

    private func content(for radio: OUDSRadioPickerData<Tag>, noDivider: Bool) -> some View {
        OUDSRadioItem<Tag>(isOn: selection.wrappedValue == radio.tag ? .constant(true) : .constant(false),
                           tag: radio.tag,
                           label: radio.label,
                           additionalLabel: radio.additionalLabel,
                           helper: radio.helper,
                           icon: radio.icon,
                           isOutlined: isOutlined ? true : radio.isOutlined,
                           isReversed: isReversed ? true : radio.isReversed,
                           isError: isError ? true : radio.isError,
                           isReadOnly: isReadOnly ? true : radio.isReadOnly,
                           hasDivider: hasDivider && !noDivider ? true : radio.hasDivider) {
            selection.wrappedValue = radio.tag
        }
    }
}
