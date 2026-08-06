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

import Foundation
@testable import OUDSComponents
import Testing

/// Tests on the pure static function ``CircularProgressCanvas/trackLayout(sweepDegrees:gapSweepDegrees:)``.
///
/// These tests validate the visual invariants of the track layout for edge cases such as
/// `progress = 0` (must produce a full circle track, no notch), `progress = 1` (no track), and
/// very small progress values (no gap larger than the foreground arc itself).
struct CircularProgressTrackLayoutTests {

    // MARK: - Edge case: no progress

    @Test @MainActor
    func `sweep of 0 degrees must produce a full circle track with no gap`() {
        // When progress = 0, there is no foreground arc, so the track must be a full circle with no notch.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 0, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 360.0)
        #expect(layout.startOffsetDegrees == 0.0)
    }

    // MARK: - Edge case: full progress

    @Test @MainActor
    func `sweep of 360 degrees must produce no track`() {
        // When progress = 1, the foreground fills the circle, so no track is drawn.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 360, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 0.0)
    }

    // MARK: - Nominal case

    @Test @MainActor
    func `sweep of 180 degrees with a 14 degrees gap must leave 152 degrees for the track`() {
        // Foreground = 180 degrees, one gap of 14 degrees on each side, so track = 360 - 180 - 28 = 152.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 180, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 152.0)
        #expect(layout.startOffsetDegrees == 194.0) // 180 + 14
    }

    // MARK: - Edge case: sweep smaller than the gap

    @Test @MainActor
    func `sweep smaller than the gap must shrink the effective gap to avoid oversized notches`() {
        // Foreground = 3.6 degrees, nominal gap = 14 degrees. Effective gap = min(3.6, 14) = 3.6.
        // Track = 360 - 3.6 - 2 * 3.6 = 349.2.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 3.6, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 349.2)
        #expect(layout.startOffsetDegrees == 7.2) // 3.6 + 3.6
    }

    // MARK: - Boundary: sweep equal to the gap

    @Test @MainActor
    func `sweep equal to the gap must produce an equal effective gap on each side`() {
        // Boundary: sweep == gap => effective gap == sweep.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 14, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 318.0) // 360 - 14 - 28
        #expect(layout.startOffsetDegrees == 28.0)
    }

    // MARK: - Above boundary: full nominal gap applies

    @Test @MainActor
    func `sweep just above the gap must apply the full nominal gap on both sides`() {
        // Above the boundary: effective gap == nominal gap.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 20, gapSweepDegrees: 14)
        #expect(layout.lengthDegrees == 312.0) // 360 - 20 - 28
        #expect(layout.startOffsetDegrees == 34.0) // 20 + 14
    }

    // MARK: - Robustness

    @Test @MainActor
    func `track length must always be positive or zero`() {
        // The track length must never be negative, even for pathological inputs.
        for sweep in [0.0, 45.0, 90.0, 180.0, 270.0, 359.9, 360.0] {
            let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: sweep, gapSweepDegrees: 14)
            #expect(layout.lengthDegrees >= 0.0)
        }
    }

    // MARK: - Edge case: zero nominal gap

    @Test @MainActor
    func `zero gap must produce a track that is exactly complementary to the sweep`() {
        // If the gap is disabled (0), the layout must be exactly complementary to the sweep and cover the rest of the circle.
        let layout = CircularProgressCanvasView.trackLayout(sweepDegrees: 90, gapSweepDegrees: 0)
        #expect(layout.lengthDegrees == 270.0)
        #expect(layout.startOffsetDegrees == 90.0)
    }
}
