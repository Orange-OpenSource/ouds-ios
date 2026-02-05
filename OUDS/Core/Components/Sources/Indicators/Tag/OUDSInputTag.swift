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

/// Input tag is a UI element that allows to enter multiple values, each represented as a tag.
/// As users type and submit values (usually by pressing enter, comma, or tab), each value is transformed into a tag.
/// Input tag is often used for adding labels, categories, or participants.
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
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-input-tag)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An input tag component in light and dark modes with Orange theme](component_inputTag_Orange)
///
/// ### Orange Compact
///
/// ![An input tag component in light and dark modes with Orange Compact theme](component_inputTag_OrangeCompact)
///
/// ### Sosh
///
/// ![An input tag component in light and dark modes with Sosh theme](component_inputTag_Sosh)
///
/// ### Wireframe
///
/// ![An input tag component in light and dark modes with Wireframe theme](component_inputTag_Wireframe)
///
/// - Version: 1.4.0 (Figma component design version)
/// - Since: 0.21.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
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
        .frame(height: theme.tag.sizeMinHeightInteractiveArea, alignment: .center)
        .accessibilityHint(accessibilityHint)
    }

    private var accessibilityHint: String {
        "core_inputTag_delete_hint_a11y".localized()
    }
}
