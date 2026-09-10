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
///     // Text only in small size, in compact density
///     OUDSLink(text: "Feedback", size: .small, density: .compact) { /* the action to process */ }
///
///     // From a localizable and a bundle
///     OUDSLink(LocalizedStringKey("feedback_link"), bundle: Bundle.module, size: .small) { }
///
///     // Text and icon in default size
///     OUDSLink(text: "Feedback", image: OUDSImage(asset: Image("ic_heart")), size: .default) { }
///
///     // Text and icon with raw image (not tinted)
///     OUDSLink(text: "Feedback", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) { }
/// ```
///
/// ## Navigation layout
///
/// This layout is used to navigate backward, forward and outside the app
///
/// ```swift
///     // Navigate to next page with link in a small size
///     OUDSLink(text: "Feedback", indicator: .next, size: .small, density: .compact) { /* the action to process */ }
///
///     // Navigate to previous page with link in a default size
///     OUDSLink(text: "Back", indicator: .previous, size: .default) { /* the action to process */ }
///
///     // Full-width: label stays, chevron anchored to the right / left
///     OUDSLink(text: "See all", indicator: .next, isFullWidth: true) { /* the action to process */ }
///
///     // Full-width: label stays, indicator anchored to the right / left
///     OUDSLink(text: "See all", indicator: .external, isFullWidth: true) { /* the action to process */ }
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
/// - Version: 2.4.0 (Figma component design version)
/// - Since: 0.11.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSLink: View {

    // MARK: - Stored Properties

    private let layout: Layout
    private let text: String
    private let size: Size
    private let density: Density
    private let isFullWidth: Bool
    private let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    /// Represents the size of an `OUDSLink`.
    /// - Since: 0.11.0
    @frozen public enum Size {
        case small, `default`
    }

    /// Represents the type of density for an `OUDSLink`.
    /// `.compact` can be used for interfaces with a lot of content to display.
    /// - Since: 3.0.0
    @frozen public enum Density {
        case `default`, compact
    }

    /// Represents the arrow / chevron / indicator of an `OUDSLink`.
    /// - Since: 0.11.0
    @frozen public enum Indicator {
        case previous, next, external
    }

    enum Layout {
        case indicator(OUDSLink.Indicator)
        case textOnly
        case textAndIcon(OUDSImage)
    }

    // MARK: - Initializers — String label + optional icon

    /// Create a link with text and an optional icon.
    ///
    /// ```swift
    ///     OUDSLink(text: "Learn more", image: OUDSImage(asset: Image(systemName: "arrow.right")), size: .default) {}
    ///
    ///     // Raw (non-tinted) image:
    ///     OUDSLink(text: "Brand", image: OUDSImage(asset: Image("ic_brand"), renderingMode: .original), size: .default) {}
    ///
    ///     // Text only — omit image or pass nil:
    ///     OUDSLink(text: "Feedback", size: .small) {}
    /// ```
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - image: An optional ``OUDSImage`` encapsulating the asset and its rendering mode. Default set to `nil` (text-only layout).
    ///   - size: Size of the link
    ///   - density: The density to apply to the link defining some spaces, default set to `.default`
    ///   - action: The action to perform when the user triggers the link
    public init(text: String,
                image: OUDSImage? = nil,
                size: Size = .default,
                density: Density = .default,
                action: @escaping () -> Void)
    {
        layout = image.map { .textAndIcon($0) } ?? .textOnly
        self.text = text
        self.size = size
        self.density = density
        isFullWidth = false
        self.action = action
    }

    // MARK: - Initializers — LocalizedStringKey + optional icon

    /// Creates a link with a localized text and optional icon, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     OUDSLink(LocalizedStringKey("feedback_link"), bundle: Bundle.module, size: .default) {}
    ///
    ///     OUDSLink(LocalizedStringKey("learn_more"),
    ///              bundle: Bundle.module,
    ///              image: OUDSImage(asset: Image("ic_heart")),
    ///              size: .default) {}
    /// ```
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - image: An optional ``OUDSImage`` encapsulating the asset and its rendering mode. Default set to `nil` (text-only layout).
    ///   - size: Size of the link
    ///   - density: The density to apply to the link defining some spaces, default set to `.default`
    ///   - action: The action to perform when the user triggers the link
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                image: OUDSImage? = nil,
                size: Size = .default,
                density: Density = .default,
                action: @escaping () -> Void)
    {
        layout = image.map { .textAndIcon($0) } ?? .textOnly
        text = key.resolved(tableName: tableName, bundle: bundle)
        self.size = size
        self.density = density
        isFullWidth = false
        self.action = action
    }

    // MARK: - Initializers — indicator (unchanged)

    // swiftlint:disable function_default_parameter_at_end

    /// Create a link with a "before `Indicator`" (`OUDSLink.Indicator.previous`) or "after indicator" (`OUDSLink.Indicator.next`) beside the text.
    ///
    /// ```swift
    ///     // A "back" link
    ///     OUDSLink(text: "Back", indicator: .previous) { /* action to trigger */ }
    ///     // An "open external" link
    ///     OUDSLink(text: "Open", indicator: .external) { /* action to trigger, i.e. redirect outside the app */ }
    /// ```
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - indicator: Indicator displayed in the link.
    ///   When `OUDSLink.Indicator.previous`, the indicator is displayed before the text.
    ///   When `OUDSLink.Indicator.next`, the indicator is displayed after the text.
    ///   - size: Size of the link
    ///   - density: The density to apply to the link defining some spaces, default set to `.default`
    ///   - isFullWidth: When `true`, the link stretches to fill all available horizontal width.
    ///   The label stays anchored to the an edge and the indicator to the other edge.
    ///   Defaults to `false` (intrinsic sizing).
    ///   - action: The action to perform when the user triggers the link
    public init(text: String,
                indicator: Indicator,
                size: Size = .default,
                density: Density = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        layout = .indicator(indicator)
        self.text = text
        self.size = size
        self.density = density
        self.isFullWidth = isFullWidth
        self.action = action
    }

    /// Creates a link with a localized text and a navigation indicator, looking up the key in the given bundle.
    ///
    /// ```swift
    ///     // A "back" link
    ///     OUDSLink(LocalizedStringKey("back_link"), bundle: Bundle.module, indicator: .previous) { /* action to trigger */ }
    ///     // An "open external" link
    ///     OUDSLink(LocalizedStringKey("open_link"), bundle: Bundle.module, indicator: .external) { /* action to trigger, i.e. redirect outside the app */ }
    /// ```
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - indicator: Indicator displayed in the link
    ///   - size: Size of the link
    ///   - density: The density to apply to the link defining some spaces, default set to `.default`
    ///   - isFullWidth: When `true`, the link stretches to fill all available horizontal width.
    ///   The label stays anchored to one edge and the indicator to the other edge.
    ///   Defaults to `false` (intrinsic sizing).
    ///   - action: The action to perform when the user triggers the link
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                indicator: Indicator,
                size: Size = .default,
                density: Density = .default,
                isFullWidth: Bool = false,
                action: @escaping () -> Void)
    {
        layout = .indicator(indicator)
        text = key.resolved(tableName: tableName, bundle: bundle)
        self.size = size
        self.density = density
        self.isFullWidth = isFullWidth
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
        .buttonStyle(LinkButtonStyle(layout: layout, size: size, density: density, isFullWidth: isFullWidth))
        .accessibilityRemoveTraits(.isButton)
        .accessibilityAddTraits(.isLink)
    }

    // MARK: - Helpers

    private func resourceName(for navigationIndicator: OUDSLink.Indicator) -> String {
        switch navigationIndicator {
        case .previous:
            "Component-link-previous"
        case .next:
            "Component-link-next"
        case .external:
            "Component-link-external-link"
        }
    }
}
