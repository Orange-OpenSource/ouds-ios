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

// MARK: - Progress Indicator Accessibility Configuration

/// Configuration for VoiceOver accessibility on progress indicators.
///
/// Allows customizing the name and state of the progress indicator for better
/// vocalization.
///
/// - Since: 3.0.0
@frozen public struct OUDSAccessibilityConfiguration: Equatable, Sendable {

    /// The name of the component (e.g., "progress bar", "download bar").
    public let name: String?

    /// The state of the component (e.g., "downloading", "step 1 of 4").
    public let state: String?

    /// Creates a new accessibility configuration.
    ///
    /// - Parameters:
    ///   - name: The name of the component.
    ///   - state: The state of the component.
    public init(name: String? = nil, state: String? = nil) {
        self.name = name
        self.state = state
    }
}
