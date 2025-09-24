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

// MARK: - OUDS Checkbox Item

/// The ``OUDSCheckboxItem`` proposes layouts to add in your views some checkboxes components with labels and icons.
/// If you want to use a checkbox with only an indicator prefer instead ``OUDSCheckbox``.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading indicator, a label and optional helper texts, and an optional trailing decorative icon
/// - **reversed**: like the *default* layout but with a trailing checkbox indicator and a leading optional image
///
/// ## Indicator states
///
/// The checkbox indicator has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
///
/// If you are looking for a checkbox component with three states, use instead ``OUDSCheckboxItemIndeterminate``.
///
/// ## Particular cases
///
/// An ``OUDSCheckboxItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckboxItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// The component does not follow the right-to-left (RTL) / left-to-right (LTR) mode returned by the system as it could have some meaning
/// to have for example the indicator in trailing position for LTR mode and vice versa.
/// However, if the component has an icon in leading position (RTL mode) or in trailing position (LTR), the content of the icon is never changed.
/// It could lead to a loss of meaning or semantics in the icon. Thus a specific flag can be used to flip the icon content whatever the layout direction is.
/// It prevents the user do implement its own rules to flip or not image.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom checkbox trait.
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
/// ```swift
///     // Supposing we have an unselected checkbox
///     @Published var isOn: Bool = false
///
///     // A leading checkbox with a label.
///     // The default layout will be used here.
///     OUDSCheckboxItem(isOn: $isOn, label: "Hello world")
///
///     // A leading checkbox with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSCheckboxItem(isOn: $isOn, label: "Hello world", isReadOnly: true)
///
///     // A leading checkbox with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSCheckboxItem(isOn: $isOn, label: "Bazinga!", helper: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing checkbox with a label, an helper text and an icon.
///     // The reversed layout will be used here.
///     OUDSCheckboxItem(isOn: $isOn,
///                      label: "We live in a fabled world",
///                      helper: "Of dreaming boys and wide-eyed girls",
///                      isReversed: true,
///                      icon: Image(decorative: "ic_heart"))
///
///     // A leading checkbox with a label, but disabled.
///     // The default layout will be used here.
///     OUDSCheckboxItem(isOn: $isOn, label: "Hello world")
///         .disabled(true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxItem(isOn: $isOn, label: "Hello world", isError: true).disabled(true) // fatal error
///     OUDSCheckboxItem(isOn: $isOn, label: "Hello world", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// If you want to manage the RTL mode quite easily and switch your layouts (flip image, indicator in RTL leading i.e. in the right):
/// ```swift
///     @Environment(\.layoutDirection) var layoutDirection
///
///     OUDSCheckboxItem(isOn: $selection,
///                      labelText: "Cocorico !",
///                      icon: Image(systemName: "figure.handball"),
///                      flipIcon: layoutDirection == .rightToLeft,
///                      isInversed: layoutDirection == .rightToLeft)
/// ```
///
/// ## Suggestions
///
/// According to the [documentation](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox/b/6578e5/t/3dd013a529),
/// the checkbox by default must be used in unselected state.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A checkbox item component in light and dark mode with Orange theme](component_checkboxItem_Orange)
///
/// ### Orange Business Tools
///
/// ![A checkbox item component in light and dark mode with Orange Business Tools theme](component_checkboxItem_OrangeBusinessTools)
///
/// ### Orange Inverse
///
/// ![A checkbox item component in light and dark mode with Orange Inverse theme](component_checkboxItem_OrangeInverse)
///
/// ### Sosh
///
/// ![A checkbox item component in light and dark mode with Sosh theme](component_checkboxItem_Sosh)
///
/// ### Wireframe
///
/// ![A checkbox item component in light and dark mode with Wireframe theme](component_checkboxItem_Wireframe)
///
/// - Version: 2.1.0 (Figma component design version)
/// - Since: 0.12.0
public struct OUDSCheckboxItem: View {

    // MARK: - Properties

    // NOTE: Do not forget to keep updated OUDSCheckboxPickerData
    @Binding private var isOn: Bool
    private let layoutData: ControlItemLabel.LayoutData
    private let action: (() -> Void)?

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// ```swift
    ///     OUDSCheckboxItem(isOn: $isOn,
    ///                      label: "Virgin Holy Lava",
    ///                      helper: "Very spicy",
    ///                      icon: Image(systemName: "flame")
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - isOn: A binding to a property that determines wether the indicator is ticked (selected) or not (unselected)
    ///   - label: The main label text of the checkbox.
    ///   - helper: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isReversed: `true` of the checkbox indicator must be in trailing position,` false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - action: An additional action to trigger when the checkbox has been pressed
    ///
    /// **Remark: If `label` and `helper` strings are wording keys from strings catalog stored in `Bundle.main`, they are automatically localized. Else, prefer to
    /// provide the localized string if key is stored in another bundle.**
    public init(isOn: Binding<Bool>,
                label: String,
                helper: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isReversed: Bool = false,
                isError: Bool = false,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                action: (() -> Void)? = nil)
    {
        if isError, isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDS Checkbox in an error context and in read only mode")
        }

        if let helper, helper.isEmpty {
            OL.warning("Helper text given to an OUDS Checkbox is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        _isOn = isOn
        layoutData = .init(
            label: label.localized(),
            additionalLabel: nil,
            helper: helper?.localized(),
            icon: icon,
            flipIcon: flipIcon,
            isOutlined: false,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isReversed ? .reversed : .default)
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .checkBox(convertedState), layoutData: layoutData, action: action)
            .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
            .accessibilityLabel(a11yLabel)
            .accessibilityValue(a11yValue)
            .accessibilityHint(a11yHint)
    }

    // MARK: - Computed value

    private var convertedState: Binding<OUDSCheckboxIndicatorState> {
        Binding(get: { isOn ? .selected : .unselected }, set: { isOn = ($0 == .selected ? true : false) })
    }

    // MARK: - A11Y helpers

    /// The text to vocalize with *Voice Over* for the state of the indicator
    private var a11yValue: String {
        (isOn ? "core_checkbox_checked_a11y" : "core_checkbox_unchecked_a11y").localized()
    }

    /// Forges a string to vocalize with *Voice Over* describing the component state.
    private var a11yLabel: String {
        let stateDescription: String = layoutData.isReadOnly || !isEnabled ? "core_common_disabled_a11y".localized() : ""
        let errorDescription = layoutData.isError ? "core_common_onError_a11y".localized() : ""
        let checkboxA11yTrait = "core_checkbox_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.label), \(layoutData.helper ?? ""), \(errorDescription), \(checkboxA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            ""
        } else {
            convertedState.wrappedValue.a11yHint
        }
    }
}
