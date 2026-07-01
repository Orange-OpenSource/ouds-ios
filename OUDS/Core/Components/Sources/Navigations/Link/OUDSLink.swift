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

import SwiftUI

/// Link is a UI element that allows to navigate from one location to another, either within the same page or across different pages in the same resource,
/// or to an external resource.
/// Link's primary function is navigation and it communicates its interactive nature visually and semantically.
///
/// The ``OUDSLink`` proposes layout with text only or text with icon.
/// It also proposes layout to navigate forward or backward. The link can be displayed in `small` or `default` size.
///
/// ## Text only or Text and icon layout
///
/// This layout is used to open a link or to display a specific feature (like send feedbacks, show more, ...)
///
/// ```swift
///     // Text only in small size
///     OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }
///
///     // From a localizable and a bundle
///     OUDSLink(LocalizedStringKey("feedback_link"), bundle: Bundle.module, size: .small) { }
///
///     // Text and icon in default size
///     OUDSLink(text: "Feedback", icon: OUDSImage(asset: Image("ic_heart")), size: .default) { }
///
///     // Text and icon with raw image (not tinted)
///     OUDSLink(text: "Feedback", icon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) { }
/// ```
///
/// ## Navigation layout
///
/// This layout is used to navigate backward or forward.
///
/// ```swift
///     // Navigate to next page with link in a small size
///     OUDSLink(text: "Feedback", indicator: .next, size: .small) { /* the action to process */ }
///
///     // Navigate to previous page with link in a default size
///     OUDSLink(text: "Back", indicator: .back, size: .default) { /* the action to process */ }
/// ```
///
/// ## Colored Surface
///
/// If link is placed on colored surface using `OUDSColoredSurface`, the default colors (content text and icon or arrow) are automatically adjusted to switch to monochrom.
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-link)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![A link component in light and dark modes with Orange theme](component_link_Orange)
///
/// ### Orange Compact
///
/// ![A link component in light and dark modes with Orange Compact theme](component_link_OrangeCompact)
///
/// ### Sosh
///
/// ![A link component in light and dark modes with Sosh theme](component_link_Sosh)
///
/// ### Wireframe
///
/// ![A link component in light and dark modes with Wireframe theme](component_link_Wireframe)
///
/// - Version: 2.2.0 (Figma component design version)
/// - Since: 0.11.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSLink: View {

    // MARK: - Stored Properties

    private let layout: Layout
    private let text: String
    private let size: Size
    private let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    /// Represents the size of an `OUDSLink`.
    /// - Since: 0.11.0
    @frozen public enum Size {
        case small, `default`
    }

    /// Represents the arrow / chevron / indicator of an `OUDSLink`.
    /// - Since: 0.11.0
    @frozen public enum Indicator {
        case back, next
    }

    enum Layout {
        case indicator(OUDSLink.Indicator)
        case textOnly
        case textAndIcon(OUDSImage)
    }

    // MARK: - Initializers — String label + optional icon

    /// Create a link with text and icon.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: An optional icon image
    ///   - renderingMode: The rendering mode to apply on the icon
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    @available(*, deprecated, message: "Use OUDSLink(text:icon:OUDSImage:size:action:) instead.")
    public init(text: String,
                icon: Image? = nil,
                renderingMode: Image.TemplateRenderingMode = .template,
                size: Size = .default,
                action: @escaping () -> Void)
    {
        self.init(text: text,
                  icon: icon.map { OUDSImage(asset: $0, renderingMode: renderingMode) },
                  size: size,
                  action: action)
    }

    /// Create a link with text and an optional icon.
    ///
    /// ```swift
    ///     OUDSLink(text: "Learn more", icon: OUDSImage(asset: Image(systemName: "arrow.right")), size: .default) {}
    ///
    ///     // Raw (non-tinted) image:
    ///     OUDSLink(text: "Brand", icon: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) {}
    ///
    ///     // Text only — omit icon or pass nil:
    ///     OUDSLink(text: "Feedback", size: .small) {}
    /// ```
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: An optional ``OUDSImage`` encapsulating the asset and its rendering mode. Default set to `nil` (text-only layout).
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String,
                icon: OUDSImage? = nil,
                size: Size = .default,
                action: @escaping () -> Void)
    {
        layout = icon.map { .textAndIcon($0) } ?? .textOnly
        self.text = text
        self.size = size
        self.action = action
    }

    // MARK: - Initializers — LocalizedStringKey + optional icon

    /// Creates a link with a localized text and optional icon.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - icon: An optional icon image
    ///   - renderingMode: The rendering mode to apply on the icon
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    @available(*, deprecated, message: "Use OUDSLink(_:tableName:bundle:icon:OUDSImage:size:action:) instead.")
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                icon: Image? = nil,
                renderingMode: Image.TemplateRenderingMode = .template,
                size: Size = .default,
                action: @escaping () -> Void)
    {
        self.init(key.resolved(tableName: tableName, bundle: bundle),
                  icon: icon.map { OUDSImage(asset: $0, renderingMode: renderingMode) },
                  size: size,
                  action: action)
    }

    /// Creates a link with a localized text and optional icon, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSLink(LocalizedStringKey("feedback_link"), bundle: Bundle.module, size: .default) {}
    ///
    ///     OUDSLink(LocalizedStringKey("learn_more"),
    ///              bundle: Bundle.module,
    ///              icon: OUDSImage(asset: Image("ic_heart")),
    ///              size: .default) {}
    /// ```
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - icon: An optional ``OUDSImage`` encapsulating the asset and its rendering mode. Default set to `nil` (text-only layout).
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                icon: OUDSImage? = nil,
                size: Size = .default,
                action: @escaping () -> Void)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle),
                  icon: icon,
                  size: size,
                  action: action)
    }

    // MARK: - Initializers — indicator (unchanged)

    // swiftlint:disable function_default_parameter_at_end

    /// Create a link with a "before `Indicator`" (`OUDSLink.Indicator.back`) or "after indicator" (`OUDSLink.Indicator.next`) beside the text.
    ///
    /// ```swift
    ///     OUDSLink(text: "Back", indicator: .back) { }
    /// ```
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - indicator: Indicator displayed in the link.
    ///   When `OUDSLink.Indicator.back`, the indicator is displayed before the text.
    ///   When `OUDSLink.Indicator.next`, the indicator is displayed after the text.
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String, indicator: Indicator, size: Size = .default, action: @escaping () -> Void) {
        layout = .indicator(indicator)
        self.text = text
        self.size = size
        self.action = action
    }

    /// Creates a link with a localized text and a navigation indicator, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSLink(LocalizedStringKey("back_link"), bundle: Bundle.module, indicator: .back) { }
    /// ```
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - indicator: Indicator displayed in the link
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                indicator: Indicator,
                size: Size = .default,
                action: @escaping () -> Void)
    {
        layout = .indicator(indicator)
        text = key.resolved(tableName: tableName, bundle: bundle)
        self.size = size
        self.action = action
    }

    // swiftlint:enable function_default_parameter_at_end

    // MARK: - Body

    public var body: some View {
        Button(action: action) {
            switch layout {
            case let .indicator(navigationIndicator):
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    Image(decorative: resourceName(for: navigationIndicator), bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                        .toFlip(layoutDirection == .rightToLeft)
                }
            case .textOnly:
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    EmptyView()
                }
            case let .textAndIcon(oudsImage):
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    if let asset = oudsImage.asset {
                        asset
                            .renderingMode(oudsImage.renderingMode)
                            .resizable()
                    }
                }
            }
        }
        .buttonStyle(LinkButtonStyle(layout: layout, size: size))
        .accessibilityRemoveTraits(.isButton)
        .accessibilityAddTraits(.isLink)
    }

    // MARK: - Helpers

    private func resourceName(for navigationIndicator: OUDSLink.Indicator) -> String {
        switch navigationIndicator {
        case .back:
            "ic_link_previous"
        case .next:
            "ic_link_next"
        }
    }
}
