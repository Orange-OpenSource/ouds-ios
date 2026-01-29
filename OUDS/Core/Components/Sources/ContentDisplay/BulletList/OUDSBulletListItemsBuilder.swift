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

/// A custom parameter attribute that constructs ``OUDSBulletList.Item`` from closures.
///
/// You typically use ``OUDSBulletListItemBuilder`` as a parameter attribute for
/// sub items producing closure parameters, allowing those closures to provide
/// multiple sub items.
///
/// Clients of this function can use multiple-statement closures to provide
/// several sub items, as shown in the following example:
///
/// ```swift
///     func listItem() -> [OUDSBulletList.Item] {
///         OUDSBulletList.Item("First item")
///         OUDSBulletList.Item("Second item") {
///             OUDSBulletList.Item("First sub item")
///             OUDSBulletList.Item("Second sub item")
///         }
///     }
/// ```
@resultBuilder
public enum OUDSBulletListItemBuilder {

    /// Combines multiple ``OUDSBulletList.Item`` instances into a single array
    public static func buildBlock(_ components: OUDSBulletList.Item...) -> [OUDSBulletList.Item] {
        components
    }

    /// Combines multiple arrays of OUDSBulletListItem into a single array
    /// Accepts variadic array of arrays and flattens them into one array
    public static func buildBlock(_ components: [OUDSBulletList.Item]...) -> [OUDSBulletList.Item] {
        components.flatMap(\.self)
    }

    /// Handles the first branch of an if-else statement (true branch)
    public static func buildEither(first: [OUDSBulletList.Item]) -> [OUDSBulletList.Item] {
        first
    }

    /// Handles the second branch of an if-else statement (false branch)
    public static func buildEither(second: [OUDSBulletList.Item]) -> [OUDSBulletList.Item] {
        second
    }

    /// Finalizes the result, returning the complete list of items
    public static func buildFinalResult(_ component: [OUDSBulletList.Item]) -> [OUDSBulletList.Item] {
        component
    }
}
