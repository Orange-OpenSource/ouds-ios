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

import Foundation

/// An OUDS link which displays a text and an optional icon.

/// In the case it is used in an [OudsColoredBox], its monochrome variant is automatically displayed.
///
/// The tokens associated with this variant can be customized and are identified with the `Mono` suffix (for instance [OudsLinkTokens.colorContentEnabledMono]).
 ///
 ///
import SwiftUI

public struct OUDSLink: View {

    // MARK: Stored Properties

    @Environment(\.oudsOnColoredSurface) private var onColoredSurface

    private let layout: Layout
    private let text: String
    private let size: Size
    private let action: () -> Void

    /// Represents the size of an OUDS link.
    public enum Size {
        case small, medium
    }

    /// Represents the arrow of an OUDS link.
    public enum Arrow {
        case back, next
    }

    public enum Layout {
        case arrow(OUDSLink.Arrow)
        case textOnly
        case textAndIcon(Image)
    }

    /// Create a button with text and icon.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - icon: Icon displayed in the link
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the button
    public init(text: String, icon: Image? = nil, size: Size = .medium, action: @escaping () -> Void) {
        if let icon {
            layout = .textAndIcon(icon)
        } else {
            layout = .textOnly
        }
        self.text = text
        self.size = size
        self.action = action
    }

    /// Create a button with an `Arrow` before `OIDSLink.Arrow.back` or after `OUDSLink.Arrow.Next` a text.
    ///
    /// In the case it is used in an `OUDSColoredSurface`, its monochrome variant is automatically displayed.
    /// The tokens associated with this variant can be customized and are identified with the `Mono` suffix (for instance `OUDSLinkTokens.colors.colorContentEnabledMono`.
    /// - Parameters:
    ///   - text: Text displayed in the link
    ///   - arrow: Arrow displayed in the link.
    ///   When `OUDSLink.Arrow.Back`, the arrow is displayed before the text.
    ///   When `OudsLink.Arrow.Next`, the arrow is displayed after the text.
    ///   - size: Size of the link
    ///   - action: The action to perform when the user triggers the button
    public init(text: String, arrow: Arrow, size: Size = .medium, action: @escaping () -> Void) {
        layout = .arrow(arrow)
        self.text = text
        self.size = size
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        Button( action: action, label: label)
            .buttonStyle(OUDSLinktyle(layout: layout, size: size))
    }

    @ViewBuilder
    private func label() -> some View {
        switch layout {
        case .arrow:
            Label {
                Text(text)
            } icon: {
                Image(decorative: "ic_form_chevron_left", bundle: Bundle.oudsComponents)
            }
        case .textOnly:
            Label {
                Text(text)
            } icon: {
                EmptyView()
            }
        case .textAndIcon(let icon):
            Label {
                Text(text)
            } icon: {
                icon
            }
        }
    }
}

// MARK: - Link Text With Arrow

private struct LinkTextWithArrow: View {

    @Environment(\.theme) private var theme

    let text: String

    // TODO: Add right design according to state
    var body: some View {
        Text(LocalizedStringKey(text))
            .typeLabelStrongLarge(theme)
            .multilineTextAlignment(.center)
            .padding(.vertical, theme.button.buttonSpacePaddingBlock)
            .padding(.horizontal, theme.button.buttonSpacePaddingInlineIconNone)
            .frame(minWidth: theme.button.buttonSizeMinWidth, minHeight: theme.button.buttonSizeMinHeight, alignment: .center)
    }
}
