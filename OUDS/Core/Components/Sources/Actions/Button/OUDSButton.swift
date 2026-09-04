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

// MARK: - OUDS Button

/// Button is a UI element that triggers an action or event, and is used to initiate tasks or confirming an action.
/// Button appears in different layouts, styles and states to indicate hierarchy or emphasis.
///
/// ## Appearances
///
/// Five appearances are proposed for all layouts:
///
/// - **default (by default)**: Default buttons are used for actions which are not mandatory or essential for the user.
///
/// - **strong**: Should be singular and prominent, limited to one per view.
/// It should be reserved for the most critical action, such as "Next," "Save," "Submit," etc. It is a "call for action".
///
/// - **brand**: A brand primary color alternative to the *strong* button.
/// To be used sparingly for high-value specific actions or to visually anchor a brand moment. Do not use it as the default primary button in your interfaces.
/// A button with `OUDSButton.Appearance.Brand` appearance is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// - **minimal**: Minimal buttons are commonly used for actions that are considered less crucial. They can be used independently or together with a strong button.
///
/// - **negative**: Negative buttons should be used sparingly to warn of a destructive action,
/// for example, delete or remove, typically resulting in the opening of a confirmation dialog.
/// A button with `OUDSButton.Appearance.Negative` appearance is not allowed as a direct or indirect child of an `OUDSColoredSurface`.
///
/// ## Code samples
///
/// ```swift
///     // Icon only with default appearance
///     OUDSButton(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Like", appearance: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Like") { /* the action to process */ }
///     // With an image to keep raw without tint
///     OUDSButton(image: OUDSImage(asset: Image("il_someImage")), accessibilityLabel: "Like", renderingMode: .original) { /* the action to process */ }
///
///     // Text only with negative appearance
///     OUDSButton(text: "Delete", appearance: .negative,  style: .default) { /* the action to process */ }
///     // Or simpler
///     OUDSButton(text: "Delete", appearance: .negative) { /* the action to process */ }
///
///     // A small loading button with indeterminate progress
///     OUDSButton(text: "Delete", style: .loading(), size: .small) { /* the action to process */ }
///
///     // A small loading button with a progress (i.e. percent of progress)
///     OUDSButton(text: "Delete", style: .loading(progress: 0.75), size: .small) { /* the action to process */ }
///
///     // Text and icon with strong appearance
///     OUDSButton(text: "Validate", image: OUDSImage(asset: Image("ic_heart")), appearance: .strong) { /* the action to process */ }
///
///     // Text and icon with strong appearance and button taking full width
///     OUDSButton(text: "Validate", image: OUDSImage(asset: Image("ic_heart")), appearance: .strong, isFullWidth: true) { /* the action to process */ }
///
///     // Localizable from bundle can also be used
///     OUDSButton(LocalizedStringKey("validate_button"), bundle: Bundle.module, appearance: .strong) { }
/// ```
///
/// If you need to flip your icon depending to the layout direction or not (e.g. if RTL mode lose semantics  / meanings):
/// ```swift
///     @Environment(\.layoutDirection) var layoutDirection
///
///     OUDSButton(text: "Button",
///                image: OUDSImage(asset: Image(systemName: "figure.handball"), flipped: layoutDirection == .rightToLeft))
/// ```
///
///
/// ## Sizes
///
/// Two sizes of button are proposed for all layouts:
/// - **Default**: This is the default size of the component. This size is used for the vast majority of applications.
///
/// - **small**: This size can be particularly useful in an information-dense interface or in the construction of
/// a template or component requiring the use of small elements (in an "List item" component, for example).
///
/// ## Styles
///
/// Two style are available:
///
/// - **default (by default)**: used in the normal usage of button. The aspect of the button changes for  states *disabled*, *pressed*, *hovered* or normal (i.e. *enabled*)
/// - **loading**: used after button was clicked( and probably data are requested before navigate to a next screen or get updated data, etc.).
///
/// ## Rounded layout
///
/// Buttons can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded button behavior, set to true the `hasRoundedButtons` values of the `Tuning` object
/// in your theme configuration (if the theme exposes this property at init).
/// Some themes do not have this flexibility like `SoshTheme` and `WireframeTheme`.
///
/// ## Colored surface
///
/// If button is placed on colored surface using `OUDSColoredSurface`, the default colors (content, background and border) are automatically adjusted to switch to monochrome mode.
///
/// **Remark: Today it is not allowed to place a Negative nor a Brand button on a colored surface.**
///
/// ## Specific behavior
///
/// For accessibility reasons, if the system settings for reducing motion is enabled, the loading indicator does not move.
/// For ecodesign reasons, if the device is in low power mode, the loading indicator does not move.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-button)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A button component in light and dark modes with Orange theme](component_button_Orange)
///
/// ### Orange Compact
///
/// ![A button component in light and dark modes with Orange Compact theme](component_button_OrangeCompact)
///
/// ### Sosh
///
/// ![A button component in light and dark modes with Sosh theme](component_button_Sosh)
///
/// ### Wireframe
///
/// ![A button component in light and dark modes with Wireframe theme](component_button_Wireframe)
///
/// - Version: 3.3.0 (Figma component design version)
/// - Since: 0.10.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSButton: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let appearance: Appearance
    private let style: Style
    private let size: Size
    private let isFullWidth: Bool
    private let action: () -> Void

    @State private var isHover: Bool
    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    private enum `Type` {
        case text(String)
        case icon(OUDSImage)
        case textAndIcon(text: String, icon: OUDSImage)
    }

    /// Represents the appearance of an OUDS button, i.e. a kind of type
    ///
    /// - Since: 0.10.0
    @frozen public enum Appearance {
        /// Default button is used for action
        case `default`

        /// Strong button on the page should be singular and prominent
        case strong

        /// A brand primary color alternative to the Strong button.
        case brand

        /// Minimal button for actions that are considered less crucial
        case minimal

        /// Negative button used for destructive action
        case negative
    }

    /// Defines the style of the button, e.g. loading or not
    ///
    /// - Since: 0.10.0
    @frozen public enum Style: Equatable {
        /// The default style, the button could be in prossed, hover, disabled or enabled internal state
        case `default`

        /// The `loading` style means a loading action is in progress, sometimes just after user tapped on button
        /// A circular progress indicator appears to inform the user that an action is in progress.
        ///
        ///  - Parameter progress: The loading progress, where 0.0 represents no progress and 1.0 represents full progress. Set this
        ///  value to `nil` to display a circular indeterminate progress indicator.
        case loading(progress: Double? = nil)
    }

    /// Defines the size of the button,
    ///
    /// - Since: 3.0.0
    @frozen public enum Size {
        /// The default size the button
        case `default`

        /// This size can be particularly useful in an information-dense interface or in the construction of
        /// a template or component requiring the use of small elements (in a "List item" component, for example).
        case small
    }

    // MARK: Initializers

    // swiftlint:disable function_default_parameter_at_end
    /// Creates a button with a localized text and icon, looking up the key in the given bundle..
    /// A raw string can also be given to be displayed.
    ///
    /// ```swift
    ///     let oudsImage = OUDSImage(asset: Image("someIcon"), flipped: true, renderingMode: .original)
    ///     // Use localizable
    ///     OUDSButton(LocalizedStringKey("validate_button"),
    ///                bundle: Bundle.module,
    ///                image: oudsImage,
    ///                appearance: .strong) { }
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle, or a raw `String` to display
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - image: An image configuration defined asset to use, rendering mode or also flip to apply or not.
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - size: The size of the button, default set to `.default`
    ///    - isFullWidth: Flag to let button take all the screen width, set to *false* by default.
    ///    - action: The action to perform when the user triggers the button
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                image: OUDSImage,
                appearance: Appearance = .default,
                style: Style = .default,
                size: Size = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(text: resolvedText, image: image, appearance: appearance, style: style, size: size, isFullWidth: isFullWidth, action: action)
    }

    // swiftlint:enable function_default_parameter_at_end
    /// Creates a button with text and image.
    ///
    /// ```swift
    ///     // With default setup
    ///     OUDSButton(text: "Validate",
    ///                image: OUDSImage(asset: Image(systemName: "checkmark")),
    ///                appearance: .strong) { }
    ///
    ///     // With more setup
    ///     let oudsImage = OUDSImage(asset: Image("someIcon"), flipped: true, renderingMode: .original)
    ///     OUDSButton(text: "Validate",
    ///                image: oudsImage,
    ///                appearance: .strong) { }
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text to display in the button
    ///    - image: An image configuration defined asset to use, rendering mode or also flip to apply or not.
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - size: The size of the button, default set to `.default`
    ///    - isFullWidth: Flag to let button take all the screen width, set to *false* by default.
    ///    - action: The action to perform when the user triggers the button
    public init(text: String,
                image: OUDSImage,
                appearance: Appearance = .default,
                style: Style = .default,
                size: Size = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        type = .textAndIcon(text: text, icon: image)
        self.appearance = appearance
        self.style = style
        self.size = size
        self.isFullWidth = isFullWidth
        self.action = action
        isHover = false
    }

    /// Creates a button with an icon only.
    ///
    /// ```swift
    ///     let oudsImage = OUDSImage(asset: Image("someIcon"),
    ///                                flipped: true,
    ///                                accessibilityLabel: LocalizedStringKey("some.wording.key"),
    ///                                renderingMode: .original)
    ///     OUDSButton(text: "Validate",
    ///                image: oudsImage,
    ///                appearance: .strong) { }
    /// ```
    ///
    /// - Parameters:
    ///    - image: An image configuration defined asset to use, rendering mode or also flip to apply or not.
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - size: The size of the button, default set to `.default`
    ///    - isFullWidth: Flag to let button take all the screen width, set to *false* by default.
    ///    - action: The action to perform when the user triggers the button
    public init(image: OUDSImage,
                appearance: Appearance = .default,
                style: Style = .default,
                size: Size = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        type = .icon(image)
        self.appearance = appearance
        self.style = style
        self.size = size
        self.isFullWidth = isFullWidth
        self.action = action
        isHover = false
    }

    /// Creates a button with a localized text only, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSButton(LocalizedStringKey("delete_button"), bundle: Bundle.module, appearance: .negative) { }
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - size: The size of the button, default set to `.default`
    ///    - isFullWidth: Flag to let button take all the screen width, set to *false* by default.
    ///    - action: The action to perform when the user triggers the button
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                appearance: Appearance = .default,
                style: Style = .default,
                size: Size = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(text: resolvedText, appearance: appearance, style: style, size: size, isFullWidth: isFullWidth, action: action)
    }

    /// Create a button with a text only.
    ///
    /// ```swift
    ///     OUDSButton(text: "Delete", appearance: .negative) { }
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - appearance: The button appearance, default set to `.default`
    ///    - style: The button style, default set to `.default`
    ///    - size: The size of the button, default set to `.default`
    ///    - isFullWidth: Flag to let button take all the screen width, set to *false* by default.
    ///    - action: The action to perform when the user triggers the button
    public init(text: String,
                appearance: Appearance = .default,
                style: Style = .default,
                size: Size = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        type = .text(text)
        self.appearance = appearance
        self.style = style
        self.action = action
        self.size = size
        self.isFullWidth = isFullWidth
        isHover = false
    }

    // MARK: Body

    // swiftlint:disable line_length
    public var body: some View {
        // A button with negative or brand appearance is not allowed on a colored surface.
        // Test is done here because onColoredSurface is environment variable which is not accessible in init.
        if onColoredSurface, appearance == .negative || appearance == .brand {
            OL.fatal("An OUDSButton with OUDSButton.Appearance.{Negative | Brand} appearance has been detected as a direct or indirect child of an OUDSColoredSurface, which is not allowed.")
        }

        Button(action: action) {
            switch type {
            case let .icon(image):
                ButtonIcon(image: image, size: size)
            case let .text(text):
                ButtonText(text: text, size: size)
            case let .textAndIcon(text, image):
                ButtonTextAndIcon(text: text, image: image, size: size)
            }
        }
        .buttonStyle(StyleForButton(appearance: appearance, style: style, size: size, isHover: isHover, isFullWidth: isFullWidth))
        .disabled(style != Self.Style.default)
        .accessibilityLabel(accessibilityLabel)
        #if !os(watchOS) && !os(tvOS)
            .onHover { isHover in
                self.isHover = isHover
            }
        #endif
    }

    // swiftlint:enable line_length

    /// Forges a string to vocalize with *Voice Over* describing the button style `loading`
    /// or the text according to the button type. For iconOnly the `accessibilityLabel` is used,
    /// else the button text is used.
    private var accessibilityLabel: String {
        switch style {
        case let .loading(progress):
            if let progress {
                "\("core_common_loading_a11y".localized()), \(Int(progress * 100))%"
            } else {
                "core_common_loading_a11y".localized()
            }
        case .default:
            switch type {
            case let .text(text):
                text
            case let .textAndIcon(text, _):
                text
            case let .icon(image):
                image.accessibilityLabel ?? ""
            }
        }
    }
}
