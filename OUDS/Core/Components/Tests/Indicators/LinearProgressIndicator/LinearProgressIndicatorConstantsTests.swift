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

    @Test
    func `track gap ramp down threshold must be 1 percent (Material spec)`() {
        #expect(LinearProgressBarCanvasView.trackGapRampDownThreshold == 0.01)
    }
}

// MARK: - Track gap ramp helper (Material reference `getEffectiveTrackGapFraction`)

/// Tests on ``LinearProgressBarCanvasView/effectiveTrackGapFraction(currentValue:gapFraction:)``,
/// which must ramp the gap smoothly from `0` to its nominal size instead of jumping abruptly —
/// this is the fix for the reported "gap discontinuity" bug.
struct LinearProgressBarCanvasGapRampTests {

    @Test
    func `gap must be zero when the adjacent value is zero`() {
        #expect(LinearProgressBarCanvasView.effectiveTrackGapFraction(currentValue: 0.0, gapFraction: 0.05) == 0.0)
    }

    @Test
    func `gap must reach its nominal value at the ramp threshold`() {
        let gapFraction: CGFloat = 0.05
        let value = LinearProgressBarCanvasView.effectiveTrackGapFraction(
            currentValue: LinearProgressBarCanvasView.trackGapRampDownThreshold,
            gapFraction: gapFraction)
        #expect(abs(value - gapFraction) < 1e-9)
    }

    @Test
    func `gap must stay at its nominal value beyond the ramp threshold`() {
        let gapFraction: CGFloat = 0.05
        let value = LinearProgressBarCanvasView.effectiveTrackGapFraction(currentValue: 0.5, gapFraction: gapFraction)
        #expect(value == gapFraction)
    }

    @Test @MainActor
    func `gap must increase monotonically with the adjacent value up to the threshold`() {
        let gapFraction: CGFloat = 0.05
        var previous: CGFloat = 0.0
        for step in 1 ... 10 {
            let currentValue = LinearProgressBarCanvasView.trackGapRampDownThreshold * CGFloat(step) / 10.0
            let value = LinearProgressBarCanvasView.effectiveTrackGapFraction(currentValue: currentValue,
                                                                              gapFraction: gapFraction)
            #expect(value >= previous)
            previous = value
        }
    }

    @Test
    func `gap must never be negative for a negative adjacent value`() {
        #expect(LinearProgressBarCanvasView.effectiveTrackGapFraction(currentValue: -1.0, gapFraction: 0.05) == 0.0)
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

// MARK: - Indeterminate animator constants (Material reference)

/// Tests on the Material indeterminate animation constants defined in
/// ``LinearProgressIndicatorIndeterminateView``. Values are the ones actually shipped by
/// Material Web, Material Components Android and Flutter's `LinearProgressIndicator` (they share
/// the very same motion values).
struct LinearIndeterminateAnimConstantsTests {

    // MARK: - Cycle

    @Test
    func `cycle duration must be 1_800 seconds (Material LinearAnimationDuration)`() {
        #expect(LinearProgressIndicatorIndeterminateView.cycleDuration == 1.800)
    }

    // MARK: - First bar

    @Test
    func `first bar head must start at 0 ms and last 750 ms (Material spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDelay == 0.0)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineHeadDuration == 0.750)
    }

    @Test
    func `first bar tail must start at 333 ms and last 750 ms (Material spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDelay == 0.333)
        #expect(LinearProgressIndicatorIndeterminateView.firstLineTailDuration == 0.750)
    }

    // MARK: - Second bar

    @Test
    func `second bar head must start at 1_000 ms and last 567 ms (Material spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDelay == 1.000)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineHeadDuration == 0.567)
    }

    @Test
    func `second bar tail must start at 1_267 ms and last 533 ms (Material spec)`() {
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDelay == 1.267)
        #expect(LinearProgressIndicatorIndeterminateView.secondLineTailDuration == 0.533)
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

// MARK: - Easing (per-segment cubic-bezier curves, shared implementation)

/// Tests on ``ProgressIndicatorCubicBezierEasing``, the generic cubic-bezier evaluator used by all
/// four indeterminate linear animations (each with its own control points, see the type
/// documentation of ``LinearProgressIndicatorIndeterminateView``).
struct LinearIndeterminateEasingTests {

    // Uses the first bar's head control points (0.2, 0, 0.8, 1) as a representative case.
    private static func easing(_ x: Double) -> Double {
        ProgressIndicatorCubicBezierEasing.value(x, x1: 0.2, y1: 0.0, x2: 0.8, y2: 1.0)
    }

    @Test
    func `easing at 0 must equal 0`() {
        #expect(Self.easing(0.0) == 0.0)
    }

    @Test
    func `easing at 1 must equal 1`() {
        #expect(Self.easing(1.0) == 1.0)
    }

    @Test @MainActor
    func `easing must be monotonically increasing`() {
        var previous = Self.easing(0.0)
        for step in 1 ... 20 {
            let x = Double(step) / 20.0
            let value = Self.easing(x)
            #expect(value >= previous - 1e-6) // small numerical tolerance
            previous = value
        }
    }
}

// MARK: - Fraction helper (Material keyframes behavior)

/// Tests on ``LinearProgressIndicatorIndeterminateView/fraction(phase:delay:duration:controlPoints:)``,
/// which must reproduce Flutter's `Interval.transform` clamping behavior: value is `0.0` before
/// `delay` (the animation has not started yet), then eases from `0.0` to `1.0` between `delay` and
/// `delay + duration`, then stays at `1.0`.
struct LinearIndeterminateFractionTests {

    private let delay: TimeInterval = 0.25
    private let duration: TimeInterval = 1.0
    // First bar head control points, used as a representative case.
    private let controlPoints = ProgressIndicatorCubicBezierEasing.ControlPoints(x1: 0.2, y1: 0.0, x2: 0.8, y2: 1.0)

    @Test @MainActor
    func `fraction before delay must be 0_0 (animation not started yet)`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: 0.1,
                                                                      delay: delay,
                                                                      duration: duration,
                                                                      controlPoints: controlPoints)
        #expect(value == 0.0)
    }

    @Test @MainActor
    func `fraction exactly at delay must start from eased 0_0`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay,
                                                                      delay: delay,
                                                                      duration: duration,
                                                                      controlPoints: controlPoints)
        #expect(value == 0.0)
    }

    @Test @MainActor
    func `fraction after animation end must stay at 1_0`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay + duration + 0.1,
                                                                      delay: delay,
                                                                      duration: duration,
                                                                      controlPoints: controlPoints)
        #expect(value == 1.0)
    }

    @Test @MainActor
    func `fraction in the middle of the animation must be strictly less than 1 (accelerating)`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: delay + duration / 2.0,
                                                                      delay: delay,
                                                                      duration: duration,
                                                                      controlPoints: controlPoints)
        #expect(value > 0.0)
        #expect(value < 1.0)
    }

    @Test @MainActor
    func `fraction guards against zero duration`() {
        let value = LinearProgressIndicatorIndeterminateView.fraction(phase: 0.5,
                                                                      delay: 0.0,
                                                                      duration: 0.0,
                                                                      controlPoints: controlPoints)
        #expect(value == 1.0)
    }

    @Test @MainActor
    func `fraction must never jump discontinuously around the delay boundary (no sudden caterpillar)`() {
        // Regression test for the "caterpillar appears suddenly" bug: sampling finely around
        // `delay`, consecutive values must never differ by more than what the eased curve itself
        // can produce in one small step.
        let step: TimeInterval = 0.001
        var previous = LinearProgressIndicatorIndeterminateView.fraction(phase: delay - 0.05,
                                                                         delay: delay,
                                                                         duration: duration,
                                                                         controlPoints: controlPoints)
        var phase = delay - 0.05 + step
        while phase <= delay + 0.05 {
            let value = LinearProgressIndicatorIndeterminateView.fraction(phase: phase,
                                                                          delay: delay,
                                                                          duration: duration,
                                                                          controlPoints: controlPoints)
            #expect(abs(value - previous) < 0.05)
            previous = value
            phase += step
        }
    }
}

// MARK: - Full-cycle segment length continuity (end-to-end regression for the reported glitch)

/// Regression tests reproducing the exact reported bug: "the caterpillar arrives suddenly, a
/// second one arrives and leaves abruptly". These tests simulate a full ``cycleDuration`` at a
/// fine time step and check that the visible length of each colored line
/// (`max(0, head - tail)`) never jumps abruptly, and instead grows from `0`, peaks, and shrinks
/// back to `0` continuously — matching the reference Flutter/Material behavior of a caterpillar
/// that departs, stretches, comes back together and exits, before the next one starts.
struct LinearIndeterminateCycleContinuityTests {

    private static let firstBarControlPoints = (
        head: ProgressIndicatorCubicBezierEasing.ControlPoints(x1: 0.2, y1: 0.0, x2: 0.8, y2: 1.0),
        tail: ProgressIndicatorCubicBezierEasing.ControlPoints(x1: 0.4, y1: 0.0, x2: 1.0, y2: 1.0))
    private static let secondBarControlPoints = (
        head: ProgressIndicatorCubicBezierEasing.ControlPoints(x1: 0.0, y1: 0.0, x2: 0.65, y2: 1.0),
        tail: ProgressIndicatorCubicBezierEasing.ControlPoints(x1: 0.10, y1: 0.0, x2: 0.45, y2: 1.0))

    private static func firstBarLength(at phase: TimeInterval) -> CGFloat {
        let head = LinearProgressIndicatorIndeterminateView.fraction(
            phase: phase,
            delay: LinearProgressIndicatorIndeterminateView.firstLineHeadDelay,
            duration: LinearProgressIndicatorIndeterminateView.firstLineHeadDuration,
            controlPoints: firstBarControlPoints.head)
        let tail = LinearProgressIndicatorIndeterminateView.fraction(
            phase: phase,
            delay: LinearProgressIndicatorIndeterminateView.firstLineTailDelay,
            duration: LinearProgressIndicatorIndeterminateView.firstLineTailDuration,
            controlPoints: firstBarControlPoints.tail)
        return max(0, head - tail)
    }

    private static func secondBarLength(at phase: TimeInterval) -> CGFloat {
        let head = LinearProgressIndicatorIndeterminateView.fraction(
            phase: phase,
            delay: LinearProgressIndicatorIndeterminateView.secondLineHeadDelay,
            duration: LinearProgressIndicatorIndeterminateView.secondLineHeadDuration,
            controlPoints: secondBarControlPoints.head)
        let tail = LinearProgressIndicatorIndeterminateView.fraction(
            phase: phase,
            delay: LinearProgressIndicatorIndeterminateView.secondLineTailDelay,
            duration: LinearProgressIndicatorIndeterminateView.secondLineTailDuration,
            controlPoints: secondBarControlPoints.tail)
        return max(0, head - tail)
    }

    @Test @MainActor
    func `first bar length must start at zero and grow smoothly right from the start of the cycle`() {
        // Regression: with the fixed `fraction`, the bar is no longer invisible until `firstLineTailDelay`
        // then popping into existence — it must already be visibly growing well before that delay.
        let lengthAtStart = Self.firstBarLength(at: 0.0)
        let lengthBeforeTailDelay = Self.firstBarLength(
            at: LinearProgressIndicatorIndeterminateView.firstLineTailDelay - 0.05)
        #expect(lengthAtStart == 0.0)
        #expect(lengthBeforeTailDelay > 0.0)
    }

    @Test @MainActor
    func `first bar length must never jump by more than a small bounded step across the full cycle`() {
        let step: TimeInterval = 0.002
        var previous = Self.firstBarLength(at: 0.0)
        var phase: TimeInterval = step
        while phase <= LinearProgressIndicatorIndeterminateView.cycleDuration {
            let value = Self.firstBarLength(at: phase)
            #expect(abs(value - previous) < 0.05)
            previous = value
            phase += step
        }
    }

    @Test @MainActor
    func `second bar length must never jump by more than a small bounded step across the full cycle`() {
        let step: TimeInterval = 0.002
        var previous = Self.secondBarLength(at: 0.0)
        var phase: TimeInterval = step
        while phase <= LinearProgressIndicatorIndeterminateView.cycleDuration {
            let value = Self.secondBarLength(at: phase)
            #expect(abs(value - previous) < 0.05)
            previous = value
            phase += step
        }
    }

    @Test @MainActor
    func `first bar must fully exit before fading back in on the next cycle`() {
        // The first bar's tail finishes at firstLineTailDelay + firstLineTailDuration: from that
        // point until the cycle wraps, the bar must be fully gone (length 0).
        let tailEnd = LinearProgressIndicatorIndeterminateView.firstLineTailDelay
            + LinearProgressIndicatorIndeterminateView.firstLineTailDuration
        #expect(Self.firstBarLength(at: tailEnd) == 0.0)
        #expect(Self.firstBarLength(at: tailEnd + 0.1) == 0.0)
    }
}
