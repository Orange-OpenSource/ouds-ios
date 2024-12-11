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

public struct OOUDSButton: View {

    // MARK: Stored Properties

    private let type: `Type`
    private let hierarchy: Hierarchy
    private let style: Style
    private let action: () -> Void

    private enum `Type`{
        case text(String)
        case icon(Image)
        case textAndIcon(text: String, icon: Image)
    }
    public typealias Hierarchy = OUDSButtonStyle.Hierarchy
    public typealias Style = OUDSButtonStyle.Style

    // MARK: Initializers

    public init(hierarchy: Hierarchy, icon: Image, text: String, style: Style = .normal, action: @escaping () -> Void) {
        self.type = .textAndIcon(text: text, icon: icon)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }
    public init(hierarchy: Hierarchy, icon: Image, style: Style = .normal, action: @escaping () -> Void) {
        self.type = .icon(icon)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }
    public init(hierarchy: Hierarchy, text: String, style: Style = .normal, action: @escaping () -> Void) {
        self.type = .text(text)
        self.hierarchy = hierarchy
        self.style = style
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        Button(action: action) {
            switch type {
            case let .icon(icon):
                ButtonIcon(icon: icon)
            case let .text(text):
                ButtonText(text: text)
            case let .textAndIcon(text, icon):
                ButtonTextAndIcon(text: text, icon: icon)
            }
        }
        .buttonStyle(OUDSButtonStyle(hierarchy: hierarchy, style: style))
    }
}

private struct ButtonIcon: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let icon: Image

    // MARK: Body

    var body: some View {
        IconForButton(icon: icon)
            .padding(.all, theme.buttonSpaceInsetIconAlone)
            .frame(minWidth: theme.buttonSizeMinWidth, minHeight: theme.buttonSizeMinHeight, maxHeight: theme.buttonSizeMaxHeight, alignment: .center)
    }
}

private struct ButtonText: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String

    // MARK: Body

    var body: some View {
        TextForButton(text: text)
            .padding(.vertical, theme.buttonSpacePaddingBlock)
            .padding(.horizontal, theme.buttonSpacePaddingInlineIconNone)
    }
}

private struct ButtonTextAndIcon: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String
    let icon: Image

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.buttonSpaceColumnGapIcon) {
            IconForButton(icon: icon)
            TextForButton(text: text)
        }
        .padding(.vertical, theme.buttonSpacePaddingBlock)
        .padding(.leading, theme.buttonSpacePaddingInlineIconStart)
        .padding(.trailing, theme.buttonSpacePaddingInlineEndIconStart)
    }
}

private struct IconForButton: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let icon: Image

    // MARK: Body

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
            .frame(width: theme.buttonSizeIcon, height: theme.buttonSizeIcon, alignment: .center)
    }
}

private struct TextForButton: View {

    @Environment(\.theme) private var theme

    // MARK: Stored Properties

    let text: String

    // MARK: Body

    var body: some View {
        Text(LocalizedStringKey(text)).typeLabelStrongLarge(theme)
    }
}
