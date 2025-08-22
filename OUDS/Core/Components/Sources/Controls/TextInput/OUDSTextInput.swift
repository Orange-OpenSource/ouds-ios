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

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// - Parameters:
    ///     - label: The lable of the text input
    ///     - helperText: Additional helper text below the input text
    public init(label: String, text: Binding<String>, placeholderText: String? = nil, helperText: String? = nil) {
        self.label = label
        self.text = text
        self.helperText = helperText
        self.placeholderText = placeholderText
    }

    // MARK: Body

    public var body: some View {
        TextInput(label: label,text: text, placeholderText: placeholderText, helperText: helperText)
    }
}

struct TextInput: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholderText: String?
    let helperText: String?
    @Environment(\.theme) private var theme
    @Environment(\.oudsRoundedTextInput) private var rounded

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing:  theme.spaces.spaceFixedNone) {
            VStack(alignment: .leading, spacing:  theme.spaces.spaceFixedNone) {
                TextContainer(label: label, text: text, placeholderText: placeholderText)
                    .padding(.vertical, theme.textInput.textInputSpacePaddingBlockDefault)
                    .padding(.horizontal, theme.textInput.textInputSpacePaddingInlineDefault)
                    .oudsBackground(theme.colors.colorActionSupportEnabled)

                Divider()
                    .oudsHorizontalDivider(dividerColor: .default)
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))

            if let helperText {
                HelperTextContainer(helperText: helperText)
            }
        }
    }

    // MARK: - Helper

    private var cornerRadius: BorderRadiusSemanticToken {
        rounded ? theme.textInput.textInputBorderRadiusRounded : theme.textInput.textInputBorderRadiusDefault
    }
}

struct TextContainer: View {

    // MARK: - Properties

    let label: String
    let text: Binding<String>
    let placeholderText: String?
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: theme.textInput.textInputSpaceColumnGapDefault) {
            LabelContainer(label: label)

            if placeholderText != nil {
                TextField("", text: text, prompt: promptText)
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

