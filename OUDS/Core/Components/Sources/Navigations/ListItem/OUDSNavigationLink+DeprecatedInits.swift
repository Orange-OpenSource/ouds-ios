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

#if !os(tvOS) && !os(watchOS) && !os(visionOS)
// Component available only for iOS, but macOS not excluded to allow documentation build
import SwiftUI

/// Deprecated initializers of ``OUDSNavigationLink``.
///
/// The two initializers below (`String` title and `LocalizedStringKey`) are deprecated in favor
/// of the initializer added in v3.3.0 which accepts an ``OUDSListItemData`` and optional
/// leading and trailing elements.
///
/// They forward to the new initializer so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.2.0 → v3.3.0` for the full migration guide.
@available(iOS 15, *)
extension OUDSNavigationLink { // TODO: v4 - Remove these old inits

    /// Defines an ``OUDSNavigationListItem`` backed by a `NavigationLink`
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps.
    ///
    /// - Parameters:
    ///    - title: The label for the ``OUDSNavigationListItem``
    ///    - hasBoldLabel: Flag to rise if title must be bold or not, default set to *false*
    ///    - indicatorType: The type of link to apply, default set to `.next`
    ///    - style: The type of style to apply, default set to `.item(divider: true, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    @available(*, deprecated, message: "Use init(data:…) with `.textual(_:isBold:)` label. See MIGRATION.md v3.3.0.")
    @_disfavoredOverload
    public init(title: String,
                hasBoldLabel: Bool = false,
                indicatorType: OUDSNavigationListItemIndicatorType = .next,
                style: OUDSListItemContentStyle = .item(divider: true, background: false),
                destination: @escaping () -> Destination)
    {
        self.init(data: .init(label: .textual(.raw(title), isBold: hasBoldLabel)),
                  indicatorType: indicatorType,
                  style: style,
                  destination: destination)
    }

    /// Defines an ``OUDSNavigationListItem`` backed by a `NavigationLink`
    /// with a `Destination` ``SwiftUICore/View``  to display whe the user taps.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - hasBoldLabel: Flag to rise if title must be bold or not, default set to *false*
    ///    - indicatorType: The type of link to apply, default set to `.next`
    ///    - style: The type of style to apply, default set to `.item(divider: true, background: false)`
    ///    - destination: A closure providing the view to display when the user taps the item.
    @available(*, deprecated, message: "Use init(data:…) with `.textual(.localized(_:))` label. See MIGRATION.md v3.3.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                hasBoldLabel: Bool = false,
                indicatorType: OUDSNavigationListItemIndicatorType = .next,
                style: OUDSListItemContentStyle = .item(divider: true, background: false),
                destination: @escaping () -> Destination)
    {
        self.init(data: .init(label: .textual(.raw(key.resolved(tableName: tableName, bundle: bundle)), isBold: hasBoldLabel)),
                  indicatorType: indicatorType,
                  style: style,
                  destination: destination)
    }
}
#endif
