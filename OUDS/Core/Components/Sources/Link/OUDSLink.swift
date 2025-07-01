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
///     // Text and icon in default size
///     OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .default) { /* the action to process */ }
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
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/31c33b-link)
///
/// - Version: 2.0.0 (Figma component design version)
/// - Since: 0.11.0
public struct OUDSLink: View {

    // MARK: Stored Properties

    private let layout: Layout
    private let text: String
    private let size: Size
    private let action: () -> Void

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    /// Represents the size of an `OUDSLink`.
    public enum Size {
        case small, `default`
    }

    /// Represents the arrow / chevron / indicator of an `OUDSLink`.
    public enum Indicator {
        case back, next
    }

    enum Layout {
        case indicator(OUDSLink.Indicator)
        case textOnly
        case textAndIcon(Image)
    }

    // MARK: Initializers

    /// Create a link with text and icon.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: Icon displayed in the link
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String, icon: Image? = nil, size: Size = .default, action: @escaping () -> Void) {
        if let icon {
            layout = .textAndIcon(icon)
        } else {
            layout = .textOnly
        }
        self.text = text
        self.size = size
        self.action = action
    }

    /// Create a link with a "before `Indicator`" (`OUDSLink.Indicator.back`) or "after  indicator" (`OUDSLink.Indicator.next`) beside the text.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - indicator: Indicator displayed in the link
    ///   When `OUDSLink.Indicator.back`, the indicator is displayed before the text
    ///   When `OudsLink.Indicator.next`, the indicator is displayed after the text
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String, indicator: Indicator, size: Size = .default, action: @escaping () -> Void) {
        layout = .indicator(indicator)
        self.text = text
        self.size = size
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        Button(action: action) {
            switch layout {
            case .indicator:
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    Image(decorative: linkIconResourceName, bundle: theme.resourcesBundle)
                        .renderingMode(.template)
                        .resizable()
                }
            case .textOnly:
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    EmptyView()
                }
            case let .textAndIcon(icon):
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    icon
                        .renderingMode(.template)
                        .resizable()
                }
            }
        }
        .buttonStyle(LinkButtonStyle(layout: layout, size: size))
        .accessibilityRemoveTraits(.isButton)
        .accessibilityAddTraits(.isLink)
    }

    // MARK: - Helpers

    private var linkIconResourceName: String {
        if case let .indicator(nav) = layout, nav == .back {
            return layoutDirection == .leftToRight ? "ic_chevron_left" : "ic_chevron_right"
        }
        if case let .indicator(nav) = layout, nav == .next {
            return layoutDirection == .leftToRight ? "ic_chevron_right" : "ic_chevron_left"
        }
        OL.fatal("Tried to load an icon for an OUDS Link which is not a back or next indicator, report an issue at https://github.com/Orange-OpenSource/ouds-ios/issues")
    }
}
