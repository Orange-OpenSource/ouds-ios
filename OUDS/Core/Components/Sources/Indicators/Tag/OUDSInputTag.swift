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

import OUDSTokensSemantic
import SwiftUI

/// An `OUDSIinputTag` is a component that allows users to enter multiple values, each represented as a tag. As users type and submit values (usually by
/// pressing enter, comma, or tab), each value is transformed into a Tag.
///
/// Input tags are often used for adding labels, categories, or participants. They typically support editing, removing, and validating individual tags.
///
/// ## Code samples
///
/// ```swift
///     // Create an Input Tag
///     OUDSInputTag("Label") {
///         // Do something, usually remove itself from a list
///     }
///
///     // Show in a list and removed whend clicked
///     var names: [String]
///
///     ForEach(names, id: \.self) { name in
///         OUDSInputTag(label: name) {
///             if let index = names.firstIndex(of: name) {
///                 names.remove(at: index)
///             }
///         }
///     }
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An input tag component in light and dark mode with Orange theme](component_inputTag_Orange)
///
/// ### Orange Business Tools
///
/// ![An input tag component in light and dark mode with Orange Business Tools theme](component_inputTag_OrangeBusinessTools)
///
/// ### Sosh
///
/// ![An input tag component in light and dark mode with Sosh theme](component_inputTag_Sosh)
///
/// ### Wireframe
///
/// ![An input tag component in light and dark mode with Wireframe theme](component_inputTag_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.21.0
public struct OUDSInputTag: View {

    // MARK: Stored Properties

    let label: String
    let action: () -> Void

    @Environment(\.theme) var theme

    // MARK: - Initializer

    /// Create an `OUDSInputTag`
    ///
    ///  - Parameters:
    ///     - label: The label displayed in the input tag
    ///     - action: Called when the input tag is clicked
    ///
    /// **Remark: To disable the tag, used the `View.disable()` helper
    public init(label: String, action: @escaping () -> Void) {
        self.label = label
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        InteractionButton(action: action) {
            InputTagContent(label: label, interactionState: $0)
        }
        .frame(height: theme.tag.tagSizeMinHeightInteractiveArea, alignment: .center)
    }
}

private struct InputTagContent: View {

    // MARK: Stored Properties

    let label: String
    let interactionState: InteractionState
    @Environment(\.theme) var theme

    // MARK: Body

    var body: some View {
        HStack(alignment: .center, spacing: theme.tag.tagSpaceColumnGapDefault) {
            Text(label)
                .typeLabelStrongMedium(theme)
            ScaledIcon(icon: Image(decorative: "ic_delete", bundle: theme.resourcesBundle).renderingMode(.template),
                       size: theme.tag.tagSizeAssetDefault)
                .aspectRatio(contentMode: .fit)
        }
        .padding(.vertical, theme.tag.tagSpacePaddingBlockDefault)
        .padding(.leading, theme.tag.tagSpacePaddingInlineDefault)
        .padding(.trailing, theme.tag.tagSpacePaddingInlineAssetDefault)
        .frame(minWidth: theme.tag.tagSizeMinWidthDefault, minHeight: theme.tag.tagSizeMinHeightDefault)
        .modifier(InputTagBackgroundModifier(state: interactionState))
        .modifier(InputTagForegroundModifier(state: interactionState))
        .modifier(InputTagBorderModifier(state: interactionState))
    }
}

/// Used to apply a background color
private struct InputTagForegroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content.oudsForegroundColor(color)
    }

    // MARK: Private helpers

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.inputTag.inputTagColorContentEnabled
        case .hover:
            theme.inputTag.inputTagColorContentHover
        case .pressed:
            theme.inputTag.inputTagColorContentPressed
        case .disabled:
            theme.colors.colorActionDisabled
        case .readOnly:
            // should not appear
            theme.colors.colorActionDisabled
        }
    }
}

/// Used to apply a background color
private struct InputTagBackgroundModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        if let color {
            content.oudsBackground(color)
        } else {
            content
        }
    }

    // MARK: Private helpers

    private var color: MultipleColorSemanticTokens? {
        switch state {
        case .enabled:
            theme.inputTag.inputTagColorBgEnabled
        case .hover:
            theme.inputTag.inputTagColorBgHover
        case .pressed:
            theme.inputTag.inputTagColorBgPressed
        case .disabled:
            nil
        case .readOnly:
            // should not appear
            nil
        }
    }
}

/// Used to apply a border with color, width and radius associated to the state
private struct InputTagBorderModifier: ViewModifier {

    // MARK: Stored Properties

    let state: InteractionState

    @Environment(\.theme) private var theme

    // MARK: Body

    func body(content: Content) -> some View {
        content
            .oudsBorder(
                style: theme.borders.borderStyleDefault,
                width: width,
                radius: theme.tag.tagBorderRadius,
                color: color)
    }

    // MARK: Private helpers

    private var width: BorderWidthSemanticToken {
        switch state {
        case .enabled, .disabled:
            theme.inputTag.inputTagBorderWidthDefault
        case .hover, .pressed:
            theme.inputTag.inputTagBorderWidthDefaultInteraction
        case .readOnly:
            // should not appear
            theme.inputTag.inputTagBorderWidthDefault
        }
    }

    private var color: MultipleColorSemanticTokens {
        switch state {
        case .enabled:
            theme.inputTag.inputTagColorBorderEnabled
        case .hover:
            theme.inputTag.inputTagColorBorderHover
        case .pressed:
            theme.inputTag.inputTagColorBorderPressed
        case .disabled:
            theme.colors.colorActionDisabled
        case .readOnly:
            // should not appear
            theme.colors.colorActionDisabled
        }
    }
}
