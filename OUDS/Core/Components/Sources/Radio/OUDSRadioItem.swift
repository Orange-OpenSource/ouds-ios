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
/// If you want to use a radio with only an indicator, prefer instead ``OUDSRadio``.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading indicator, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing radio indicator and a leading optional decorative icon
///
/// ## Indicator states
///
/// The radio indicator has two available states:
/// - **selected**: the radio is filled with a filled circle, the user has made the action to select the radio
/// - **unselected**: the radio is empty, does not contain anything, the user has made the action to unselect or did not select yet the radio
///
/// ## Particular cases
///
/// An ``OUDSRadioItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSRadioItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
/// The radio can be also outlined in some cases.
///
/// The component does not follow the right-to-left (RTL) / left-to-right (LTR) mode returned by the system as it could have some meaning
/// to have for example the indicator in trailing position for LTR mode and vice versa.
/// However, if the component has an icon in leading position (RTL mode) or in trailing position (LTR), the content of the icon is never changed.
/// It could lead to a loss of meaning or semantics in the icon. Thus a specific flag can be used to flip the icon content whatever the layout direction is.
/// It prevents the user do implement its own rules to flip or not image.
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
///     OUDSRadioItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds")
///
///     // A leading radio with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", isReadOnly: true)
///
///     // A leading radio with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", helperText: "The Beatles")
///
///     // A leading radio with an additional label.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", additionalLabelText: "The Beatles", helperText: "1967")
///
///     // A trailing radio with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSRadioItem(isOn: $selection,
///                   labelText: "Rescue from this world!",
///                   helperText: "Put your hand in mine",
///                   icon: Image(decorative: "ic_heart"),
///                   isInversed: true,
///                   isError: true,
///                   hasDivider: true)
///
///     // A leading radio with a label, but disabled.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, labelText: "Rescue from this world!")
///         .disabled(true)
///
///     // Never disable a read only or an error-related radio as it will crash
///     // This is forbidden by design!
///     OUDSRadioItem(isOn: $selection, labelText: "Kaboom!", isError: true).disabled(true) // fatal error
///     OUDSRadioItem(isOn: $selection, labelText: "Kaboom!", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// If you want to manage the RTL mode quite easily and switch your layouts (flip image, indicator in RTL leading i.e. in the right):
/// ```swift
///     @Environment(\.layoutDirection) var layoutDirection
///
///     OUDSRadioItem(isOn: $selection,
///                   labelText: "Cocorico !",
///                   icon: Image(systemName: "figure.handball"),
///                   flipIcon: layoutDirection == .rightToLeft,
///                   isInversed: layoutDirection == .rightToLeft)
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/90c467-radio-button)
///
/// - Since: 0.12.0
public struct OUDSRadioItem: View {

    // MARK: - Properties

    @Binding private var isOn: Bool
    private let layoutData: ControlItemLabel.LayoutData

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a radio with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - labelText: The main label text of the radio.
    ///   - additionalLabelText: An additional label text of the radio, default set to `nil`
    ///   - helperText: An additonal helper text, should not be empty, default set to `nil`
    ///   - icon: An optional icon, default set to `nil`
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isOutlined: Flag to get an outlined radio, default set to `true`
    ///   - isInversed: `True` of the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///
    /// **Remark: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    public init(isOn: Binding<Bool>,
                labelText: String,
                additionalLabelText: String? = nil,
                helperText: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isOutlined: Bool = true,
                isInversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSRadioItem in an error context and in read only mode")
        }

        if let helperText, helperText.isEmpty {
            OL.warning("Helper text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        if let additionalLabelText, additionalLabelText.isEmpty {
            OL.warning("Additional label text given to an OUDSRadioitem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        _isOn = isOn

        self.layoutData = .init(
            labelText: labelText,
            additionalLabelText: additionalLabelText,
            helperText: helperText,
            icon: icon,
            flipIcon: flipIcon,
            isOutlined: isOutlined,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isInversed ? .inverse : .default)
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .radioButton($isOn), layoutData: layoutData)
            .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
            .accessibilityLabel(a11yLabel)
            .accessibilityValue(a11yValue.localized())
            .accessibilityHint(a11yHint)
    }

    /// The text to vocalize with *Voice Over* for the state of the indicator
    private var a11yValue: String {
        _isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state.
    private var a11yLabel: String {
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_commmon_disabled_a11y".localized() : ""
        let errorDescription = layoutData.isError ? "core_common_onError_a11y".localized() : ""
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.labelText), \(layoutData.additionalLabelText ?? ""), \(layoutData.helperText ?? "") \(errorDescription), \(radioA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            return ""
        } else {
            return "core_radio_hint_a11y" <- (_isOn.wrappedValue ? "core_common_unselected_a11y" : "core_common_selected_a11y").localized()
        }
    }
}
