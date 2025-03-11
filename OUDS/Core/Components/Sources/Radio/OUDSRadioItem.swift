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

// MARK: - OUDS Radio Item

/// The ``OUDSRadioItem`` proposes layouts to add in your views some radios components.
/// If you want to use a radio with only a indicator, prefer instead ``OUDSRadio``.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading selector, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing radio seelctor and a leading optional image
///
/// ## Selector states
///
/// The radio selector has three available states:
/// - **selected**: the radio is filled with a tick, the user has made the action to select the radio
/// - **unselected**: the radio is empty, does not contain a tick, the user has made the action to unselect or did not select yet the radio
/// - **undeterminate**: mike a prefilled or preticked radio, the user did not do anything on it yet
///
/// ## Particular cases
///
/// An ``OUDSRadioItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSRadioItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom radio trait.
///
/// ## Forbidden by design
///
/// **The design system does not allow to have both an error situation and a read only component.**
/// **The design system does not allow to have both an error situation and a disabled component.**
/// **The design system does not allow to have both a read only and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an unselected state
///     @Published var selection: Bool = false
///
///     // A leading radio with a label.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Hello world")
///
///     // A leading radio with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Hello world", isReadOnly: true)
///
///     // A leading radio with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Bazinga!", helperText: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing radio with a label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSRadioItem(isOn: $selection,
///                      labelText: "We live in a fabled world",
///                      helperText: "Of dreaming boys and wide-eyed girls",
///                      isInversed: true,
///                      icon: Image(decorative: "ic_heart"))
///
///     // A trailing radio with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSRadioItem(isOn: $selection,
///                      labelText: "Rescue from this world!",
///                      helperText: "Put your hand in mine",
///                      icon: Image(decorative: "ic_heart"),
///                      isInversed: true,
///                      isError: true,
///                      divider: true)
///
///     // A leading radio with a label, but disabled.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Hello world")
///         .disabled(true)
///
///     // Never disable a read only or an error-related radio as it will crash
///     // This is forbidden by design!
///     OUDSRadioItem(isOn: $selection, labelText: "Hello world", isError: true).disabled(true) // fatal error
///     OUDSRadioItem(isOn: $selection, labelText: "Hello world", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-radio](https://unified-design-system.orange.com/472794e18/p/23f1c1-radio)
///
/// - Since: 0.12.0
public struct OUDSRadioItem: View {

    // MARK: - Properties

    private let layoutData: ControlItemLabel.LayoutData
    @Binding private var isOn: Bool

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a radio with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///    - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - labelText: The main label text of the radio.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isInversed: `True` of the radio selector must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    public init(isOn: Binding<Bool>,
                labelText: String,
                helperText: String? = nil,
                icon: Image? = nil,
                isInversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDS Radio in an error context and in read only mode")
        }

        if let helperText, helperText.isEmpty {
            OL.warning("Helper text given to an OUDS Radio is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        _isOn = isOn

        self.layoutData = .init(
            labelText: labelText,
            helperText: helperText,
            icon: icon,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isInversed ? .inverse : .default)
    }

    // MARK: Body

    public var body: some View {
        Button("") {
            if !layoutData.isReadOnly {
                $isOn.wrappedValue.toggle()
            }
        }
        .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
        .accessibilityLabel(a11yLabel)
        .accessibilityValue(a11yValue)
        .accessibilityHint(a11yHint)
        .buttonStyle(ControlItemStyle(selectorType: .radioButton($isOn), layoutData: layoutData))
    }

    /// The text to vocalize with *Voice Over* for the state of the selector
    private var a11yValue: String {
        _isOn.wrappedValue ? "core_checkbox_selector_selected_a11y" :
            "core_checkbox_selector_unselected_a11y"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state.
    private var a11yLabel: String {
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_radio_disabled_a11y".localized() : ""
        let errorDescription = layoutData.isError ? "core_radio_error_a11y".localized() : ""
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.labelText), \(layoutData.helperText ?? "") \(errorDescription), \(radioA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            return ""
        } else {
            if _isOn.wrappedValue {
                return "core_checkbox_selector_hint_a11y" <- "core_checkbox_selector_unselected_a11y".localized()
            } else {
                return "core_checkbox_selector_hint_a11y" <- "core_checkbox_selector_selected_a11y".localized()
            }
        }
    }
}
