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
import OUDSTokensComponent
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
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/472794e18/p/18acc0-switch)
///
/// - Version: 1.1.0 (Figma component design version)
/// - Since: 0.18.0
public struct OUDSTextInput: View {

    // MARK: - Properties

    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a text input.
    ///
    /// - Parameters:
    public init() {
    }

    // MARK: Body

    public var body: some View {
        InteractionButton {
            VibrationsManager.warning()
        } content: { interactionState in
            Text("Content here")
        }
    }
}
