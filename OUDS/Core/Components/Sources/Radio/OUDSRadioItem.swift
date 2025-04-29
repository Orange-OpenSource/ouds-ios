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
/// - **reversed**: like the *default* layout but with a trailing radio indicator and a leading optional decorative icon
///
/// ## Indicator states
///
/// The radio indicator has two available states:
/// - **selected**: the radio is filled with a filled circle, the user has made the action to select the radio
/// - **unselected**: the radio is empty, does not contain anything, the user has made the action to unselect or did not select yet the radio
///
/// ## Generic typed
///
/// The radio button can be associated to a specifc type for its *tag*.
/// Indeed a radio button alone with this layout is not that much useful, and should be associated to a *tag* which will permit a ``OUDSRadioPicker``
/// to provide the selected value for a group of radio buttons.
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
/// The ``OUDSRadioItem``can be used outside a dedicated picker, thus it does not need any tag and associated type.
///
/// ```swift
///     // Supposing we have an unselected state
///     @Published var selection: Bool = false
///
///     // A leading radio with a label.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds")
///
///     // A leading radio with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", isReadOnly: true)
///
///     // A leading radio with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", helper: "The Beatles")
///
///     // A leading radio with an additional label.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", additionalLabel: "The Beatles", helper: "1967")
///
///     // A trailing radio with a label, an helper text, an icon, a divider and is about an error.
///     // The reversed layout will be used here.
///     OUDSRadioItem(isOn: $selection,
///                   label: "Rescue from this world!",
///                   helper: "Put your hand in mine",
///                   icon: Image(decorative: "ic_heart"),
///                   isReversed: true,
///                   isError: true,
///                   hasDivider: true)
///
///     // A leading radio with a label, but disabled.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Rescue from this world!")
///         .disabled(true)
///
///     // Never disable a read only or an error-related radio as it will crash
///     // This is forbidden by design!
///     OUDSRadioItem(isOn: $selection, label: "Kaboom!", isError: true).disabled(true) // fatal error
///     OUDSRadioItem(isOn: $selection, label: "Kaboom!", isReadyOnly: true).disabled(true) // fatal error
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
/// However if the ``OUDSRadioItem`` should be used inside a ``OUDSRadioPicker`` for example, it must contain a tag and an associated type.
/// The tag will be the value returned by the picker, and must be an `Hashable`.
///
/// ```swift
///     OUDSRadioItem<String>(isOn: $selection,
///                           tag: "Choice_1",
///                           label: "Virgin Holy Lava",
///                           additionalLabel: "Very spicy",
///                           helper: "No alcohol, only tasty flavors",
///                           icon: Image(systemName: "flame")
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/90c467-radio-button)
///
/// - Since: 0.12.0
public struct OUDSRadioItem<Tag>: View where Tag: Hashable {

    // MARK: - Properties

    // NOTE: Do not forget to keep updated OUDSRadioPickerData
    @Binding private var isOn: Bool
    private let layoutData: ControlItemLabel.LayoutData
    private let tag: Tag?
    private let action: (() -> Void)?

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a radio with label and optional helper text, icon, divider.
    /// Supposed to be used outside a ``OUDSRadioPicker``.
    ///
    /// ```swift
    ///     OUDSRadioItem(isOn: $selection,
    ///                   label: "Virgin Holy Lava",
    ///                   additionalLabel: "Very spicy",
    ///                   helper: "No alcohol, only tasty flavors",
    ///                   icon: Image(systemName: "flame")
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - label: The main label text of the radio.
    ///   - additionalLabel: An additional label text of the radio, default set to `nil`
    ///   - helper: An additonal helper text, should not be empty, default set to `nil`
    ///   - icon: An optional icon, default set to `nil`
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isOutlined: Flag to get an outlined radio, default set to `true`
    ///   - isReversed: `True` of the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - action: An additional action to trigger when the radio button has been pressed
    ///
    /// **Remark: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    public init(isOn: Binding<Bool>,
                label: String,
                additionalLabel: String? = nil,
                helper: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isOutlined: Bool = true,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                action: (() -> Void)? = nil) where Tag == Never? {
        self.init(isOn: isOn,
                  tag: nil,
                  label: label,
                  additionalLabel: additionalLabel,
                  helper: helper,
                  icon: icon,
                  flipIcon: flipIcon,
                  isOutlined: isOutlined,
                  isReversed: isReversed,
                  isError: isError,
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  action: action)
    }

    /// Creates a radio with label and optional helper text, icon, divider.
    /// Supposed to be integrated inside a ``OUDSRadioPicker``.
    ///
    /// ```swift
    ///     OUDSRadioItem<String>(isOn: $selection,
    ///                           tag: "Choice_1",
    ///                           label: "Virgin Holy Lava",
    ///                           additionalLabel: "Very spicy",
    ///                           helper: "No alcohol, only tasty flavors",
    ///                           icon: Image(systemName: "flame")
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - tag: A tag, i.e. a supposed to be unique identifier to discriminate this radio button from others in a group. Useless without ``OUDSRadioPicker``integration.
    ///   - label: The main label text of the radio.
    ///   - additionalLabel: An additional label text of the radio, default set to `nil`
    ///   - helper: An additonal helper text, should not be empty, default set to `nil`
    ///   - icon: An optional icon, default set to `nil`
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isOutlined: Flag to get an outlined radio, default set to `true`
    ///   - isReversed: `True` of the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - action: An additional action to trigger when the radio button has been pressed
    ///
    /// **Remark: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    public init(isOn: Binding<Bool>,
                tag: Tag,
                label: String,
                additionalLabel: String? = nil,
                helper: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isOutlined: Bool = true,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                action: (() -> Void)? = nil) {
        if isError && isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSRadioItem in an error context and in read only mode")
        }

        if let helper, helper.isEmpty {
            OL.warning("Helper text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        if let additionalLabel, additionalLabel.isEmpty {
            OL.warning("Additional label text given to an OUDSRadioitem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        _isOn = isOn
        self.layoutData = .init(
            label: label,
            additionalLabel: additionalLabel,
            helper: helper,
            icon: icon,
            flipIcon: flipIcon,
            isOutlined: isOutlined,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isReversed ? .reversed : .default)
        self.tag = tag
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .radioButton($isOn), layoutData: layoutData, action: action)
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
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_common_disabled_a11y".localized() : ""
        let errorDescription = layoutData.isError ? "core_common_onError_a11y".localized() : ""
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.label), \(layoutData.additionalLabel ?? ""), \(layoutData.helper ?? "") \(errorDescription), \(radioA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            return ""
        } else {
            if _isOn.wrappedValue {
                return "core_radio_hint_selected_a11y" <- "core_common_unselected_a11y".localized()
            } else {
                return "core_radio_hint_unselected_a11y" <- "core_common_selected_a11y".localized()
            }
        }
    }
}
