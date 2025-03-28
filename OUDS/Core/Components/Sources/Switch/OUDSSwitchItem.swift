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
/// The switch indicator has two available states:
/// - **selected**: the switch is filled with a filled circle, the user has made the action to select the switch
/// - **unselected**: the switch is empty, does not contain anything, the user has made the action to unselect or did not select yet the switch
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
///     @Published var selection: Bool = false
///
///     // A leading switch with a label.
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds")
///
///     // A leading switch with a label, but in read only mode (user cannot interact yet, but not disabled).
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", isReadOnly: true)
///
///     // A leading switch with a label, and an helper text.
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", helperText: "The Beatles")
///
///     // A leading oulined switch with an additional label, an helper text.
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", additionalLabelText: "The Beatles", helperText: "1967", outlined: true)
///
///     // A leading switch with an additional label.
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Lucy in the Sky with Diamonds", additionalLabelText: "The Beatles", helperText: "1967")
///
///     // A trailing switch with a label, an additonal label, an helper text and an icon.
///     // The inverse layout will be used here.
///     OUDSSwitchItem(isOn: $selection,
///                   labelText: "Lucy in the Sky with Diamonds",
///                   additionalLabelText: "The Beatles",
///                   helperText: "1967",
///                   isInversed: true,
///                   icon: Image(decorative: "ic_heart"))
///
///     // A trailing switch with a label, an helper text, an icon, a divider and is about an error.
///     // The inverse layout will be used here.
///     OUDSSwitchItem(isOn: $selection,
///                   labelText: "Rescue from this world!",
///                   helperText: "Put your hand in mine",
///                   icon: Image(decorative: "ic_heart"),
///                   isInversed: true,
///                   isError: true,
///                   hasDivider: true)
///
///     // A leading switch with a label, but disabled.
///     // The default layout will be used here.
///     OUDSSwitchItem(isOn: $selection, labelText: "Rescue from this world!")
///         .disabled(true)
///
///     // Never disable a read only or an error-related switch as it will crash
///     // This is forbidden by design!
///     OUDSSwitchItem(isOn: $selection, labelText: "Kaboom!", isError: true).disabled(true) // fatal error
///     OUDSSwitchItem(isOn: $selection, labelText: "Kaboom!", isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// TODO: add url to design specification
///
/// - Since: 0.12.0
public struct OUDSSwitchItem: View { // TODO: #266 - Update documentation hyperlink above

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
    ///   - isOn: A binding to a property that determines whether the toggle is on or off.
    ///   - labelText: The main label text of the switch.
    ///   - helperText: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - isInversed: `True` of the switch indicator must be in trailing position,` false` otherwise. Default to `false`
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
            OL.fatal("It is forbidden by design to have an OUDSSwitchItem in an error context and in read only mode")
        }

        if let helperText, helperText.isEmpty {
            OL.warning("Helper text given to an OUDSSwitchItem is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        _isOn = isOn

        self.layoutData = .init(
            label: labelText,
            additionalLabel: nil,
            helper: helperText,
            icon: icon,
            flipIcon: false,
            isOutlined: false,
            isError: isError,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            orientation: isInversed ? .reversed : .default)
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .switch($isOn), layoutData: layoutData)
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
        let switchA11yTrait = "core_switch_trait_a11y".localized() // Fake trait for Voice Over vocalization

        let result = "\(stateDescription), \(layoutData.label), \(layoutData.additionalLabel ?? ""), \(layoutData.helper ?? "") \(errorDescription), \(switchA11yTrait)"
        return result
    }

    /// Forges a string to vocalize with *Voice Over* explaining the hint for the user about the component.
    private var a11yHint: String {
        if layoutData.isReadOnly || !isEnabled {
            return ""
        } else {
            return "core_switch_hint_a11y" <- (_isOn.wrappedValue ? "core_common_unselected_a11y" : "core_common_selected_a11y").localized()
        }
    }
}
