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

// MARK: - OUDSThemesContract Radio Item

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
/// ## Particular cases
///
/// An ``OUDSRadioItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In that case if the component displayed an icon, this icon will be replaced automatically by an error icon.
///
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
/// No accessibility identifier is defined in OUDSThemesContract side as this value remains in the users hands.
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
///     // A leading radio with a label, and an additional label but without text.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", additionalLabel: "The Beatles")
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
///     // If on error, add an error message can help user to understand error context
///     OUDSRadioItem(isOn: $selection,
///                   label: "Rescue from this world!",
///                   isError: true,
///                   errorText: "Something wrong",
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
/// If you need to flip your icon depending to the layout direction or not (e.g. if RTL mode lose semantics  / meanings):
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
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/90c467-radio-button)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A radio item component in light and dark mode with Orange theme](component_radioItem_Orange)
///
/// ### Orange Business Tools
///
/// ![A radio item component in light and dark mode with Orange Business Tools theme](component_radioItem_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A radio item component in light and dark mode with Sosh theme](component_radioItem_Sosh)
///
/// ### Wireframe
///
/// ![A radio item component in light and dark mode with Wireframe theme](component_radioItem_Wireframe)
///
/// - Version: 1.3.0 (Figma component design version)
/// - Since: 0.12.0
@available(iOS 15, macOS 15, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSRadioItem: View {

    // MARK: - Properties

    // NOTE: Do not forget to keep updated OUDSRadioPickerData
    @Binding private var isOn: Bool
    private let layoutData: ControlItemLabel.LayoutData
    private let action: (() -> Void)?

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializer

    /// Creates a radio with label and optional helper text, icon, divider.
    /// Supposed to be integrated inside a ``OUDSRadioPicker``.
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
    ///   - isOutlined: Flag to get an outlined radio, default set to `false`
    ///   - isReversed: `True` of the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. This message is ignored if `isError` is `false`.
    ///   The `errorText`can be different if switch is selected or not.
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - action: An additional action to trigger when the radio button has been pressed
    ///
    /// **Remark 1: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    ///
    /// **Remark 2: If `label` and `helper` strings are wording keys from strings catalog stored in `Bundle.main`, they are automatically localized. Else, prefer to
    /// provide the localized string if key is stored in another bundle.**
    public init(isOn: Binding<Bool>,
                label: String,
                additionalLabel: String? = nil,
                helper: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isOutlined: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                action: (() -> Void)? = nil)
    {
        if isError, isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSRadioItem in an error context and in read only mode")
        }

        if let helper, helper.isEmpty {
            OL.warning("Helper text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        if let additionalLabel, additionalLabel.isEmpty {
            OL.warning("Additional label text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        // swiftlint:disable force_unwrapping
        if isError, errorText == nil || errorText!.isEmpty {
            OL.warning("Error text given to an OUDSRadioItem must be defined in case of error")
        }
        // swiftlint:enable force_unwrapping

        _isOn = isOn
        layoutData = .init(
            label: label.localized(),
            additionalLabel: additionalLabel?.localized(),
            helper: helper?.localized(),
            icon: icon,
            flipIcon: flipIcon,
            isOutlined: isOutlined,
            isError: isError,
            errorText: errorText,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isReversed ? .reversed : .default)
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .radioButton($isOn), layoutData: layoutData, action: action)
            .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
            .accessibilityLabel(a11yLabel)
            .accessibilityValue(a11yValue)
            .accessibilityHint(a11yHint)
    }

    /// The text to vocalize with *Voice Over* for the state of the indicator
    private var a11yValue: String {
        (_isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y").localized()
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state.
    private var a11yLabel: String {
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_common_disabled_a11y".localized() : ""
        let errorPrefix = layoutData.isError ? "core_common_onError_a11y".localized() : ""
        let errorText = layoutData.errorText?.localized() ?? ""
        let errorDescription = "\(errorPrefix), \(errorText)"
        let radioA11yTrait = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.label), \(layoutData.additionalLabel ?? ""), \(layoutData.helper ?? "") \(errorDescription), \(radioA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            ""
        } else {
            if _isOn.wrappedValue {
                "core_radio_hint_selected_a11y" <- "core_common_unselected_a11y".localized()
            } else {
                "core_radio_hint_unselected_a11y" <- "core_common_selected_a11y".localized()
            }
        }
    }
}
