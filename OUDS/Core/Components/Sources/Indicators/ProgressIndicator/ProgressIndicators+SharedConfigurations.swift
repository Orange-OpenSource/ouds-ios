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

// MARK: - Progress Indicator Status

/// The status of the progress indicator. It determines the color of the bar.
///
/// - Since: 3.0.0
@frozen public enum OUDSProgressIndicatorStatus: Sendable {

    /// Default status used when progress has no specific semantic meaning.
    case neutral

    /// Used to highlight primary or brand-related actions.
    case accent

    /// Indicates successful progress or a process leading to a successful outcome.
    case positive

    /// Indicates informational or system-related processes.
    case info

    /// Indicates progress related to an operation that requires user attention or should be monitored.
    case warning

    /// Indicates progress related to an error, recovery, cancellation or failure.
    case negative
}

// MARK: - Progress Indicator Gap Size

/// The size of the gap between the progress bar and the track.
///
/// - Since: 3.0.0
@frozen public enum OUDSProgressIndicatorGapSize: Sendable {

    /// Standard gap size
    case `default`

    /// Reduced gap size
    case small
}

// MARK: - Determinate Progress Indicator Helper Text

/// The helper text can be added in **determinate** indicator
///
/// - Since: 3.0.0
@frozen public enum OUDSDeterminateProgressIndicatorHelperText: Equatable {

    /// The helper text with a decription without any information of progress
    case description(String)

    /// Displays the progress information (percentage value and `%`charcter with optional space before)
    /// in the helper text according to the `PercentAlignment`.
    case percent(spaceBefore: Bool, alignment: PercentAlignment = .center)

    /// The percentage alignment.
    /// For the `start` alignment, if a description is provided it is placed at the trailing of the component.
    /// For the `end` alignment, if a description is provided it is placed at the leading of the component.
    @frozen public enum PercentAlignment: Equatable {
        /// The percentage is displayed under the progress line indicator at center
        case center

        /// The percentage is displayed under the progress line at leading and description at trailing.
        case start(description: String? = nil)

        /// The percentage is displayed under the progress line at trailing and description at leading.
        case end(description: String? = nil)
    }
}

// MARK: - Indeterminate Progress Indicator Helper Text alignment

/// The alignment of the helper text for the **indeterminate** indicator.
///
/// - Since: 3.0.0
@frozen public enum OUDSIndeterminateHelperTextAlignment: Equatable {
    /// The helper text is centered under the progress bar.
    case center

    /// The helper text is aligned to the leading edge.
    case start

    /// The helper text is aligned to the trailing edge.
    case end
}
