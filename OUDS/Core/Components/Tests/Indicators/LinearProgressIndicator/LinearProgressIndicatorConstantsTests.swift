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
    func `stop indicator trailing space must be 6 points (M3 spec)`() {
        #expect(LinearProgressBarCanvasView.stopIndicatorTrailingSpace == 6.0)
    }

    @Test
    func `small gap size must be strictly smaller than default gap size`() {
        #expect(LinearProgressBarCanvasView.smallGapSize < LinearProgressBarCanvasView.defaultGapSize)
    }
}

// MARK: - Determinate animator constants

/// Tests on the Material 3 spring animation constants defined in
/// ``LinearProgressIndicatorDeterminateView``. They must be aligned with
/// ``CircularProgressIndicatorDeterminateView`` so both progress indicators share the same visual
/// feel.
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

// MARK: - Indeterminate animator constants (AndroidX Material 3 reference)

/// Tests on the Material 3 indeterminate animation constants defined in
/// ``LinearProgressIndicatorIndeterminateView``. Values are the ones actually shipped by AndroidX
/// Compose Material 3 `ProgressIndicator.kt`.
struct LinearIndeterminateAnimConstantsTests {

    // MARK: - Cycle

    @Test
    func `cycle duration must be 1_750 seconds (M3 LinearAnimationDuration)`() {
        #expect(LinearProgressIndicatorIndeterminateView.cycleDuration == 1.750)
    }

    // MARK: - First bar

    @Test
    func `first bar head must start at 0 ms and last 1_000 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDelay == 0.0)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDuration == 1.000)
    }

    @Test
    func `first bar tail must start at 250 ms and last 1_000 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDelay == 0.250)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDuration == 1.000)
    }

    // MARK: - Second bar

    @Test
    func `second bar head must start at 650 ms and last 850 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDelay == 0.650)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDuration == 0.850)
    }

    @Test
    func `second bar tail must start at 900 ms and last 850 ms (M3 spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDelay == 0.900)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDuration == 0.850)
    }

    // MARK: - Coherence

    @Test
    func `first bar head must start before its tail (caterpillar effect)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDelay
            < LinearProgressIndicatorIndeterminateView.firstLineTailDelay)
    }

    @Test
    func `second bar head must start before its tail (caterpillar effect)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDelay
            < LinearProgressIndicatorIndeterminateView.secondLineTailDelay)
    }

    @Test @MainActor
    func `all animations must complete within the cycle duration`() {
        let firstHeadEnd = LinearProgressIndicatorIndeterminateView.firstLineHeadDelay
            + LinearProgressIndicatorIndeterminateView.firstLineHeadDuration
        let firstTailEnd = LinearProgressIndicatorIndeterminateView.firstLineTailDelay
            + LinearProgressIndicatorIndeterminateView.firstLineTailDuration
        let secondHeadEnd = LinearProgressIndicatorIndeterminateView.secondLineHeadDelay
            + LinearProgressIndicatorIndeterminateView.secondLineHeadDuration
        let secondTailEnd = LinearProgressIndicatorIndeterminateView.secondLineTailDelay
            + LinearProgressIndicatorIndeterminateView.secondLineTailDuration

        #expect(firstHeadEnd <= LinearProgressIndicatorIndeterminateView.cycleDuration)
        #expect(firstTailEnd <= LinearProgressIndicatorIndeterminateView.cycleDuration)
        #expect(secondHeadEnd <= LinearProgressIndicatorIndeterminateView.cycleDuration)
        #expect(secondTailEnd <= LinearProgressIndicatorIndeterminateView.cycleDuration)
    }

    // MARK: - Static (Reduce Motion / Low Power Mode) sweep

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
}

// MARK: - Easing (EasingEmphasizedAccelerate — M3 cubic-bezier(0.3, 0, 0.8, 0.15))

/// Tests on the M3 `EasingEmphasizedAccelerate` cubic-bezier easing used by all four indeterminate
/// linear animations.
struct LinearIndeterminateEasingTests {

    @Test
    func `easing at 0 must equal 0`() {
        #expect(LinearProgressIndicatorIndeterminateView.easingEmphasizedAccelerate(0.0) == 0.0)
    }

    @Test
    func `easing at 1 must equal 1`() {
        #expect(LinearProgressIndicatorIndeterminateView.easingEmphasizedAccelerate(1.0) == 1.0)
    }

    @Test @MainActor
    func `easing must be monotonically increasing`() {
        var previous = LinearProgressIndicatorIndeterminateView.easingEmphasizedAccelerate(0.0)
        for step in 1 ... 20 {
            let x = Double(step) / 20.0
            let value = LinearProgressIndicatorIndeterminateView.easingEmphasizedAccelerate(x)
            #expect(value >= previous - 1e-6) // small numerical tolerance
            previous = value
        }
    }

    @Test @MainActor
    func `easing must accelerate (value at 0_5 is strictly less than 0_5)`() {
        // EasingEmphasizedAccelerate is a decelerating output curve: slow at the beginning,
        // fast at the end. The value at t = 0.5 stays well below the diagonal (0.5).
        let mid = LinearProgressIndicatorIndeterminateView.easingEmphasizedAccelerate(0.5)
        #expect(mid < 0.5)
    }
}

// MARK: - Fraction helper (Android Compose M3 keyframes behavior)

/// Tests on ``LinearProgressIndicatorIndeterminateView/fraction(phase:delay:duration:)``, which
/// must reproduce the Compose `keyframes` behavior: value is `1.0` before `delay`, then eases
/// from `0.0` to `1.0` between `delay` and `delay + duration`, then stays at `1.0`.
struct LinearIndeterminateFractionTests {

    private let delay: TimeInterval = 0.25
    private let duration: TimeInterval = 1.0

    @Test @MainActor
    func `fraction before delay must be 1_0 (previous cycle value)`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: 0.1,
                                                                      delay: delay,
                                                                      duration: duration)
        #expect(value == 1.0)
    }

    @Test @MainActor
    func `fraction exactly at delay must start from eased 0_0`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay,
                                                                      delay: delay,
                                                                      duration: duration)
        #expect(value == 0.0)
    }

    @Test @MainActor
    func `fraction after animation end must stay at 1_0`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay + duration + 0.1,
                                                                      delay: delay,
                                                                      duration: duration)
        #expect(value == 1.0)
    }

    @Test @MainActor
    func `fraction in the middle of the animation must be strictly less than 1 (accelerating)`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay + duration / 2.0,
                                                                      delay: delay,
                                                                      duration: duration)
        #expect(value > 0.0)
        #expect(value < 1.0)
    }

    @Test @MainActor
    func `fraction guards against zero duration`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: 0.5,
                                                                      delay: 0.0,
                                                                      duration: 0.0)
        #expect(value == 1.0)
    }
}
