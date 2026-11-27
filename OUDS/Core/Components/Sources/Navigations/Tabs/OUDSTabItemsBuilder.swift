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

#if !os(watchOS)
/// Constructs tab data using statements, arrays, `if`, `if/else` and `for` loops.
/// Shared by ``OUDSLineTabs`` and ``OUDSContainedTabs``. This is a data builder:
/// use Swift `for` loops rather than SwiftUI `ForEach`, and do not nest tab groups.
@available(iOS 15, macOS 13, tvOS 16, visionOS 1, *)
@resultBuilder
@frozen public enum OUDSTabItemsBuilder<Tag: Hashable> {
    /// Converts one item into a builder component.
    public static func buildExpression(_ expression: OUDSTabItem<Tag>) -> [OUDSTabItem<Tag>] { [expression] }

    /// Accepts an existing array of items.
    public static func buildExpression(_ expression: [OUDSTabItem<Tag>]) -> [OUDSTabItem<Tag>] { expression }

    /// Combines statements while preserving their order.
    public static func buildBlock(_ components: [OUDSTabItem<Tag>]...) -> [OUDSTabItem<Tag>] { components.flatMap(\.self) }

    // swiftlint:disable discouraged_optional_collection
    /// Supports a conditional without an `else` branch.
    /// The optional input is required by Swift's result-builder transformation.
    public static func buildOptional(_ component: [OUDSTabItem<Tag>]?) -> [OUDSTabItem<Tag>] { component ?? [] }
    // swiftlint:enable discouraged_optional_collection

    /// Supports the first branch of a conditional.
    public static func buildEither(first component: [OUDSTabItem<Tag>]) -> [OUDSTabItem<Tag>] { component }

    /// Supports the second branch of a conditional.
    public static func buildEither(second component: [OUDSTabItem<Tag>]) -> [OUDSTabItem<Tag>] { component }

    /// Flattens the iterations of a Swift `for` loop.
    public static func buildArray(_ components: [[OUDSTabItem<Tag>]]) -> [OUDSTabItem<Tag>] { components.flatMap(\.self) }

    /// Supports availability-checked branches.
    public static func buildLimitedAvailability(_ component: [OUDSTabItem<Tag>]) -> [OUDSTabItem<Tag>] { component }
}
#endif
