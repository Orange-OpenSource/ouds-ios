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

import OUDSFoundations
import SwiftUI

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

/// Animates the bar of an indeterminate ``OUDSLinearProgressIndicator``.
///
/// The animation reproduces the **Android Material 3** indeterminate linear progress specification
/// as implemented in AndroidX Compose Material 3 `ProgressIndicator.kt`. Two lines follow one
/// another across the track, each defined by two independent animations (head and tail) sharing a
/// **1750 ms** cycle:
///
/// | Animation             | Delay   | Duration | Easing                                       |
/// | --------------------- | ------- | -------- | -------------------------------------------- |
/// | First bar head        |    0 ms |  1000 ms | `EasingEmphasizedAccelerate` (0.3, 0, 0.8, 0.15) |
/// | First bar tail        |  250 ms |  1000 ms | same                                         |
/// | Second bar head       |  650 ms |   850 ms | same                                         |
/// | Second bar tail       |  900 ms |   850 ms | same                                         |
///
/// The Material 3 rendering is **not** just "two colored bars over a solid track": it draws five
/// segments (three track segments and two colored lines), which naturally produces the two small
/// transparent gaps around each colored line — the visual signature of the animation. See
/// ``LinearProgressBarCanvasView`` for the segment layout.
///
/// The head-then-tail motion (head grows first, tail follows) makes each colored bar look like a
/// caterpillar stretching then shrinking, and the two bars appear to race each other.
///
/// The rendering is delegated to ``LinearProgressBarCanvasView`` and computed from the current
/// wall-clock time provided by ``TimelineView(.animation)``.
///
/// Motion is disabled and a static bar filled at 70% is displayed when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true` or Low Power Mode is enabled (via
/// ``OUDSLowPowerModeObserver``).
struct LinearProgressIndicatorIndeterminateView: View {

    // MARK: - Android Material 3 animation constants

    /// Total duration of one animation cycle, in seconds. Matches Android Compose Material 3
    /// `LinearAnimationDuration = 1750`.
    static let cycleDuration: TimeInterval = 1.750

    // MARK: First bar

    /// Delay before the first bar's head starts moving, in seconds (Android Material 3 `FirstLineHeadDelay = 0`).
    static let firstLineHeadDelay: TimeInterval = 0.0

    /// Duration of the first bar's head animation, in seconds (Android Material 3 `FirstLineHeadDuration = 1000`).
    static let firstLineHeadDuration: TimeInterval = 1.000

    /// Delay before the first bar's tail starts moving, in seconds (Android Material 3 `FirstLineTailDelay = 250`).
    static let firstLineTailDelay: TimeInterval = 0.250

    /// Duration of the first bar's tail animation, in seconds (Android Material 3 `FirstLineTailDuration = 1000`).
    static let firstLineTailDuration: TimeInterval = 1.000

    // MARK: Second bar

    /// Delay before the second bar's head starts moving, in seconds (Android Material 3 `SecondLineHeadDelay = 650`).
    static let secondLineHeadDelay: TimeInterval = 0.650

    /// Duration of the second bar's head animation, in seconds (Android Material 3 `SecondLineHeadDuration = 850`).
    static let secondLineHeadDuration: TimeInterval = 0.850

    /// Delay before the second bar's tail starts moving, in seconds (Android Material 3 `SecondLineTailDelay = 900`).
    static let secondLineTailDelay: TimeInterval = 0.900

    /// Duration of the second bar's tail animation, in seconds (Android Material 3 `SecondLineTailDuration = 850`).
    static let secondLineTailDuration: TimeInterval = 0.850

    // MARK: Fallback

    /// Fill used when animations are disabled (accessibility Reduce Motion / Low Power Mode).
    /// A determinate-style bar is drawn at this progress value with the current status color.
    static let staticSweep: CGFloat = 0.7

    // MARK: - Properties

    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    let gapSize: OUDSProgressIndicatorGapSize
    let hasTrack: Bool
    let barHeight: CGFloat

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Body

    var body: some View {
        if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            // Reduce Motion / Low Power Mode: static determinate-style bar at 70%.
            LinearProgressBarCanvasView(
                content: .determinate(progress: Self.staticSweep),
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                hasTrack: hasTrack,
                hasStopIndicator: false,
                gapSize: gapSize,
                barHeight: barHeight)
        } else {
            TimelineView(.animation) { context in
                let time = context.date.timeIntervalSinceReferenceDate
                let f = fractions(at: time)
                LinearProgressBarCanvasView(
                    content: .indeterminate(firstHead: f.firstHead,
                                            firstTail: f.firstTail,
                                            secondHead: f.secondHead,
                                            secondTail: f.secondTail),
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    hasTrack: hasTrack,
                    hasStopIndicator: false,
                    gapSize: gapSize,
                    barHeight: barHeight)
            }
        }
    }

    // MARK: - Time-based animations

    /// Head/tail fractions of the two Android Material 3 indeterminate lines. Each fraction is expected in
    /// `[0, 1]`. A line is not drawn when its `head <= tail`.
    struct Fractions: Equatable {
        let firstHead: CGFloat
        let firstTail: CGFloat
        let secondHead: CGFloat
        let secondTail: CGFloat
    }

    /// Head/tail fractions of both bars at time `t`, in seconds.
    ///
    /// The value `t` is normalized into a phase in `[0, cycleDuration)`, then each animation
    /// (head/tail of each bar) is computed via ``fraction(phase:delay:duration:)``.
    func fractions(at time: TimeInterval) -> Fractions {
        let phase = time.truncatingRemainder(dividingBy: Self.cycleDuration)

        let firstHead = Self.fraction(phase: phase,
                                      delay: Self.firstLineHeadDelay,
                                      duration: Self.firstLineHeadDuration)
        let firstTail = Self.fraction(phase: phase,
                                      delay: Self.firstLineTailDelay,
                                      duration: Self.firstLineTailDuration)
        let secondHead = Self.fraction(phase: phase,
                                       delay: Self.secondLineHeadDelay,
                                       duration: Self.secondLineHeadDuration)
        let secondTail = Self.fraction(phase: phase,
                                       delay: Self.secondLineTailDelay,
                                       duration: Self.secondLineTailDuration)

        return Fractions(firstHead: firstHead,
                         firstTail: firstTail,
                         secondHead: secondHead,
                         secondTail: secondTail)
    }

    /// Returns the eased fraction at `phase` for an Android Compose Material 3 `keyframes` animation of the
    /// form:
    ///
    /// ```
    /// 0f at delay using easing
    /// 1f at delay + duration
    /// ```
    ///
    /// Mooped through `infiniteRepeatable`. In practice:
    /// - Before `delay`, the fraction is **`1.0`** (the value at the end of the previous cycle).
    /// - Between `delay` and `delay + duration`, it interpolates from `0.0` to `1.0` with the
    ///   `EasingEmphasizedAccelerate` cubic Bézier.
    /// - After `delay + duration`, the fraction stays at `1.0` until the end of the cycle.
    ///
    /// This is what produces the "caterpillar" effect: the head starts moving before the tail, so
    /// the visible segment (`head - tail`) grows, then shrinks as the tail catches up.
    static func fraction(phase: TimeInterval, delay: TimeInterval, duration: TimeInterval) -> CGFloat {
        guard duration > 0 else { return 1.0 }
        if phase < delay {
            return 1.0
        } else if phase < delay + duration {
            let t = (phase - delay) / duration
            return CGFloat(easingEmphasizedAccelerate(t))
        } else {
            return 1.0
        }
    }

    // MARK: - Easing

    /// Approximates Android Material 3's `EasingEmphasizedAccelerateCubicBezier` (`cubic-bezier(0.3, 0, 0.8, 0.15)`).
    ///
    /// Implemented as an iterative bisection on the parametric Bézier `x(t)` to find the parameter
    /// matching the input `x`, then evaluated as `y(t)`. The number of bisections is fixed and
    /// small (16) to stay fast — the resulting precision is well below one pixel.
    static func easingEmphasizedAccelerate(_ x: Double) -> Double {
        // Control points of the cubic Bezier (P0 = (0, 0), P3 = (1, 1)).
        let x1 = 0.3
        let x2 = 0.8
        let y1 = 0.0
        let y2 = 0.15

        // Special cases at boundaries.
        if x <= 0.0 { return 0.0 }
        if x >= 1.0 { return 1.0 }

        // Solve for t such that bezierX(t) == x, using bisection.
        var lower = 0.0
        var upper = 1.0
        var t = x
        for _ in 0 ..< 16 {
            let currentX = bezier(t, x1, x2)
            if currentX < x {
                lower = t
            } else {
                upper = t
            }
            t = (lower + upper) / 2.0
        }
        return bezier(t, y1, y2)
    }

    /// Evaluates a 1D cubic Bezier at `t` with control points `(0, c1, c2, 1)`.
    private static func bezier(_ t: Double, _ c1: Double, _ c2: Double) -> Double {
        let oneMinusT = 1.0 - t
        return 3.0 * oneMinusT * oneMinusT * t * c1
            + 3.0 * oneMinusT * t * t * c2
            + t * t * t
    }
}
