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

// MARK: - OUDS Checkbox

/// The ``OUDSCheckboxOnly`` proposes layout to add in your views a lonely checkbox, without labels, texts nor icons checkboxes components
/// If you want to use a checkbox wit additional texts and icon, prefer instead ``OUDSCheckboxControlItem``.
/// 
/// ## Selector states
///
/// The checkbox selector has three available states:
/// - **selected**: the checkbox is filled with a tick, the user has made the action to select the checkbox
/// - **unselected**: the checkbox is empty, does not contain a tick, the user has made the action to unselect or did not select yet the checkbox
/// - **undeterminate**: mike a prefilled or preticked checkbox, the user did not do anything on it yet
///
/// ## Particular cases
///
/// An ``OUDSCheckboxOnly`` can be related to an error situation, for example troubles for a formular.
/// A dedicated look-and-feel is implemented for that if the `isError` flag is risen.
/// In addition, the ``OUDSCheckboxOnly`` can be in read only mode, i.e. the user cannot interact with the component yet but this component must not be considered
/// as disabled.
///
/// ## Cases forbidden by design
///
/// **The design system does not allow to have both an error situation and a read only component.**
/// **The design system does not allow to have both an error situation and a disabled component.**
/// **The design system does not allow to have both a read only and a disabled component.**
///
/// ## Code samples
///
/// ```swift
///     // Supposing we have an undeterminate state checkbox
///     @Published var state: OUDSCheckboxSelectorState  = .undeterminate
///
///     // A simple checkbox, no error, not in read only mode
///     OUDSCheckboxOnly(state: $state)
///
///     // A simple checkbox, but is an error context
///     OUDSCheckboxOnly(state: $state, isError: true)
///
///     // A simple checkbox, but in read only mode
///     OUDSCheckboxOnly(state: $state, isReadOnly: true)
///
///     // Never disable a read only or an error-related checkbox as it will crash
///     // This is forbidden by design!
///     OUDSCheckboxOnly(state: $state, isError: true).disabled(true) // fatal error
///     OUDSCheckboxOnly(state: $state, isReadyOnly: true).disabled(true) // fatal error
/// ```
///
/// ## Design documentation
///
/// See [unified-design-system.orange.com/472794e18/p/23f1c1-checkbox](https://unified-design-system.orange.com/472794e18/p/23f1c1-checkbox)
///
/// - Since: 0.11.0
public struct OUDSCheckboxOnly: View {

    // MARK: - Properties

    @Binding var selectorState: OUDSCheckboxSelectorState

    private let isError: Bool
    private let isReadOnly: Bool

    // MARK: - Initializers

    /// Creates a checkbox with no label, only the selector
    ///
    /// **The design system does not allow to have both an error situation and a read only mode for the component.**
    ///
    /// - Parameters:
    ///    - state: A binding to a property that determines wether the selector is ticked (selected), unticked (unselected) or preticked (undeterminate).
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    public init(state: Binding<OUDSCheckboxSelectorState>,
                isError: Bool = false,
                isReadOnly: Bool = false) {
        self._selectorState = state
        self.isError = isError
        self.isReadOnly = isReadOnly
    }

    // MARK: Body

    public var body: some View {
        Checkbox(state: $selectorState, isError: isError, isReadOnly: isReadOnly)
    }
}
