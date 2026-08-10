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
@frozen public enum ProgressIndicatorStatus: Sendable {

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
@frozen public enum ProgressIndicatorGapSize: Sendable {

    /// Standard gap size
    case `default`

    /// Reduced gap size
    case small
}
