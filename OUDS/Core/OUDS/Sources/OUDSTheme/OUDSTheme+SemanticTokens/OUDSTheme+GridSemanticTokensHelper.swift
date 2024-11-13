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

import OUDSTokensRaw
import OUDSTokensSemantic

extension OUDSTheme {

    // MARK: Semantic Grid token - Helper

    /// The min column width of a grid.
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The minimal width according to viewports / size classes.
    public final func gridMinWidth(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            return gridExtraCompactMinWidth
        case .compact:
            return gridCompactMinWidth
        case .regular:
            return gridRegularMinWidth
        @unknown default:
            fatalError("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The max column width of a grid.
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The maximal width according to viewports / size classes.
    public final func gridMaxWidth(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            return gridExtraCompactMaxWidth
        case .compact:
            return gridCompactMaxWidth
        case .regular:
            return gridRegularMaxWidth
        @unknown default:
            fatalError("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The margin of a grid.
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The margin according to viewports / size classes.
    public final func gridMargin(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            return gridExtraCompactMargin
        case .compact:
            return gridCompactMargin
        case .regular:
            return gridRegularMargin
        @unknown default:
            fatalError("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The column gap of a grid.
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The column gap according to viewports / size classes.
    public final func gridColumnGap(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            return gridExtraCompactColumnGap
        case .compact:
            return gridCompactColumnGap
        case .regular:
            return gridRegularColumnGap
        @unknown default:
            fatalError("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }

    /// The column count of a grid.
    /// - Parameter sizeClass: The current interface size class
    /// - Returns `GridRawToken`: The column count according to viewports / size classes.
    public final func gridColumnCount(for sizeClass: OUDSUserInterfaceSizeClass) -> GridRawToken {
        switch sizeClass {
        case .extraCompact:
            return gridExtraCompactColumnCount
        case .compact:
            return gridCompactColumnCount
        case .regular:
            return gridRegularColumnCount
        @unknown default:
            fatalError("🤖 Raw token unavailable for \(sizeClass)!")
        }
    }
}
