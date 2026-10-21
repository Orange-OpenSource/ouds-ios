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

/// Deprecated initializers of ``OUDSBulletList/Item``.
///
/// The three initializers below (`String`, `AttributedString` and `LocalizedStringKey`) are deprecated in favor
/// of the unified initializer added in v3.2.0 which accepts an ``OUDSTextualContent``.
///
/// They forward to the new unified initializer so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
extension OUDSBulletList.Item { // TODO: v4 - Remove these old inits

    // swiftlint:disable discouraged_optional_boolean

    /// Create the item with a `String` text and sub items.
    ///
    /// - Parameters:
    ///    - text: The text of the item
    ///    - subListType: The specific `OUDSBulletList.Type` for the nested sub-list, if any. If `nil`,
    ///     the type is inherited from the parent list.
    ///    - subListTextStyle: The specific `OUDSBulletList.TextStyle` for the nested sub-list, if any. If
    ///     `nil`, the text style is inherited from the parent list.
    ///    - subListHasBoldText: Whether the text of the nested sub-list should be bold. If `nil`, the bold
    ///     setting is inherited from the parent list.
    ///    - subItems: The sub items builder to add to the current item. **Remark** only three levels are allowed.
    @available(*, deprecated, message: "Use init(_:OUDSTextualContent, ...) with `.raw(_:)`. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ text: String,
                subListType: OUDSBulletList.`Type`? = nil,
                subListTextStyle: OUDSBulletList.TextStyle? = nil,
                subListHasBoldText: Bool? = nil,
                @OUDSBulletListItemBuilder subItems: () -> [OUDSBulletList.Item] = { [] })
    {
        self.init(.raw(text),
                  subListType: subListType,
                  subListTextStyle: subListTextStyle,
                  subListHasBoldText: subListHasBoldText,
                  subItems: subItems)
    }

    /// Create the item with a rich text and sub items.
    ///
    /// - Parameters:
    ///    - richText: The rich text of the item
    ///    - subListType: The specific `OUDSBulletList.Type` for the nested sub-list, if any. If `nil`,
    ///     the type is inherited from the parent list.
    ///    - subListTextStyle: The specific `OUDSBulletList.TextStyle` for the nested sub-list, if any. If
    ///     `nil`, the text style is inherited from the parent list.
    ///    - subListHasBoldText: Whether the text of the nested sub-list should be bold. If `nil`, the bold
    ///     setting is inherited from the parent list.
    ///    - subItems: The sub items builder to add to the current item. **Remark** only three levels are allowed.
    @available(*, deprecated, message: "Use init(_:OUDSTextualContent, ...) with `.rich(_:)`. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ richText: AttributedString,
                subListType: OUDSBulletList.`Type`? = nil,
                subListTextStyle: OUDSBulletList.TextStyle? = nil,
                subListHasBoldText: Bool? = nil,
                @OUDSBulletListItemBuilder subItems: () -> [OUDSBulletList.Item] = { [] })
    {
        self.init(.rich(richText),
                  subListType: subListType,
                  subListTextStyle: subListTextStyle,
                  subListHasBoldText: subListHasBoldText,
                  subItems: subItems)
    }

    /// Creates a bullet list item with a localized text, looking up the key in the given bundle.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - subListType: The specific `OUDSBulletList.Type` for the nested sub-list, if any. If `nil`,
    ///     the type is inherited from the parent list.
    ///    - subListTextStyle: The specific `OUDSBulletList.TextStyle` for the nested sub-list, if any. If
    ///     `nil`, the text style is inherited from the parent list.
    ///    - subListHasBoldText: Whether the text of the nested sub-list should be bold. If `nil`, the bold
    ///     setting is inherited from the parent list.
    ///    - subItems: The sub items builder to add to the current item. **Remark** only three levels are allowed.
    @available(*, deprecated, message: "Use init(_:OUDSTextualContent, ...) with `.localized(_:tableName:bundle:)`. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                subListType: OUDSBulletList.`Type`? = nil,
                subListTextStyle: OUDSBulletList.TextStyle? = nil,
                subListHasBoldText: Bool? = nil,
                @OUDSBulletListItemBuilder subItems: () -> [OUDSBulletList.Item] = { [] })
    {
        self.init(.localized(key, tableName: tableName, bundle: bundle),
                  subListType: subListType,
                  subListTextStyle: subListTextStyle,
                  subListHasBoldText: subListHasBoldText,
                  subItems: subItems)
    }

    // swiftlint:enable discouraged_optional_boolean
}
