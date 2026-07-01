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

// TODO: When v3 in development and deprecated API removed, fine-tune these SwiftLint commands

// swiftlint:disable function_default_parameter_at_end
// swiftlint:disable line_length

// MARK: - OUDS Checkbox Item Indeterminate

/// Checkbox is a UI element that allows to select multiple options from a set of mutually non exclusive choices.
/// Checkbox item covers a wider range of contexts by allowing to toggle the visibility of additional text labels and icon assets.
///
/// ## Layouts
///
/// The component can be rendered as two different layouts:
///
/// - **default**: the component has a leading indicator, a label and optional helper texts, and an optional trailing decorative icon
/// - **inverse**: like the *default* layout but with a trailing checkbox indicator and a leading optional image
///
/// ## Indicator states
///
/// The checkbox indicator has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **indeterminate**: mike a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// If you need a checkbox with only two states to manage use instead ``OUDSCheckboxItem``.
///
/// ## Particular cases
///
/// An ``OUDSCheckboxItemIndeterminate`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look and feel is implemented for that if the `isError` flag is risen.
/// In that case if the component displayed an icon, this icon will be replaced automatically by an error icon.
///
/// In addition, the ``OUDSCheckboxItemIndeterminate`` can be in read only mode, i.e. the user cannot interact with the component yet
/// but this component must not be considered as disabled.
///
/// The component does not follow the right-to-left (RTL) / left-to-right (LTR) mode returned by the system as it could have some meaning
/// to have for example the indicator in trailing position for LTR mode and vice versa.
/// However, if the component has an icon in leading position (RTL mode) or in trailing position (LTR), the content of the icon is never changed.
/// It could lead to a loss of meaning or semantics in the icon. Thus the ``OUDSImage`` `flipped` property can be used to flip the icon content
/// whatever the layout direction is, preventing the user from implementing their own rules to flip or not the image.
///
/// ## Accessibility considerations
///
/// *Voice Over* will use several elements to describe the component: if component disabled / read only, if error context, the label and helper texts and a custom checkbox trait.
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
///     // Supposing we have an indeterminate state checkbox
///     @Published var selection: OUDSCheckboxIndicatorState = .indeterminate
///
///     // A leading checkbox with a label.
///     OUDSCheckboxItemIndeterminate("Hello world", selection: $selection)
///
///     // Localizable from bundle can also be used
///     OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module, selection: $selection)
///
///     // A leading checkbox with a label, but in read only mode.
///     OUDSCheckboxItemIndeterminate("Hello world", selection: $selection, isReadOnly: true)
///
///     // A leading checkbox with a label and a description as helper text.
///     OUDSCheckboxItemIndeterminate("Bazinga!", selection: $selection, description: "Doll-Dagga Buzz-Buzz Ziggety-Zag")
///
///     // A trailing checkbox with a label, an helper text and an icon (tinted, default rendering).
///     OUDSCheckboxItemIndeterminate("We live in a fabled world",
///                                   selection: $selection,
///                                   description: "Of dreaming boys and wide-eyed girls",
///                                   image: OUDSImage(asset: Image(decorative: "ic_heart")),
///                                   isReversed: true)
///
///     // A trailing checkbox with a raw (non-tinted) image.
///     OUDSCheckboxItemIndeterminate("We live in a fabled world",
///                                   selection: $selection,
///                                   description: "Of dreaming boys and wide-eyed girls",
///                                   image: OUDSImage(asset: Image(decorative: "il_someImage"), renderingMode: .original),
///                                   isReversed: true)
///
///     // Flip the icon for RTL layouts using OUDSImage.
///     OUDSCheckboxItemIndeterminate("Cocorico !",
///                                   selection: $selection,
///                                   image: OUDSImage(asset: Image(systemName: "figure.handball"),
///                                                    flipped: layoutDirection == .rightToLeft),
///                                   isReversed: layoutDirection == .rightToLeft)
///
///     // If on error, add an error message can help user to understand error context
///     OUDSCheckboxItemIndeterminate("We live in a fabled world",
///                                   selection: $selection,
///                                   isError: true,
///                                   errorText: "Something wrong",
///                                   hasDivider: true)
///
///     // A leading checkbox with a label, but disabled.
///     OUDSCheckboxItemIndeterminate("Hello world", selection: $selection)
///         .disabled(true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxItemIndeterminate("Hello world", selection: $selection, isError: true).disabled(true) // fatal error
///     OUDSCheckboxItemIndeterminate("Hello world", selection: $selection, isReadOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Suggestions
///
/// According to the [documentation](https://r.orange.fr/r/S-ouds-doc-checkbox),
/// the checkbox by default must be used in unselected state.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-checkbox)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A checkbox item component in light and dark modes with Orange theme](component_checkboxItem_Orange)
///
/// ### Orange Compact
///
/// ![A checkbox item component in light and dark modes with Orange Compact theme](component_checkboxItem_OrangeCompact)
///
/// ### Sosh
///
/// ![A checkbox item component in light and dark modes with Sosh theme](component_checkboxItem_Sosh)
///
/// ### Wireframe
///
/// ![A checkbox item component in light and dark modes with Wireframe theme](component_checkboxItem_Wireframe)
///
/// - Version: 2.4.0 (Figma component design version)
/// - Since: 0.12.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCheckboxItemIndeterminate: View {

    // MARK: - Properties

    @Binding private var selection: OUDSCheckboxIndicatorState
    private let layoutData: ControlItemLabel.LayoutData
    private let action: (() -> Void)?

    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Initializers

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// - Parameters:
    ///   - label: The main label text of the checkbox, must not be empty
    ///   - selection: A binding to a property that determines whether the indicator is ticked, unticked or preticked
    ///   - description: A description, an additional helper text, should not be empty
    ///   - icon: An optional icon image
    ///   - flipIcon: Default set to `false`, set to `true` to reverse the image (i.e. flip vertically)
    ///   - renderingMode: Default set to `.template`, forces the rendering mode of the image
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise
    ///   - isError: `true` if the look and feel of the component must reflect an error state
    ///   - errorText: An optional error message to display at the bottom
    ///   - isReadOnly: True if component is in read only
    ///   - hasDivider: If `true` a divider is added at the bottom of the view
    ///   - constrainedMaxWidth: Constrains the item width to the design system maximum when `true`
    ///   - action: An additional action to trigger when the checkbox has been pressed
    @available(*, deprecated, message: "Use OUDSCheckboxItemIndeterminate(_:selection:description:image:isReversed:isError:errorText:isReadOnly:hasDivider:constrainedMaxWidth:action:) with icon: OUDSImage? instead.")
    public init(_ label: String,
                selection: Binding<OUDSCheckboxIndicatorState>,
                description: String? = nil,
                icon: Image? = nil,
                flipIcon: Bool = false,
                renderingMode: Image.TemplateRenderingMode = .template,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        let oudsImage: OUDSImage? = icon.map { OUDSImage(asset: $0, flipped: flipIcon, renderingMode: renderingMode) }
        self.init(label,
                  selection: selection,
                  description: description,
                  image: oudsImage,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText,
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    /// Creates a checkbox with label and optional helper text, icon, divider.
    ///
    /// ```swift
    ///     OUDSCheckboxItemIndeterminate("Select all", selection: $state)
    ///
    ///     OUDSCheckboxItemIndeterminate("Select all",
    ///                                   selection: $state,
    ///                                   image: OUDSImage(asset: Image(decorative: "ic_heart")))
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// **Remark: If `label` and `description` strings are wording keys from strings catalog stored in `Bundle.main`, they are automatically localized. Else, prefer to
    /// provide the localized string if key is stored in another bundle.**
    ///
    /// - Parameters:
    ///   - label: The main label text of the checkbox, must not be empty
    ///   - selection: A binding to a property that determines whether the indicator is ticked, unticked or preticked (indeterminate / partially ticked)
    ///   - description: A description, an additional helper text, should not be empty
    ///   - image: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. This message is ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system.
    ///     When `false`, no specific width constraint is applied, allowing the component to size itself or follow external
    ///     modifier. Defaults to `false`.
    ///   - action: An additional action to trigger when the checkbox has been pressed, default set to `nil`
    public init(_ label: String,
                selection: Binding<OUDSCheckboxIndicatorState>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        if isError, isReadOnly {
            OL.fatal("It is forbidden by design to have an OUDSCheckboxItemIndeterminate in an error context and in read only mode")
        }

        if label.isEmpty {
            OL.warning("Label given to an OUDSCheckboxItemIndeterminate is defined but empty, prefer OUDSCheckboxIndeterminate(isOn:accessibilityLabel:) instead")
        }

        if let description, description.isEmpty {
            OL.warning("Description text given to an OUDSCheckboxItemIndeterminate is defined but empty, is it expected? Prefer use of `nil` value instead")
        }

        // swiftlint:disable force_unwrapping
        if isError, errorText == nil || errorText!.isEmpty {
            OL.warning("Error text given to an OUDSCheckboxItemIndeterminate must be defined in case of error")
        }
        // swiftlint:enable force_unwrapping

        _selection = selection
        self.action = action

        let errorTextContent: TextualContent? = if let errorText {
            .raw(errorText)
        } else {
            nil
        }

        layoutData = .init(
            label: label.localized(),
            extraLabel: nil,
            description: description?.localized(),
            icon: image,
            isOutlined: false,
            isError: isError,
            errorText: errorTextContent,
            isReadOnly: isReadOnly,
            hasDivider: hasDivider,
            constrainedMaxWidth: constrainedMaxWidth,
            orientation: isReversed ? .reversed : .default)
    }

    /// Creates a checkbox with a localized label, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"), bundle: Bundle.module, selection: $state)
    ///
    ///     OUDSCheckboxItemIndeterminate(LocalizedStringKey("select_all"),
    ///                                   bundle: Bundle.module,
    ///                                   selection: $state,
    ///                                   image: OUDSImage(asset: Image(decorative: "ic_heart")))
    /// ```
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - selection: A binding to a property that determines whether the indicator is ticked, unticked or preticked
    ///   - description: A description, an additional helper text, should not be empty
    ///   - image: An optional ``OUDSImage`` encapsulating the asset, its flip flag and its rendering mode. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. This message is ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system.
    ///   - action: An additional action to trigger when the checkbox has been pressed, default set to `nil`
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selection: Binding<OUDSCheckboxIndicatorState>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        self.init(key.resolved(tableName: tableName, bundle: bundle),
                  selection: selection,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText,
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    // MARK: Body

    public var body: some View {
        ControlItem(indicatorType: .checkBox($selection), layoutData: layoutData, action: action)
            .accessibilityRemoveTraits([.isButton]) // .isToggle trait for iOS 17+
            .accessibilityLabel(accessibilityLabel)
            .accessibilityValue(accessibilityValue)
            .accessibilityHint(accessibilityHint)
    }

    // MARK: - A11Y helpers

    /// Forge a string to vocalize the component label based on label, extraLabel and description
    private var accessibilityLabel: String {
        let extraLabel = layoutData.extraLabel?.isEmpty != false ? "" : ", \(layoutData.extraLabel ?? "")"
        let description = layoutData.description?.isEmpty != false ? "" : ", \(layoutData.description ?? "")"
        return "\(layoutData.label)\(extraLabel)\(description)"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component trait, value, state and error
    private var accessibilityValue: String {
        let traitDescription = "core_checkbox_trait_a11y".localized() // Fake trait for Voice Over vocalization
        let valueDescription = selection.a11yDescription
        let stateDescription = !isEnabled || layoutData.isReadOnly ? "core_common_disabled_a11y".localized() : ""

        let errorPrefix = "core_common_onError_a11y".localized()
        let errorText = layoutData.errorText?.rawValue ?? ""
        let errorDescription = layoutData.isError ? "\(errorPrefix), \(errorText)" : ""

        return "\(traitDescription). \(valueDescription). \(stateDescription). \(errorDescription)"
    }

    /// Forges a string to vocalize with *Voice Over* describing the component hint
    private var accessibilityHint: String {
        if layoutData.isReadOnly || !isEnabled {
            ""
        } else {
            selection.a11yHint
        }
    }
}

// swiftlint:enable function_default_parameter_at_end
// swiftlint:enable line_length
