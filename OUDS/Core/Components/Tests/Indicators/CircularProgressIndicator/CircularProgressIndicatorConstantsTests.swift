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

// MARK: - Canvas constants

/// Tests on the constants defined in ``CircularProgressCanvas``.
struct CircularProgressCanvasConstantsTests {

    @Test
    func `stroke width ratio constant must be 12.5% of the diameter`() {
        #expect(CircularProgressCanvasView.strokeWidthRatio == 0.125)
    }

    @Test
    func `default gap angle constant must be 14 degrees`() {
        #expect(CircularProgressCanvasView.defaultGapAngleDegrees == 14.0)
    }
}

// MARK: - Animator constants

/// Tests on the Material 3 animation constants defined in ``CircularProgressIndicatorAnimator``.
/// See the Material 3 progress indicator specification for the reference values.
struct CircularProgressAnimatorConstantsTests {

    // MARK: - Global rotation

    @Test
    func `global rotation period must be 6 seconds (M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.globalRotationPeriod == 6.0)
    }

    // MARK: - Additional rotation

    @Test
    func `additional rotation cycle must be 1_5 seconds (500ms animation + 1s hold, M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.additionalRotationCycle == 1.5)
    }

    @Test
    func `additional rotation animation duration must be 500 milliseconds (M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.additionalRotationAnimDuration == 0.5)
    }

    @Test
    func `additional rotation target must be 90 degrees per cycle (M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.additionalRotationTarget == 90.0)
    }

    @Test @MainActor
    func `additional rotation hold duration must equal cycle minus animation duration`() {
        // Coherence check: hold + anim = full cycle
        let hold = CircularProgressIndicatorIndeterminateView.additionalRotationCycle
            - CircularProgressIndicatorIndeterminateView.additionalRotationAnimDuration
        #expect(hold == 1.0)
    }

    // MARK: - Progress sweep

    @Test
    func `progress half cycle must be 1_5 seconds (M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.progressHalfCycle == 1.5)
    }

    @Test
    func `progress minimum sweep must be 5 percent`() {
        #expect(CircularProgressIndicatorIndeterminateView.progressMin == 0.05)
    }

    @Test
    func `progress maximum sweep must be 75 percent (M3 spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.progressMax == 0.75)
    }

    @Test
    func `progress maximum sweep without track must be 90 percent`() {
        #expect(CircularProgressIndicatorIndeterminateView.progressMaxWithoutTrack == 0.90)
    }

    @Test
    func `progress maximum without track must be greater than or equal to progress maximum with track`() {
        #expect(CircularProgressIndicatorIndeterminateView.progressMaxWithoutTrack
            >= CircularProgressIndicatorIndeterminateView.progressMax)
    }

    @Test
    func `progress minimum must be strictly less than progress maximum`() {
        // Coherence check: prevent silent regression that swaps or equals bounds
        #expect(CircularProgressIndicatorIndeterminateView.progressMin < CircularProgressIndicatorIndeterminateView.progressMax)
    }

    // MARK: - Static (accessibility / low power) sweep

    @Test
    func `static sweep used when animations are disabled must be 70 percent`() {
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep == 0.7)
    }

    @Test
    func `static sweep must be within the animated progress range`() {
        // Coherence: the static fallback should look consistent with what the animation produces
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep >= CircularProgressIndicatorIndeterminateView.progressMin)
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep <= CircularProgressIndicatorIndeterminateView.progressMax)
    }
}
