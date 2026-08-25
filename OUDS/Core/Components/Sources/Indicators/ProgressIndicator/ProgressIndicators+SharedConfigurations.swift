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

// MARK: - Linear Progress Indicator Helper Text Alignment

/// The alignment of the helper text for the linear progress indicator.
///
/// - Since: 3.0.0
@frozen public enum OUDSLinearProgressIndicatorHelperTextAlignment: Equatable, Sendable {
    /// The helper text is centered under the progress bar.
    case center

    /// The helper text is aligned to the leading edge.
    case start

    /// The helper text is aligned to the trailing edge.
    case end
}

// MARK: - Determinate Progress Indicator Helper Text

/// The helper text can be added in **determinate** indicator
///
/// - Since: 3.0.0
@frozen public enum OUDSDeterminateProgressIndicatorHelperText: Equatable {

    /// The helper text with a description without any information of progress.
    ///
    /// - Parameter alignment: Controls the horizontal alignment of the description text. Defaults to `.center`.
    case description(String, alignment: OUDSLinearProgressIndicatorHelperTextAlignment = .center)

    /// Displays the progress information (percentage value and `%` character with optional space before)
    /// in the helper text according to the alignment.
    ///
    /// - Parameters:
    ///   - spaceBefore: When `true`, adds a non-breaking space before the `%` character (e.g., "75 %"). When `false`, no space (e.g., "75%"). Defaults to `false`.
    ///   - description: Optional description text displayed alongside the percentage. Ignored when `alignment` is `.center`.
    ///   - alignment: The horizontal alignment of the helper text. Defaults to `.center`.
    case percent(spaceBefore: Bool = false, description: String? = nil, alignment: OUDSLinearProgressIndicatorHelperTextAlignment = .center)
}
