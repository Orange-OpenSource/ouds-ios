
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

import OUDSThemesContract
import SwiftUI

/// Defines the alinment of the leading, trailing and texts containers
///
/// - Since: 2.0.0
@frozen public enum OUDSListItemContainersAlignment {
    /// Containers are top aligned
    case top

    /// Containers are centrer
    case center
}

/// Define the style of the item
///
/// - Since: 2.0.0
@frozen public enum OUDSListItemContentStyle {
    /// Outlined means with a border
    case outlined

    /// Standard apperance with a divider or a background
    case standard(divider: Bool, background: Bool)
}

/// Define the size of the item
///
/// - Since: 2.0.0
@frozen public enum OUDSListItemSize {
    /// The standard (i.e. default) size
    case standard

    /// The small size of the ``OUDSListItem``
    ///
    ///  **Remark: Some elements will be displyed in their smallest size (Avatar, Icon, badge, ...), and some elements will be hidden
    ///  (Extra label, Overline)**
    case small
}

extension View {
    /// Use to apply the _Card_ style on items of a list. This style is applied globaly
    /// on each items of a list.
    ///
    /// - Parameters:
    ///     - hasDivider: Flag to display or hide the divider at the bottom of the item
    ///     - hasBackground: Flag to set or remove a background on items
    ///
    /// - Since: 2.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsListCardStyle(hasDdivider: Bool = false,
                                  hasBackground: Bool = true) -> some View
    {
        environment(\.oudsListItemContentStyle, .standard(divider: hasDdivider, background: hasBackground))
    }

    /// Use to apply the _Standard_ style on items of a list. This style is applied globaly
    /// on each items of a list.
    ///
    /// - Parameter style: The `OUDSListItemContentStyle` to apply on items
    ///
    /// - Since: 2.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsListItemStyle(style: OUDSListItemContentStyle = .standard(divider: true, background: false)) -> some View {
        environment(\.oudsListItemContentStyle, style)
    }

    /// Use to define if madia in `OUDSListItem` are rounded.
    ///
    /// - Parameter rounded: Flag to define if rounded. false by default
    ///
    /// - Since: 2.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsListItemRoundedMedia(_ rounded: Bool = false) -> some View {
        environment(\.oudsListItemRoundedMedia, rounded)
    }

    /// Use to align containers in `OUDSListItem`
    ///
    /// - Parameter alignemnt: Alignment to apply, `Center` by default.
    ///
    /// - Since: 2.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsListItemContainerAlignment(_ alignment: OUDSListItemContainersAlignment = .center) -> some View {
        environment(\.oudsListItemContainersAlignment, alignment)
    }

    /// Use to align containers in `OUDSListItem`
    ///
    /// - Parameter isSmall: Alignment to apply, `Center` by default.
    ///
    /// - Since: 2.0.0
    @available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
    public func oudsListItemSize(_ size: OUDSListItemSize) -> some View {
        environment(\.oudsListItemSize, size)
    }
}

extension EnvironmentValues {

    /// Define the current conainers alignment in `OUDSListItem` applyed globaly on a list of items.
    @Entry var oudsListItemContainersAlignment: OUDSListItemContainersAlignment = .center

    /// Define the content style of a `OUDSListItem` applied globaly on items of a list.
    @Entry var oudsListItemContentStyle: OUDSListItemContentStyle = .standard(divider: true, background: false)

    /// Defines if media should be rounded. By default media is square
    @Entry var oudsListItemRoundedMedia: Bool = false

    /// Define the size of items in list. By default, it is the standard
    @Entry var oudsListItemSize: OUDSListItemSize = .standard
}
