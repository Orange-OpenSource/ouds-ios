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
/// The animation reproduces the **Material** indeterminate linear progress specification, as
/// implemented identically by Material Web, Material Components Android and Flutter's
/// `LinearProgressIndicator` (all three share the very same motion values, originating from the
/// Android `progress_indeterminate_material.xml` reference). Two lines follow one another across
/// the track, each defined by two independent animations (head and tail), each with its **own**
/// cubic-bezier easing, sharing a **1800 ms** cycle:
///
/// | Animation             | Delay   | Duration | Easing (cubic-bezier)      |
/// | --------------------- | ------- | -------- | --------------------------- |
/// | First bar head        |    0 ms |   750 ms | `(0.2, 0, 0.8, 1)`          |
/// | First bar tail        |  333 ms |   750 ms | `(0.4, 0, 1, 1)`            |
/// | Second bar head       | 1000 ms |   567 ms | `(0, 0, 0.65, 1)`           |
/// | Second bar tail       | 1267 ms |   533 ms | `(0.10, 0, 0.45, 1)`        |
///
/// The Material rendering is **not** just "two colored bars over a solid track": it draws five
/// segments (three track segments and two colored lines), which naturally produces the two small
/// transparent gaps around each colored line — the visual signature of the animation. See
/// ``LinearProgressBarCanvasView`` for the segment layout, and
/// ``LinearProgressBarCanvasView/effectiveTrackGapFraction(currentValue:gapFraction:)`` for how
/// the gap is ramped down near `0` to avoid a discontinuity.
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

    // MARK: - Material animation constants

    /// Total duration of one animation cycle, in seconds. Matches the reference implementations'
    /// `LinearAnimationDuration = 1800`.
    static let cycleDuration: TimeInterval = 1.800

    // MARK: First bar

    /// Delay before the first bar's head starts moving, in seconds (Material spec `Line1HeadDelay = 0`).
    static let firstLineHeadDelay: TimeInterval = 0.0

    /// Duration of the first bar's head animation, in seconds (Material spec `Line1HeadDuration = 750`).
    static let firstLineHeadDuration: TimeInterval = 0.750

    /// Delay before the first bar's tail starts moving, in seconds (Material spec `Line1TailDelay = 333`).
    static let firstLineTailDelay: TimeInterval = 0.333

    /// Duration of the first bar's tail animation, in seconds (Material spec `Line1TailDuration = 750`).
    static let firstLineTailDuration: TimeInterval = 0.750

    // MARK: Second bar

    /// Delay before the second bar's head starts moving, in seconds (Material spec `Line2HeadDelay = 1000`).
    static let secondLineHeadDelay: TimeInterval = 1.000

    /// Duration of the second bar's head animation, in seconds (Material spec `Line2HeadDuration = 567`).
    static let secondLineHeadDuration: TimeInterval = 0.567

    /// Delay before the second bar's tail starts moving, in seconds (Material spec `Line2TailDelay = 1267`).
    static let secondLineTailDelay: TimeInterval = 1.267

    /// Duration of the second bar's tail animation, in seconds (Material spec `Line2TailDuration = 533`).
    static let secondLineTailDuration: TimeInterval = 0.533

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
    /// (head/tail of each bar) is computed via ``fraction(phase:delay:duration:controlPoints:)``,
    /// each with its own cubic-bezier easing (see the type documentation table).
    func fractions(at time: TimeInterval) -> Fractions {
        let phase = time.truncatingRemainder(dividingBy: Self.cycleDuration)

        let firstHead = Self.fraction(
            phase: phase,
            delay: Self.firstLineHeadDelay,
            duration: Self.firstLineHeadDuration,
            controlPoints: .init(x1: 0.2, y1: 0.0, x2: 0.8, y2: 1.0))
        let firstTail = Self.fraction(
            phase: phase,
            delay: Self.firstLineTailDelay,
            duration: Self.firstLineTailDuration,
            controlPoints: .init(x1: 0.4, y1: 0.0, x2: 1.0, y2: 1.0))
        let secondHead = Self.fraction(
            phase: phase,
            delay: Self.secondLineHeadDelay,
            duration: Self.secondLineHeadDuration,
            controlPoints: .init(x1: 0.0, y1: 0.0, x2: 0.65, y2: 1.0))
        let secondTail = Self.fraction(
            phase: phase,
            delay: Self.secondLineTailDelay,
            duration: Self.secondLineTailDuration,
            controlPoints: .init(x1: 0.10, y1: 0.0, x2: 0.45, y2: 1.0))

        return Fractions(firstHead: firstHead,
                         firstTail: firstTail,
                         secondHead: secondHead,
                         secondTail: secondTail)
    }

    /// Returns the eased fraction at `phase` for a Material `keyframes` animation of the form:
    ///
    /// ```
    /// 0f at delay using cubic-bezier(controlPoints)
    /// 1f at delay + duration
    /// ```
    ///
    /// Looped through `infiniteRepeatable`. In practice:
    /// - Before `delay`, the fraction is **`1.0`** (the value at the end of the previous cycle).
    /// - Between `delay` and `delay + duration`, it interpolates from `0.0` to `1.0` with the
    ///   given cubic Bézier easing.
    /// - After `delay + duration`, the fraction stays at `1.0` until the end of the cycle.
    ///
    /// This is what produces the "caterpillar" effect: the head starts moving before the tail, so
    /// the visible segment (`head - tail`) grows, then shrinks as the tail catches up.
    static func fraction(phase: TimeInterval,
                         delay: TimeInterval,
                         duration: TimeInterval,
                         controlPoints: ProgressIndicatorCubicBezierEasing.ControlPoints) -> CGFloat
    {
        guard duration > 0 else { return 1.0 }
        if phase < delay {
            return 1.0
        } else if phase < delay + duration {
            let t = (phase - delay) / duration
            return CGFloat(ProgressIndicatorCubicBezierEasing.value(t, controlPoints))
        } else {
            return 1.0
        }
    }
}
