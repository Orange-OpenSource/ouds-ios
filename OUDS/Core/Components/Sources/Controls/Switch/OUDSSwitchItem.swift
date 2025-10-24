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

// MARK: - OUDS Switch Item

/// The ``OUDSSwitchItem`` proposes layouts to add in your views some swith components.
/// If you want to use a switch with only an indicator, prefer instead ``OUDSSwitch``.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading indicator, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing switch indicator and a leading optional decorative icon
///
/// ## Indicator states
///
/// The switch indicator has two available states set as a boolean property that determines whether the toggle is on or off.
///
/// ## Particular cases
///
/// An ``OUDSSwitchItem`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSSwitchItem`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
/// The switch can be also outlined in some cases.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom switch trait.
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
///     @Published var isOn: Bool = false
///
///     // A leading switch with a label.
///     // The default layout will be used here.
///     OUDSSwitchItem("Lucy in the Sky with Diamonds", isOn: $isOn)
///
///     // A leading switch with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSSwitchItem("Lucy in the Sky with Diamonds", isOn: $isOn, isReadOnly: true)
///
///     // A leading switch with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSSwitchItem("Lucy in the Sky with Diamonds", isOn: $isOn, helper: "The Beatles")
///
///     // A leading switch with an additional label.
///     // The default layout will be used here.
///     OUDSSwitchItem("Lucy in the Sky with Diamonds", isOn: $isOn, additionalLabel: "The Beatles", helper: "1967")
///
///     // A trailing switch with a label, an additonal label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSSwitchItem("Lucy in the Sky with Diamonds",
///                    isOn: $isOn,
///                    additionalLabel: "The Beatles",
///                    helper: "1967",
///                    isReversed: true,
///                    icon: Image(decorative: "ic_heart"))
///
///     // A trailing switch with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSSwitchItem("Rescue from this world!",
///                    isOn: $isOn,
///                    helper: "Put your hand in mine",
///                    icon: Image(decorative: "ic_heart"),
///                    isReversed: true,
///                    isError: true,
///                    hasDivider: true)
///
///     // If on error, add an error message can help user to understand error context
///     OUDSSwitchItem("Rescue from this world!",
///                    isOn: $isOn,
///                    isError: true,
///                    errorText: "Something wrong",
///                    hasDivider: true)
///
///     // A leading switch with a label, but disabled.
///     // The default layout will be used here.
///     OUDSSwitchItem("Rescue from this world!", isOn: $isOn)
///         .disabled(true)
///
///     // Never disable a read only or an error-related switch as it will crash
///     // This is forbidden by design!
///     OUDSSwitchItem("Kaboom!", isOn: $isOn, isError: true).disabled(true) // fatal error
///     OUDSSwitchItem("Kaboom!", isOn: $isOn, isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/18acc0-switch)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A switch item component in light and dark mode with Orange theme](component_switchItem_Orange)
///
/// ### Orange Business Tools
///
/// ![A switch item  component in light and dark mode with Orange Business Tools theme](component_switchItem_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![A switch item component in light and dark mode with Sosh theme](component_switchItem_Sosh)
///
/// ### Wireframe
///
/// ![A switch item component in light and dark mode with Wireframe theme](component_switchItem_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.14.0
public struct OUDSSwitchItem: View {

    // MARK: - Properties

    @Binding private var isOn: Bool
    private let layoutData: ControlItemLabel.LayoutData

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a switch with label and optional helper text, icon, divider.
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - label: The main label text of the switch.
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - helper: An additonal helper text, should not be empty
    ///   - icon: An optional icon, default set to `nil`
    ///   - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically)
    ///   - isReversed: `True` of the switch indicator must be in trailing position,` false` otherwise. Default to `true`
    ///   - isError: `True` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. This message is ignored if `isError` is `false`.
    ///     **Note:** The `errorText`can be different if switch is selected or not.
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view.
    ///
    /// **Remark: If `label` and `helper` strings are wording keys from strings catalog stored in `Bundle.main`, they are
    /// automatically localized. Else, prefer to provide the localized string if key is stored in another bundle.**
    public init(_ label: String,
                isOn: Binding<Bool>,
                helper: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                isReversed: Bool = true,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false)
    {
        if isError, isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSSwitchItem in an error context and in read only mode")
        }

        if let helper, helper.isEmpty {
            OL.warning("Helper text given to an OUDSSwitchItem is defined but empty, is it expected? Prefer use of `nil` value instead")
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
            errorText: errorText,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isReversed ? .reversed : .default)
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .switch($isOn), layoutData: layoutData)
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
        let errorText: String = layoutData.errorText?.localized() ?? ""
        let errorDescription = "\(errorPrefix), \(errorText)"

        let switchA11yTrait = "core_switch_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.label), \(layoutData.additionalLabel ?? ""), \(layoutData.helper ?? ""), \(errorDescription), \(switchA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            ""
        } else {
            "core_switch_hint_a11y" <- (_isOn.wrappedValue ? "core_common_unselected_a11y" : "core_common_selected_a11y").localized()
        }
    }
}
