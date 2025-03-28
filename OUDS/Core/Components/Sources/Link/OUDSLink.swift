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

/// The ``OUDSLink`` proposes layout with text only or text with icon.
/// It also proposes layout to navigate forward or backward. The link can be displayed in `small` or `medium` size.
///
/// ## Text only or Text and icon layout
///
/// This layout is used to open a link or to display a specific feature (like send feedbacks, show more, ...)
///
/// ```swift
///     // Text only in small size
///     OUDSLink(text: "Feedback", size: .small) { /* the action to process */ }
///
///     // Text and icon in medium size
///     OUDSLink(text: "Feedback", icon: Image("ic_heart"), size: .medium) { /* the action to process */ }
/// ```
///
/// ## Navigation layout
///
/// This layout is used to navigate backward or forward.
///
/// ```swift
///     // Navigate to next page with link in a small size
///     OUDSLink(text: "Feedback", arrow: .next, size: .small) { /* the action to process */ }
///
///     // Navigate to previous page with link in a medium size
///     OUDSLink(text: "Back", arrow: .back, size: .medium) { /* the action to process */ }
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
/// - Since: 0.11.0
public struct OUDSLink: View {

    // MARK: Stored Properties

    private let layout: Layout
    private let text: String
    private let size: Size
    private let action: () -> Void

    /// Represents the size of an `OUDSLink`.
    public enum Size {
        case small, medium
    }

    /// Represents the arrow of an `OUDSLink`.
    public enum Arrow {
        case back, next
    }

    enum Layout {
        case arrow(OUDSLink.Arrow)
        case textOnly
        case iconAndText(Image)
    }

    // MARK: Initializers

    /// Create a link with text and icon.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: Icon displayed in the link
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String, icon: Image? = nil, size: Size = .medium, action: @escaping () -> Void) {
        if let icon {
            layout = .iconAndText(icon)
        } else {
            layout = .textOnly
        }
        self.text = text
        self.size = size
        self.action = action
    }

    /// Create a link with an `Arrow` before `OUDSLink.Arrow.back` or after `OUDSLink.Arrow.Next` the text.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - arrow: Arrow displayed in the link
    ///   When `OUDSLink.Arrow.Back`, the arrow is displayed before the text
    ///   When `OudsLink.Arrow.Next`, the arrow is displayed after the text
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the link
    public init(text: String, arrow: Arrow, size: Size = .medium, action: @escaping () -> Void) {
        layout = .arrow(arrow)
        self.text = text
        self.size = size
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        Button(action: action) {
            switch layout {
            case .arrow:
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    Image(decorative: "ic_form_chevron_left", bundle: Bundle.OUDSComponents)
                        .renderingMode(.template)
                        .resizable()
                }
            case .textOnly:
                Label {
                    Text(LocalizedStringKey(text))
                } icon: {
                    EmptyView()
                }
            case .iconAndText(let icon):
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
}
