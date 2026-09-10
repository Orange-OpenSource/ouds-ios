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

// MARK: - Environment values

extension EnvironmentValues {

    /// Some accessibility traits to add in specific parts of some compatible OUDS components.
    @Entry var additionalTraits: AccessibilityTraits = []
}

// MARK: - OUDS Component Accessibility Traits Modifier

/// `ViewModifier` that propagates accessibility traits down the environment so that
/// specific parts of some compatible OUDS components can get additional accessibility traits.
///
/// Prefer the convenience methods on `View`:
/// - ``View/oudsAccessibilityAddTraits(_:)-single``
/// - ``View/oudsAccessibilityAddTraits(_:)-array``
struct OUDSComponentAccessibilityTraitsModifier: ViewModifier {

    let traits: AccessibilityTraits

    func body(content: Content) -> some View {
        content.transformEnvironment(\.additionalTraits) { $0.formUnion(traits) }
    }
}

// MARK: - View extension

extension View {

    /// Adds one accessibility trait to add to any compatible OUDS components in the view subtree.
    ///
    /// ```swift
    /// OUDSTextArea(label: "Title", text: $text)
    ///     .oudsAccessibilityAddTraits(.isHeader) // Will add "header" trait to text editor
    /// ```
    ///
    /// - Parameter trait: The `AccessibilityTraits` value to add.
    /// - Returns: A view that sets the given trait on the inner text editor.
    public func oudsAccessibilityAddTraits(_ trait: AccessibilityTraits) -> some View {
        modifier(OUDSComponentAccessibilityTraitsModifier(traits: trait))
    }

    /// Adds multiple accessibility traits to add to any compatible OUDS components in the view subtree.
    ///
    /// ```swift
    /// OUDSTextArea(label: "Title", text: $text)
    ///     .oudsAccessibilityAddTraits([.isHeader, .updatesFrequently]) // Will add traits to text editor
    /// ```
    ///
    /// - Parameter traits: An array of `AccessibilityTraits` values to add.
    /// - Returns: A view that sets the union of the given traits on the inner text editor.
    public func oudsAccessibilityAddTraits(_ traits: [AccessibilityTraits]) -> some View {
        modifier(OUDSComponentAccessibilityTraitsModifier(traits: traits.reduce(into: AccessibilityTraits()) { $0.formUnion($1) }))
    }
}
