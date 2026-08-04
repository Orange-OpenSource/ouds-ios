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

// MARK: - View constants

/// Tests on the constants defined in ``CircularProgressIndicatorView``.
struct CircularProgressViewConstantsTests {

    @Test
    func `default size constant must be 48 points`() {
        #expect(CircularProgressIndicatorView.defaultSize == 48.0)
    }
}

// MARK: - Canvas constants

/// Tests on the constants defined in ``CircularProgressCanvas``.
struct CircularProgressCanvasConstantsTests {

    @Test
    func `stroke width ratio constant must be 12.5% of the diameter`() {
        #expect(CircularProgressCanvas.strokeWidthRatio == 0.125)
    }

    @Test
    func `default gap angle constant must be 14 degrees`() {
        #expect(CircularProgressCanvas.defaultGapAngleDegrees == 14.0)
    }
}

// MARK: - Animator constants

/// Tests on the Material 3 animation constants defined in ``CircularProgressIndicatorAnimator``.
/// See the Material 3 progress indicator specification for the reference values.
struct CircularProgressAnimatorConstantsTests {

    // MARK: - Global rotation

    @Test
    func `global rotation period must be 6 seconds (M3 spec)`() {
        #expect(CircularProgressIndicatorAnimator.globalRotationPeriod == 6.0)
    }

    // MARK: - Additional rotation

    @Test
    func `additional rotation cycle must be 1_5 seconds (500ms animation + 1s hold, M3 spec)`() {
        #expect(CircularProgressIndicatorAnimator.additionalRotationCycle == 1.5)
    }

    @Test
    func `additional rotation animation duration must be 500 milliseconds (M3 spec)`() {
        #expect(CircularProgressIndicatorAnimator.additionalRotationAnimDuration == 0.5)
    }

    @Test
    func `additional rotation target must be 90 degrees per cycle (M3 spec)`() {
        #expect(CircularProgressIndicatorAnimator.additionalRotationTarget == 90.0)
    }

    @Test @MainActor
    func `additional rotation hold duration must equal cycle minus animation duration`() {
        // Coherence check: hold + anim = full cycle
        let hold = CircularProgressIndicatorAnimator.additionalRotationCycle
            - CircularProgressIndicatorAnimator.additionalRotationAnimDuration
        #expect(hold == 1.0)
    }

    // MARK: - Progress sweep

    @Test
    func `progress half cycle must be 1_5 seconds (M3 spec)`() {
        #expect(CircularProgressIndicatorAnimator.progressHalfCycle == 1.5)
    }

    @Test
    func `progress minimum sweep must be 5 percent`() {
        #expect(CircularProgressIndicatorAnimator.progressMin == 0.05)
    }

    @Test
    func `progress maximum sweep must be 90 percent`() {
        #expect(CircularProgressIndicatorAnimator.progressMax == 0.90)
    }

    @Test
    func `progress minimum must be strictly less than progress maximum`() {
        // Coherence check: prevent silent regression that swaps or equals bounds
        #expect(CircularProgressIndicatorAnimator.progressMin < CircularProgressIndicatorAnimator.progressMax)
    }

    // MARK: - Static (accessibility / low power) sweep

    @Test
    func `static sweep used when animations are disabled must be 70 percent`() {
        #expect(CircularProgressIndicatorAnimator.staticSweep == 0.7)
    }

    @Test
    func `static sweep must be within the animated progress range`() {
        // Coherence: the static fallback should look consistent with what the animation produces
        #expect(CircularProgressIndicatorAnimator.staticSweep >= CircularProgressIndicatorAnimator.progressMin)
        #expect(CircularProgressIndicatorAnimator.staticSweep <= CircularProgressIndicatorAnimator.progressMax)
    }
}
