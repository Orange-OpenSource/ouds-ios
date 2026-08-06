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
/// The animation reproduces the **Android Material 3** indeterminate linear progress specification.
/// Two bars follow one another across the track, each defined by two animations (head and tail)
/// running on a shared 1.8 s cycle:
///
/// 1. **First bar** — head grows from `0` to `1` in `750 ms`, tail follows from `0` to `1` in
///    `850 ms` after a `333 ms` delay.
/// 2. **Second bar** — head grows from `0` to `1` in `567 ms` after a `1 s` delay, tail follows
///    in `433 ms` after a `1.233 s` delay.
///
/// The easing used is Material 3's *FastOutSlowInEasing* (`cubic-bezier(0.4, 0.0, 0.2, 1)`),
/// approximated here with a cubic-bezier evaluator.
///
/// The rendering is delegated to ``LinearProgressBarCanvasView`` and computed from the current
/// wall-clock time provided by ``TimelineView(.animation)``, which:
///
/// - avoids any `@State`-driven invalidation that could propagate a layout invalidation up to the
///   parent (a known cause of navigation-bar glitches);
/// - is compatible with iOS 15+;
/// - remains deterministic regardless of view recycling.
///
/// Motion is disabled and a static bar (``staticSweep`` = 70%) is displayed when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true`, Low Power Mode is enabled (via
/// ``OUDSLowPowerModeObserver``) or ``animated`` is `false`.
struct LinearProgressIndicatorIndeterminateView: View {

    // MARK: - Android Material 3 animation constants

    /// Total duration of one animation cycle, in seconds.
    static let cyclePeriod: TimeInterval = 1.8

    /// Delay before the first bar's head starts moving, in seconds.
    static let firstLineHeadDelay: TimeInterval = 0.0

    /// Duration of the first bar's head animation, in seconds.
    static let firstLineHeadDuration: TimeInterval = 0.750

    /// Delay before the first bar's tail starts moving, in seconds.
    static let firstLineTailDelay: TimeInterval = 0.333

    /// Duration of the first bar's tail animation, in seconds.
    static let firstLineTailDuration: TimeInterval = 0.850

    /// Delay before the second bar's head starts moving, in seconds.
    static let secondLineHeadDelay: TimeInterval = 1.000

    /// Duration of the second bar's head animation, in seconds.
    static let secondLineHeadDuration: TimeInterval = 0.567

    /// Delay before the second bar's tail starts moving, in seconds.
    static let secondLineTailDelay: TimeInterval = 1.233

    /// Duration of the second bar's tail animation, in seconds.
    static let secondLineTailDuration: TimeInterval = 0.433

    /// Fill used when animations are disabled (accessibility / low power / animated = false).
    static let staticSweep: CGFloat = 0.7

    // MARK: - Properties

    let animated: Bool
    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    let gapSize: OUDSLinearProgressIndicator.GapSize
    let hasTrack: Bool
    let hasStopIndicator: Bool
    let barHeight: CGFloat

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Body

    var body: some View {
        if !animated || reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            LinearProgressBarCanvasView(
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                progress: Self.staticSweep,
                indeterminateBars: [],
                hasTrack: hasTrack,
                hasStopIndicator: hasStopIndicator,
                gapSize: gapSize,
                barHeight: barHeight)
        } else {
            TimelineView(.animation) { context in
                let time = context.date.timeIntervalSinceReferenceDate
                let bars = bars(at: time)
                LinearProgressBarCanvasView(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    progress: 0,
                    indeterminateBars: bars,
                    hasTrack: hasTrack,
                    hasStopIndicator: hasStopIndicator,
                    gapSize: gapSize,
                    barHeight: barHeight)
            }
        }
    }

    // MARK: - Time-based animations

    /// Computes the head/tail fractions of both bars at time `t`, in seconds.
    ///
    /// The value `t` is normalized into a phase in `[0, cyclePeriod)`, then each phase (head/tail
    /// of each bar) is computed independently. A bar with `head <= tail` is not drawn.
    func bars(at time: TimeInterval) -> [(head: CGFloat, tail: CGFloat)] {
        let phase = time.truncatingRemainder(dividingBy: Self.cyclePeriod)

        let firstHead = fraction(phase: phase,
                                 delay: Self.firstLineHeadDelay,
                                 duration: Self.firstLineHeadDuration)
        let firstTail = fraction(phase: phase,
                                 delay: Self.firstLineTailDelay,
                                 duration: Self.firstLineTailDuration)
        let secondHead = fraction(phase: phase,
                                  delay: Self.secondLineHeadDelay,
                                  duration: Self.secondLineHeadDuration)
        let secondTail = fraction(phase: phase,
                                  delay: Self.secondLineTailDelay,
                                  duration: Self.secondLineTailDuration)

        return [
            (head: firstHead, tail: firstTail),
            (head: secondHead, tail: secondTail),
        ]
    }

    /// Returns the eased fraction at `phase` for an animation starting at `delay` and lasting `duration`.
    ///
    /// - Before the delay, the fraction is `0`.
    /// - After `delay + duration`, the fraction is `1`.
    /// - Between, the linear `t = (phase - delay) / duration` is passed through the Material 3
    ///   *FastOutSlowInEasing* curve (cubic-bezier(0.4, 0.0, 0.2, 1)).
    private func fraction(phase: TimeInterval, delay: TimeInterval, duration: TimeInterval) -> CGFloat {
        guard duration > 0 else { return 0 }
        let raw = (phase - delay) / duration
        if raw <= 0 {
            return 0
        }
        if raw >= 1 {
            return 1
        }
        return CGFloat(Self.fastOutSlowIn(raw))
    }

    // MARK: - Easing

    /// Approximates Material 3's *FastOutSlowInEasing* (`cubic-bezier(0.4, 0.0, 0.2, 1)`).
    /// Implemented as an iterative bisection on the parametric Bézier `x(t)` to find the parameter
    /// matching the input `x`, then evaluated as `y(t)`.
    ///
    /// The number of bisections is fixed and small (10) to stay fast — the resulting precision is
    /// well below one pixel, which is far more than enough for a progress animation.
    static func fastOutSlowIn(_ x: Double) -> Double {
        // Control points of the cubic Bezier (P0 = (0,0), P3 = (1,1)).
        let x1 = 0.4
        let x2 = 0.2
        let y1 = 0.0
        let y2 = 1.0

        // Solve for t such that bezierX(t) == x, using bisection.
        var lower = 0.0
        var upper = 1.0
        var t = x
        for _ in 0 ..< 10 {
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
