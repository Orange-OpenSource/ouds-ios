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

/// Tests on the constants defined in ``LinearProgressBarCanvasView``.
struct LinearProgressBarCanvasConstantsTests {

    @Test
    func `default gap size constant must be 4 points (M3 spec)`() {
        #expect(LinearProgressBarCanvasView.defaultGapSize == 4.0)
    }

    @Test
    func `small gap size constant must be 1 point`() {
        #expect(LinearProgressBarCanvasView.smallGapSize == 1.0)
    }

    @Test
    func `stop indicator side ratio must be 1 (equal to bar height)`() {
        #expect(LinearProgressBarCanvasView.stopIndicatorSideRatio == 1.0)
    }

    @Test
    func `small gap size must be strictly smaller than default gap size`() {
        #expect(LinearProgressBarCanvasView.smallGapSize < LinearProgressBarCanvasView.defaultGapSize)
    }
}

// MARK: - Determinate animator constants

/// Tests on the Material 3 spring animation constants defined in ``LinearProgressIndicatorDeterminateView``.
/// They must be aligned with ``CircularProgressIndicatorDeterminateView`` so both progress indicators share
/// the same visual feel.
struct LinearDeterminateAnimatorConstantsTests {

    @Test
    func `spring mass must be 1`() {
        #expect(LinearProgressIndicatorDeterminateView.springMass == 1.0)
    }

    @Test
    func `spring stiffness must be 50 (M3 StiffnessVeryLow)`() {
        #expect(LinearProgressIndicatorDeterminateView.springStiffness == 50.0)
    }

    @Test
    func `spring damping must be critical (approximately 14_1421356)`() {
        // 2 * sqrt(50) ≈ 14.1421356
        let expected = 2.0 * 50.0.squareRoot()
        #expect(abs(LinearProgressIndicatorDeterminateView.springDamping - expected) < 1e-9)
    }

    @Test
    func `spring constants must match those of the circular progress indicator`() {
        #expect(LinearProgressIndicatorDeterminateView.springMass
            == CircularProgressIndicatorDeterminateView.springMass)
        #expect(LinearProgressIndicatorDeterminateView.springStiffness
            == CircularProgressIndicatorDeterminateView.springStiffness)
        #expect(LinearProgressIndicatorDeterminateView.springDamping
            == CircularProgressIndicatorDeterminateView.springDamping)
    }
}

// MARK: - Indeterminate animator constants

/// Tests on the Material 3 indeterminate animation constants defined in
/// ``LinearProgressIndicatorIndeterminateView``.
struct LinearIndeterminateAnimConstantsTests {

    // MARK: - Cycle

    @Test
    func `cycle period must be 1_8 seconds (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.cyclePeriod == 1.8)
    }

    // MARK: - First bar

    @Test
    func `first bar head must start at 0 and last 750 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDelay == 0.0)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDuration == 0.750)
    }

    @Test
    func `first bar tail must start at 333 ms and last 850 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDelay == 0.333)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDuration == 0.850)
    }

    // MARK: - Second bar

    @Test
    func `second bar head must start at 1 s and last 567 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDelay == 1.000)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDuration == 0.567)
    }

    @Test
    func `second bar tail must start at 1_233 s and last 433 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDelay == 1.233)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDuration == 0.433)
    }

    // MARK: - Coherence

    @Test
    func `first bar head must start before its tail (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDelay
            < LinearProgressIndicatorIndeterminateView.firstLineTailDelay)
    }

    @Test
    func `second bar head must start before its tail (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDelay
            < LinearProgressIndicatorIndeterminateView.secondLineTailDelay)
    }

    @Test
    func `first bar must complete before the second bar starts (M3 spec)`() {
        // First bar tail ends at 333 + 850 = 1183 ms, second head starts at 1000 ms → overlap OK.
        // The important coherence: second bar starts before the cycle ends.
        let secondBarEnd = LinearProgressIndicatorIndeterminateView.secondLineTailDelay
            + LinearProgressIndicatorIndeterminateView.secondLineTailDuration
        #expect(secondBarEnd < LinearProgressIndicatorIndeterminateView.cyclePeriod
            || abs(secondBarEnd - LinearProgressIndicatorIndeterminateView.cyclePeriod) < 0.05)
    }

    // MARK: - Static (accessibility / low power / animated: false) sweep

    @Test
    func `static sweep must be 70 percent`() {
        #expect(LinearProgressIndicatorIndeterminateView.staticSweep == 0.7)
    }

    @Test
    func `static sweep must be within [0, 1]`() {
        #expect(LinearProgressIndicatorIndeterminateView.staticSweep >= 0.0)
        #expect(LinearProgressIndicatorIndeterminateView.staticSweep <= 1.0)
    }

    @Test
    func `static sweep must match the circular indicator static sweep`() {
        #expect(LinearProgressIndicatorIndeterminateView.staticSweep
            == CircularProgressIndicatorIndeterminateView.staticSweep)
    }

    // MARK: - Easing

    @Test
    func `fastOutSlowIn at 0 must equal 0 (with small tolerance)`() {
        #expect(abs(LinearProgressIndicatorIndeterminateView.fastOutSlowIn(0.0)) < 1e-3)
    }

    @Test
    func `fastOutSlowIn at 1 must approximately equal 1 (bisection precision)`() {
        // The Bezier parametric solver uses 10 bisection iterations, which yields sub-pixel precision.
        #expect(abs(LinearProgressIndicatorIndeterminateView.fastOutSlowIn(1.0) - 1.0) < 1e-3)
    }

    @Test
    func `fastOutSlowIn must be monotonically increasing`() {
        var previous = LinearProgressIndicatorIndeterminateView.fastOutSlowIn(0.0)
        for step in 1 ... 20 {
            let x = Double(step) / 20.0
            let value = LinearProgressIndicatorIndeterminateView.fastOutSlowIn(x)
            #expect(value >= previous)
            previous = value
        }
    }
}
