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

/// Filter chip is a UI element that allows to select or deselect an option within a series, and is commonly used to capture filtering decisions.
/// Filter chip allows to filter content by being selected or deselected.
/// It can be toggled "On" or "Off" to refine displayed results, and selected Filter Chips remain visually distinct to indicate active filters.
///
/// ## Code samples
///
/// ```swift
///     // Icon only layout as selected
///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Heart", selected: true) {}
///
///     // Icon only, raw image (not tinted)
///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original), accessibilityLabel: "Heart") {}
///
///     // Text only as not selected (default unselected)
///     OUDSFilterChip(text: "Label") {}
///
///     // Text from a localizable and a bundle
///     OUDSFilterChip(LocalizedStringKey("category_filter"), bundle: Bundle.module) {}
///
///     // Text and icon as selected
///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), text: "Label", selected: true) {}
///
///     // Text and icon, raw image (not tinted)
///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart"), renderingMode: .original), text: "Label") {}
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-filter-chip)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A filter chip component in light and dark modes with Orange theme](component_filterChip_Orange)
///
/// ### Orange Compact
///
/// ![A filter chip component in light and dark modes with Orange Compact theme](component_filterChip_OrangeCompact)
///
/// ### Sosh
///
/// ![A filter chip component in light and dark modes with Sosh theme](component_filterChip_Sosh)
///
/// ### Wireframe
///
/// ![A filter chip component in light and dark modes with Wireframe theme](component_filterChip_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.17.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSFilterChip: View {

    // MARK: - Stored Properties

    private let layout: Chip.Layout
    private let action: () -> Void
    private let selected: Bool

    // MARK: - Initializers — icon + LocalizedStringKey text

    /// Creates a filter chip with a localized text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which should contain an icon
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - renderingMode: The rendering mode to apply on the icon
    ///    - action: The action to perform when the user triggers the chip
    @available(*, deprecated, message: "Use OUDSFilterChip(image:_:tableName:bundle:selected:action:) instead.")
    public init(icon: Image,
                _ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selected: Bool = false,
                renderingMode: Image.TemplateRenderingMode = .template,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(image: OUDSImage(asset: icon, renderingMode: renderingMode),
                  text: resolvedText,
                  selected: selected,
                  action: action)
    }

    /// Creates a filter chip with a localized text and icon, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")),
    ///                    LocalizedStringKey("like_filter"),
    ///                    bundle: Bundle.module,
    ///                    selected: true) {}
    /// ```
    ///
    /// - Parameters:
    ///    - image: An ``OUDSImage`` encapsulating the asset and its rendering mode. Its accessibility label will be ignored.
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(image: OUDSImage,
                _ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selected: Bool = false,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(image: image, text: resolvedText, selected: selected, action: action)
    }

    // MARK: - Initializers — icon + String text (canonical)

    /// Creates a filter chip with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which should contain an icon
    ///    - text: The text to display in the chip, should not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - renderingMode: The rendering mode to apply on the icon
    ///    - action: The action to perform when the user triggers the chip
    @available(*, deprecated, message: "Use OUDSFilterChip(image:text:selected:action:) instead.")
    public init(icon: Image, text: String, selected: Bool = false, renderingMode: Image.TemplateRenderingMode = .template, action: @escaping () -> Void) {
        self.init(image: OUDSImage(asset: icon, renderingMode: renderingMode), text: text, selected: selected, action: action)
    }

    /// Creates a filter chip with text and icon.
    ///
    /// ```swift
    ///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), text: "Label", selected: true) {}
    /// ```
    ///
    /// - Parameters:
    ///    - image: An ``OUDSImage`` encapsulating the asset and its rendering mode. Its accessibility label will be ignored.
    ///    - text: The text to display in the chip, should not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(image: OUDSImage, text: String, selected: Bool = false, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.warning("The OUDSFilterChip should not have an empty text, prefer instead OUDSFilterChip(image:accessibilityLabel:selected:action).")
        }
        layout = .textAndIcon(text: text, icon: image, iconPosition: .trailing)
        self.action = action
        self.selected = selected
    }

    // MARK: - Initializers — icon + LocalizedStringKey accessibilityLabel

    /// Creates a filter chip with an icon only and a localized accessibility label.
    ///
    /// - Parameters:
    ///    - icon: An image which should contain an icon
    ///    - key: The text to vocalize with Voice Over, as a `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - renderingMode: The rendering mode to apply on the icon
    ///    - action: The action to perform when the user triggers the chip
    @available(*, deprecated, message: "Use OUDSFilterChip(image:accessibilityLabel:tableName:bundle:selected:action:) instead.")
    public init(icon: Image,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selected: Bool = false,
                renderingMode: Image.TemplateRenderingMode = .template,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(image: OUDSImage(asset: icon, renderingMode: renderingMode),
                  accessibilityLabel: resolvedText,
                  selected: selected,
                  action: action)
    }

    /// Creates a filter chip with an icon only and a localized accessibility label.
    ///
    /// ```swift
    ///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")),
    ///                    accessibilityLabel: LocalizedStringKey("like_filter"),
    ///                    bundle: Bundle.module) {}
    /// ```
    ///
    /// - Parameters:
    ///    - image: An ``OUDSImage`` encapsulating the asset and its rendering mode. Its accessibility label will be ignored.
    ///    - key: The text to vocalize with Voice Over, as a `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(image: OUDSImage,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selected: Bool = false,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(image: image, accessibilityLabel: resolvedText, selected: selected, action: action)
    }

    // MARK: - Initializers — icon + String accessibilityLabel (canonical)

    /// Creates a filter chip with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which should contain an icon
    ///    - accessibilityLabel: The text to vocalize with Voice Over describing the chip action
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - renderingMode: The rendering mode to apply on the icon
    ///    - action: The action to perform when the user triggers the chip
    @available(*, deprecated, message: "Use OUDSFilterChip(image:accessibilityLabel:selected:action:) instead.")
    public init(icon: Image, accessibilityLabel: String, selected: Bool = false, renderingMode: Image.TemplateRenderingMode = .template, action: @escaping () -> Void) {
        self.init(image: OUDSImage(asset: icon, renderingMode: renderingMode), accessibilityLabel: accessibilityLabel, selected: selected, action: action)
    }

    /// Creates a filter chip with an icon only.
    ///
    /// ```swift
    ///     OUDSFilterChip(image: OUDSImage(asset: Image("ic_heart")), accessibilityLabel: "Heart") {}
    /// ```
    ///
    /// - Parameters:
    ///    - image: An ``OUDSImage`` encapsulating the asset and its rendering mode. Its accessibility label will be ignored.
    ///    - accessibilityLabel: The text to vocalize with Voice Over describing the chip action, should not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(image: OUDSImage, accessibilityLabel: String, selected: Bool = false, action: @escaping () -> Void) {
        if accessibilityLabel.isEmpty {
            OL.warning("The OUDSFilterChip should not have an empty accessibility label, think about your disabled users!")
        }
        layout = .icon(image, accessibilityLabel)
        self.action = action
        self.selected = selected
    }

    // MARK: - Initializers — text only

    /// Creates a filter chip with a localized text only, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSFilterChip(LocalizedStringKey("category_filter"), bundle: Bundle.module) {}
    /// ```
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                selected: Bool = false,
                action: @escaping () -> Void)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(text: resolvedText, selected: selected, action: action)
    }

    /// Creates a filter chip with a text only.
    ///
    /// ```swift
    ///     OUDSFilterChip(text: "Label") {}
    /// ```
    ///
    /// - Parameters:
    ///    - text: The text of the button to display, must not be empty
    ///    - selected: Flag to know if chip is selected, by default is unselected
    ///    - action: The action to perform when the user triggers the chip
    public init(text: String, selected: Bool = false, action: @escaping () -> Void) {
        if text.isEmpty {
            OL.fatal("The OUDSFilterChip must not have an empty text!")
        }
        layout = .text(text)
        self.action = action
        self.selected = selected
    }

    // MARK: - Body

    public var body: some View {
        OUDSInteractionButton(action: action) {
            Chip(layout: layout, selected: selected, interactionState: OUDSChipInteractionState(with: $0))
                .accessibilityHidden(true)
        }
        .accessibilityAddTraits(selected ? [.isSelected] : [])
        .accessibilityAddTraits(.isButton)
        .accessibilityHint(accessibilityHint)
        .accessibilityLabel(accessibilityLabel)
    }

    private var accessibilityHint: String {
        (selected ? "core_filterChip_hint_selected_a11y" : "core_filterChip_hint_unselected_a11y").localized()
    }

    private var accessibilityLabel: String {
        switch layout {
        case let .text(text), let .textAndIcon(text, _, _), let .icon(_, text):
            text
        }
    }
}
