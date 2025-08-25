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

import OUDS
import OUDSTokensComponent
import OUDSTokensSemantic
import SwiftUI

// MARK: - OUDS Text input

/// The ``OUDSTextInput`` proposes layout to
/// A Text Input is a user interface component that allows users to enter, edit, or select
/// ???? single-line ??? textual data. It's one of the most fundamental form elements used to capture user input such as names, emails, passwords, or search queries.
///
/// It provides a visual and interactive affordance for text entry while supporting labels, placeholders, icons, helper messages, and validation feedback.
///
/// ## Accessibility considerations
///
/// ## Code samples
///
/// ```swift
/// ```
///
/// ## Rounded layout
///
/// TextInput can have rounded layouts to be favored in more emotional, immersive contexts or those tied to specific visual identities.
/// For standard or business-oriented journeys, keep the default corners.
/// This evolution addresses the need for flexibility in adapting the design to some brand contexts.
///
/// To activate the rounded button behavior, set to true the  `oudsRoundedTetxInput` environment variable
/// at the root level of the view hierarchy (i.e. can be applied on the `OUDSThemeableView`),
/// to be sure all buttons in the application are rounded.
///
/// ```swift
///     // Add themeable view to your app root view to use the OrangeTheme
///     OUDSThemeableView(theme: OrangeTheme()) {
///         YourRootView() // With some views with TextInput
///     }
///     .environment(\.oudsRoundedTextInput, true)
/// ```
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 0.18.0
public struct OUDSTextInput: View {

    // MARK: - Properties

    @Environment(\.theme) private var theme

    let label: String
    let text: Binding<String>
    let helperText: String?
    let placeholderText: String?
    let leadingIcon: Image?
    let style: Style

    public enum Style {
        /// An input with a subtle background fill and a visible bottom border,
        /// creating a softer and more contained look. Best suited for dense layouts or to enhance visibility.
        case `default`
        /// A minimalist input with a transparent background and a visible stroke outlining
        /// the field.
        case alternative
    }

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// - Parameters:
    ///     - label: The lable of the text input
    ///     - helperText: Additional helper text below the input text
    ///     - placeholderText: An optional placeholder text set in place of text when empty
    ///     - leadingIcon: An optional leading icon to provide more context
    ///     - style: The style of the text input
    public init(label: String, text: Binding<String>, placeholderText: String? = nil, helperText: String? = nil, leadingIcon: Image? = nil, style: Style = .default) {
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholderText = placeholderText
        self.leadingIcon = leadingIcon
        self.style = style
    }

    // MARK: Body

    public var body: some View {
        TextInput(label: label,text: text, placeholderText: placeholderText, helperText: helperText, leadingIcon: leadingIcon, style: style)
    }
}

struct TextInput: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholderText: String?
    let helperText: String?
    let leadingIcon: Image?
    let style: OUDSTextInput.Style
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing:  theme.spaces.spaceFixedNone) {
            TextInputContainer(label: label, text: text, placeholderText: placeholderText, leadingIcon: leadingIcon)
                .padding(.vertical, theme.textInput.textInputSpacePaddingBlockDefault)
                .padding(.leading, leading)
                .padding(.trailing, trailing)
                .modifier(TextInputBackgroundModifier(style: style))
                .modifier(TextInputBoderModifier(style: style))

            if let helperText, !helperText.isEmpty {
                HelperTextContainer(helperText: helperText)
            }
        }
        .frame(minWidth: theme.textInput.textInputSizeMinWidth,
               maxWidth: theme.textInput.textInputSizeMaxWidth,
               minHeight: theme.textInput.textInputSizeMinHeight,
               alignment: .center)
    }

    private var leading: SpaceSemanticToken {
        // TODO: textInputSpacePaddingInlineStart is missing
        // leadingIcon == nil ? theme.textInput.textInputSpacePaddingInlineDefault : theme.textInput.textInputSpacePaddingInlineStart
        theme.textInput.textInputSpacePaddingInlineDefault
    }

    private var trailing: CGFloat {
        leadingIcon == nil ? theme.textInput.textInputSpacePaddingInlineDefault : theme.textInput.textInputSpacePaddingInlineTrailingAction
    }

}

struct TextInputBackgroundModifier: ViewModifier {

    // MARK: - Stored properties

    let style: OUDSTextInput.Style
    @Environment(\.theme) private var theme
    @Environment(\.oudsRoundedTextInput) private var rounded
    @Environment(\.isEnabled) private var enabled
    @Environment(\.isFocused) private var focused

    @State private var hover = false

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default:
            content
                .onHover { hover in
                    self.hover = hover
                }
                .oudsBackground(color)
        case .alternative:
            content
        }
    }

    private var color: MultipleColorSemanticTokens {
        if !enabled{
            return theme.colors.colorActionDisabled
        }
        if hover {
            return theme.colors.colorActionSupportHover
        }
        if focused {
            return theme.colors.colorActionSupportFocus
        }
        return theme.colors.colorActionSupportHover
    }
}

struct TextInputBoderModifier: ViewModifier {

    // MARK: - Stored properties

    let style: OUDSTextInput.Style
    @Environment(\.theme) private var theme
    @Environment(\.oudsRoundedTextInput) private var rounded

    // MARK: - Body

    func body(content: Content) -> some View {
        switch style {
        case .default:
            VStack(alignment: .leading, spacing:  theme.spaces.spaceFixedNone) {
                content

                Divider()
                    .oudsHorizontalDivider(dividerColor: .default)
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .alternative:
            content
                .oudsBorder(style: theme.borders.borderStyleDefault,
                            width: theme.textInput.textInputBorderWidthDefault,
                            radius: cornerRadius,
                            color: theme.textInput.textInputColorBorderEnabled)
        }
    }

    // MARK: - Helper

    private var cornerRadius: BorderRadiusSemanticToken {
        rounded ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }
}

struct TextInputContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholderText: String?
    let leadingIcon: Image?
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.textInput.textInputSpaceColumnGapDefault) {
            leadingIcon?
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: theme.textInput.textInputSizeLeadingIcon, alignment: .center)

            VStack(alignment: .leading, spacing: theme.textInput.textInputSpaceColumnGapDefault) {
                LabelContainer(label: label)

                if let placeholderText, !placeholderText.isEmpty {
                    TextField("", text: text, prompt: promptText)
                }
            }
        }
    }

    // MARK: - Helper

    private var promptText: Text? {
        if let placeholderText {
            return Text(placeholderText)
        }
        return nil
    }
}

struct LabelContainer: View {

    // MARK: - Properties

    let label: String
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    var body: some View {
        Text(label)
            .typeLabelDefaultLarge(theme)
            .oudsForegroundColor(color)
            .frame(maxWidth: .infinity, maxHeight: theme.textInput.textInputSizeLabelMaxHeight, alignment: .leading)
    }

    // MARK: Helper

    private var color: MultipleColorSemanticTokens {
        isEnabled ? theme.colors.colorContentMuted: theme.colors.colorActionDisabled
    }
}

struct HelperTextContainer: View {

    // MARK: - Properties

    let helperText: String
    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: - Body

    var body: some View {
        Text(helperText)
            .typeLabelDefaultMedium(theme)
            .oudsForegroundColor(theme.colors.colorContentMuted)
            .padding(.top, theme.textInput.textInputSpacePaddingBlockTopHelperText)
            .padding(.horizontal, theme.textInput.textInputSpacePaddingInlineDefault)
    }

    // MARK: Helper

    private var color: MultipleColorSemanticTokens {
        isEnabled ? theme.colors.colorContentMuted: theme.colors.colorActionDisabled
    }
}

