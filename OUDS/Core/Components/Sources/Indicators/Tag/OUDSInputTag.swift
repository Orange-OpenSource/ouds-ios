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

// MARK: - OUDS Input Tag

/// An `OUDSInputTag` is a component that allows users to enter multiple values, each represented as a tag. As users type and submit values (usually by
/// pressing enter, comma, or tab), each value is transformed into a tag.
///
/// Input tags are often used for adding labels, categories, or participants. They typically support removing.
///
/// ## Code samples
///
/// ```swift
///     // Create an input tag
///     OUDSInputTag("Label") {
///         // Do something, usually remove itself from a list
///     }
///
///     // Show in a list and remove when clicked
///     var names: [String] = [ "Foo", "Bar", "Wizz" ]
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
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/7565ce-tag/t/3cbd81ab38)
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

    let label: String
    let action: () -> Void

    @Environment(\.theme) private var theme

    /// Creates an `OUDSInputTag`
    ///
    /// **Remark: To disable the tag, use the `View/disabled(disabled:)` view modifier
    ///
    /// - Parameters:
    ///    - label: The label displayed in the input tag
    ///    - action: Called when the input tag is clicked, supposed for remove / delete action
    public init(label: String, action: @escaping () -> Void) {
        if label.isEmpty {
            OL.warning("The OUDSInputTag must not be empty!")
        }
        self.label = label
        self.action = action
    }

    public var body: some View {
        InteractionButton(action: action) {
            InputTagContent(label: label, interactionState: $0)
        }
        .frame(height: theme.tag.tagSizeMinHeightInteractiveArea, alignment: .center)
        .accessibilityHint(accessibilityHint)
    }

    private var accessibilityHint: String {
        "core_inputtag_hint_delete_a11y".localized()
    }
}
