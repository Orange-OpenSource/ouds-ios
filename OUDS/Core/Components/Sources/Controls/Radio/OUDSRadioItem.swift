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
/// - **default**: the component has a leading indicator, a label and optional texts, and an optional trailing decorative icon
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
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and optional texts and a custom radio trait.
/// No accessibility identifier is defined in OUDS side as this value remains in the users hands.
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
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", extraLabel: "The Beatles")
///
///     // A leading radio with an additional label.
///     // The default layout will be used here.
///     OUDSRadioItem(isOn: $selection, label: "Lucy in the Sky with Diamonds", extraLabel: "The Beatles", description: "1967")
///
///     // A trailing radio with a label, a description, an icon, a divider and is about an error.
///     // The reversed layout will be used here.
///     OUDSRadioItem(isOn: $selection,
///                   label: "Rescue from this world!",
///                   description: "Put your hand in mine",
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-radio-button)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A radio item component in light and dark modes with Orange theme](component_radioItem_Orange)
///
/// ### Orange Business Tools
///
/// ![A radio item component in light and dark modes with Orange Business Tools theme](component_radioItem_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A radio item component in light and dark modes with Sosh theme](component_radioItem_Sosh)
///
/// ### Wireframe
///
/// ![A radio item component in light and dark modes with Wireframe theme](component_radioItem_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
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

    /// Creates a radio with label and optional helper text as description, icon, divider.
    /// Supposed to be integrated inside a ``OUDSRadioPicker``.
    ///
    /// ```swift
    ///     OUDSRadioItem(isOn: $selection,
    ///                   label: "Virgin Holy Lava",
    ///                   extraLabel: "Very spicy",
    ///                   description: "No alcohol, only tasty flavors",
    ///                   icon: Image(systemName: "flame")
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - label: The main label text of the radio, must not be empty
    ///   - extraLabel: An additional label text of the radio, default set to `nil`
    ///   - description: An description, like an helper text, should not be empty, default set to `nil`
    ///   - icon: An optional icon, default set to `nil`
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isOutlined: Flag to get an outlined radio, default set to `false`
    ///   - isReversed: `True` of the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. This message is ignored if `isError` is `false`.
    ///   The `errorText`can be different if switch is selected or not.
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system.
    ///     When `false`, no specific width constraint is applied, allowing the component to size itself or follow external
    ///     modifier. Defaults to `false`.
    ///   - action: An additional action to trigger when the radio button has been pressed
    ///
    /// **Remark 1: As divider and outline effect are not supposed to be displayed at the same time, the divider is not displayed if the outline effect is active.**
    ///
    /// **Remark 2: If `label` and `description` strings are wording keys from strings catalog stored in `Bundle.main`, they are automatically localized. Else, prefer to
    /// provide the localized string if key is stored in another bundle.**
    public init(isOn: Binding<Bool>,
                label: String,
                extraLabel: String? = nil,
                description: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isOutlined: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        if isError, isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSRadioItem in an error context and in read only mode")
        }

        if label.isEmpty {
            OL.warning("Label given to an OUDSRadioItem is empty, prefer OUDSRadio(isOn:accessibilityLabel:) instead")
        }

        if let description, description.isEmpty {
            OL.warning("Description text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        if let extraLabel, extraLabel.isEmpty {
            OL.warning("Extra label text given to an OUDSRadioItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        // swiftlint:disable force_unwrapping
        if isError, errorText == nil || errorText!.isEmpty {
            OL.warning("Error text given to an OUDSRadioItem must be defined in case of error")
        }
        // swiftlint:enable force_unwrapping

        _isOn = isOn
        layoutData = .init(
            label: label.localized(),
            extraLabel: extraLabel?.localized(),
            description: description?.localized(),
            icon: icon,
            flipIcon: flipIcon,
            isOutlined: isOutlined,
            isError: isError,
            errorText: errorText,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            constrainedMaxWidth: constrainedMaxWidth,
            orientation: isReversed ? .reversed : .default)
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .radioButton($isOn), layoutData: layoutData, action: action)
            .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
            .accessibilityLabel(accessibilityLabel)
            .accessibilityValue(accessibilityValue)
            .accessibilityHint(accessibilityHint)
    }

    // MARK: - A11Y helpers

    /// Forge a string to vocalize the component label based on label and description
    private var accessibilityLabel: String {
        let extraLabel = layoutData.extraLabel?.isEmpty != false ? "" : ", \(layoutData.extraLabel ?? "")"
        let description = layoutData.description?.isEmpty != false ? "" : ", \(layoutData.description ?? "")"
        return "\(layoutData.label)\(extraLabel)\(description)"
    }

    /// The text to vocalize with *Voice Over* for the state of the indicator
    /// Forges a string to vocalize with *Voice Over* describing the component value, error, state and trait
    private var accessibilityValue: String {
        let traitDescription = "core_radio_trait_a11y".localized() // Fake trait for Voice Over vocalization
        let valueDescription = (_isOn.wrappedValue ? "core_common_selected_a11y" : "core_common_unselected_a11y").localized()
        let stateDescription = !isEnabled || layoutData.isReadOnly ? "core_common_disabled_a11y".localized() : ""

        let errorPrefix = "core_common_onError_a11y".localized()
        let errorText = layoutData.errorText?.localized() ?? ""
        let errorDescription = layoutData.isError ? "\(errorPrefix), \(errorText)" : ""

        return "\(traitDescription). \(valueDescription). \(stateDescription). \(errorDescription)"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component hint
    private var accessibilityHint: String {
        if layoutData.isReadOnly || !isEnabled {
            ""
        } else {
            _isOn.wrappedValue
                ? "core_radio_hint_selected_a11y" <- "core_common_unselected_a11y".localized()
                : "core_radio_hint_unselected_a11y" <- "core_common_selected_a11y".localized()
        }
    }
}
