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
import OUDSTokensRaw
import OUDSTokensSemantic

extension OUDSTheme {

    // MARK: Semantic Grid token - Helper

    /// The min column width of a grid based on the given size class.
    ///
    /// ```swift
    ///     struct YourView: View {
    ///
    ///         @Environment(\.theme) var theme
    ///         @Environment(\.oudsHorizontalSizeClass) var sizeClass
    ///         // Or also @Environment(\.oudsVerticalSizeClass) var sizeClass
    ///
    ///         func someFunc() -> GridRawToken {
    ///             theme.gridMinWidth(for: sizeClass)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The minimal width according to viewports / size classes.
    public final func gridMinWidth(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            grids.extraCompactMinWidth
        case .compact:
            grids.compactMinWidth
        case .regular:
            grids.regularMinWidth
        @unknown default:
            OL.fatal("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The max column width of a grid based on the given size class.
    ///
    /// ```swift
    ///     struct YourView: View {
    ///
    ///         @Environment(\.theme) var theme
    ///         @Environment(\.oudsHorizontalSizeClass) var sizeClass
    ///         // Or also @Environment(\.oudsVerticalSizeClass) var sizeClass
    ///
    ///         func someFunc() -> GridRawToken {
    ///             theme.gridMaxWidth(for: sizeClass)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The maximal width according to viewports / size classes.
    public final func gridMaxWidth(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            grids.extraCompactMaxWidth
        case .compact:
            grids.compactMaxWidth
        case .regular:
            grids.regularMaxWidth
        @unknown default:
            OL.fatal("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The margin of a grid based on the given size class.
    ///
    /// ```swift
    ///     struct YourView: View {
    ///
    ///         @Environment(\.theme) var theme
    ///         @Environment(\.oudsHorizontalSizeClass) var sizeClass
    ///         // Or also @Environment(\.oudsVerticalSizeClass) var sizeClass
    ///
    ///         func someFunc() -> GridRawToken {
    ///             theme.gridMargin(for: sizeClass)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The margin according to viewports / size classes.
    public final func gridMargin(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            grids.extraCompactMargin
        case .compact:
            grids.compactMargin
        case .regular:
            grids.regularMargin
        @unknown default:
            OL.fatal("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The column gap of a grid based on the given size class.
    ///
    /// ```swift
    ///     struct YourView: View {
    ///
    ///         @Environment(\.theme) var theme
    ///         @Environment(\.oudsHorizontalSizeClass) var sizeClass
    ///         // Or also @Environment(\.oudsVerticalSizeClass) var sizeClass
    ///
    ///         func someFunc() -> GridRawToken {
    ///             theme.gridColumnGap(for: sizeClass)
    ///         }
    ///     }
    /// ```
    ///
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The column gap according to viewports / size classes.
    public final func gridColumnGap(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            grids.extraCompactColumnGap
        case .compact:
            grids.compactColumnGap
        case .regular:
            grids.regularColumnGap
        @unknown default:
            OL.fatal("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }
}
