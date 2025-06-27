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

// MARK: - OUDS Chip


/// The ``OUDSChip`` proposes layout with text only, icon only or text with icon.
///
/// ## Code samples
///
/// ```swift
///     // Icon only with default hierarchy
///     OUDSChip(icon: Image("ic_heart"), accessibilityLabel: "Heart") { /* the action to process */ }
///
///     // Text only
///     OUDSChip(text: "Label") { /* the action to process */ }
///
///     // Text and icon
///     OUDSChip(icon: Image("ic_heart"), text: "Label") { /* the action to process */ }
/// ```
///
///
/// ## Design documentation
/// - TODO: Update link
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/48a788-button)
///
/// - Version: 1.1.0
/// - Since: 0.16.0
public struct OUDSChip: View {

    // MARK: Stored Properties

    private let layout: Layout
    private let action: () -> Void

    private enum Layout {
        case text(String)
        case icon(Image, String)
        case textAndIcon(text: String, icon: Image)
    }

    // MARK: Initializers

    /// Create a chip with text and icon.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - text: The text to display in the chip
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, text: String, action: @escaping () -> Void) {
        layout = .textAndIcon(text: text, icon: icon)
        self.action = action
    }

    /// Create a chip with an icon only.
    ///
    /// - Parameters:
    ///    - icon: An image which shoud contains an icon
    ///    - accessibilityLabel: The text to vocalize with *Voice Over* describing the chip action
    ///    - action: The action to perform when the user triggers the chip
    public init(icon: Image, accessibilityLabel: String, action: @escaping () -> Void) {
        layout = .icon(icon, accessibilityLabel)
        self.action = action
    }

    /// Create a chip with a text only.
    ///
    /// - Parameters:
    ///    - text: The text of the button to display
    ///    - action: The action to perform when the user triggers the button
    public init(text: String, action: @escaping () -> Void) {
        layout = .text(text)
        self.action = action
    }

    // MARK: Body

    public var body: some View {
        Button(action: action) {
            switch layout {
            case let .icon(icon, _):
                ChipIconOnly(icon: icon)
            case let .text(text):
                ChipTextOnly(text: text)
            case let .textAndIcon(text, icon):
                ChipTextAndIcon(text: text, icon: icon)
            }
        }
        .buttonStyle(OUDSChipStyle())
        .accessibilityLabel(accessibilityLabel)
    }

    /// Forges a string to vocalize with *Voice Over* describing the button style `loading`
    /// or the text according to the button type. For iconOnly the `accessibilityLabel` is used,
    /// else the button text is used.
    private var accessibilityLabel: String {
        switch layout {
        case let .text(text), let .textAndIcon(text, _), let .icon(_, text):
            text
        }
    }
}

// MARK: - Chip Icon

private struct ChipIconOnly: View {

    @Environment(\.theme) private var theme

    let icon: Image

    var body: some View {
        ScaledIcon(icon: icon, size: theme.chip.chipSizeIcon)
            .padding(.vertical, theme.chip.chipSpacePaddingBlock) // TODO chipSpacePaddingBlocIconOnly
            .padding(.vertical, theme.chip.chipSpacePaddingInlineIconOnly) // TODO chipSpacePaddingInlineIcon
            .frame(minWidth: theme.chip.chipSizeMinWidth, minHeight: theme.chip.chipSizeMinHeight)
    }
}

// MARK: - Chip Text

private struct ChipTextOnly: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        TextForChip(text: text)
            .padding(.horizontal, theme.chip.chipSpacePaddingInlineIconNone)
            .padding(.vertical, theme.chip.chipSpacePaddingBlock)
            .frame(minWidth: theme.chip.chipSizeMinWidth, minHeight: theme.chip.chipSizeMinHeight, alignment: .center)
    }
}

// MARK: - Chip Text And Icon

private struct ChipTextAndIcon: View {

    @Environment(\.theme) private var theme

    let text: String
    let icon: Image

    var body: some View {
        HStack(alignment: .center, spacing: theme.chip.chipSpaceColumnGapColumnGap) { // TODO: chipSpaceColumnGapIcon
            FixedIcon(icon: icon, size: theme.chip.chipSizeIcon)
            TextForChip(text: text)
        }
        .padding(.vertical, theme.chip.chipSpacePaddingBlock)
        .padding(.leading, theme.chip.chipSpacePaddingInlineIconStart) // TODO: chipSpacePaddingInlineIcon
        .padding(.trailing, theme.chip.chipSpacePaddingInlineIconNone)

        .frame(minWidth: theme.button.buttonSizeMinWidth, minHeight: theme.button.buttonSizeMinHeight, alignment: .center)
    }
}

// MARK: - Scaled Icon

private struct ScaledIcon: View {

    let icon: Image
    @ScaledMetric var size: CGFloat

    var body: some View {
        IconForChip(icon: icon)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Fixed Icon

private struct FixedIcon: View {

    let icon: Image
    let size: CGFloat

    var body: some View {
        IconForChip(icon: icon)
            .frame(width: size, height: size, alignment: .center)
    }
}

// MARK: - Icon For Chip

private struct IconForChip: View {

    let icon: Image

    var body: some View {
        icon
            .resizable()
            .renderingMode(.template)
    }
}

// MARK: - Text For Chip

private struct TextForChip: View {

    @Environment(\.theme) private var theme

    let text: String

    var body: some View {
        Text(LocalizedStringKey(text))
            .typeLabelStrongMedium(theme)
            .multilineTextAlignment(.center)
    }
}
