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

@testable import OUDSComponents
import Testing

// MARK: - HeadingMarker Tests

/// Unit tests for the ``HeadingMarker`` internal view used by ``OUDSHeading`` when the current theme
/// declares a supported heading large marker.
///
/// The rectangle dimensions are pinned to the values coming from the Figma design of the
/// *Foundation / Typography* set (`.Marker / Heading large`).
struct HeadingMarkerTests {

    // MARK: - Constants

    /// The marker width must be pinned to `30pt` (Figma spec).
    @Test func markerWidthMatchesFigma() {
        #expect(HeadingMarker.markerWidth == 30)
    }

    /// The marker height must be pinned to `6pt` (Figma spec).
    @Test func markerHeightMatchesFigma() {
        #expect(HeadingMarker.markerHeight == 6)
    }

    /// The marker is a horizontal bar: its width must be strictly greater than its height.
    @Test func markerIsHorizontallyOriented() {
        #expect(HeadingMarker.markerWidth > HeadingMarker.markerHeight)
    }

    /// The dimensions must be strictly positive so that the marker is actually rendered.
    @Test func markerDimensionsArePositive() {
        #expect(HeadingMarker.markerWidth > 0)
        #expect(HeadingMarker.markerHeight > 0)
    }
}
