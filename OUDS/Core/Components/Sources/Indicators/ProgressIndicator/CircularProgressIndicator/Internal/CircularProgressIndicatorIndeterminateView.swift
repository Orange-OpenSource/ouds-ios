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
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

// swiftlint:disable type_name

/// Animates the foreground arc of an indeterminate ``OUDSCircularProgressIndicator``.
///
/// The animation reproduces the **Android Material 3** indeterminate circular progress specification by combining
/// three time-based animations simultaneously:
///
/// 1. A **global rotation** of `360°` in `6 s` (linear, repeat forever).
/// 2. An **additional rotation** of `90°` performed in `500 ms`, then resting for `1 s`
///    (cycle of `1.5 s`, repeat forever). The rotation is accumulated across cycles to avoid a
///    visual jump at the end of each cycle.
/// 3. An **indicator sweep** that grows and shrinks between `5 %` and `90 %` of the full circle,
///    with an easeInOut-like autoreversing curve.
///
/// The rendering itself is delegated to ``CircularProgressCanvas`` and computed from the current
/// wall-clock time provided by ``TimelineView(.animation)``. This approach:
///
/// - avoids any ``GeometryReader`` or `@State`-driven invalidation that could propagate a layout
///   invalidation up to the parent (which caused a glitch in ``NavigationStack`` toolbars);
/// - is compatible with iOS 15+ (``TimelineView(.animation)`` and ``Canvas`` are both available);
/// - remains deterministic regardless of view recycling.
///
/// Motion is disabled and a static arc is displayed when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true` or Low Power Mode is enabled (via
/// ``OUDSLowPowerModeObserver``), mirroring the behavior of the internal `LoaderIndicator` used
/// by ``OUDSButton``.
struct CircularProgressIndicatorIndeterminateView: View {

    // MARK: - Android Material 3 animation constants

    /// Global rotation period (full 360° turn), in seconds.
    static let globalRotationPeriod: TimeInterval = 6.0

    /// Total duration of one additional rotation cycle (animation + hold), in seconds.
    static let additionalRotationCycle: TimeInterval = 1.5

    /// Duration of the additional rotation animation phase (before the hold), in seconds.
    static let additionalRotationAnimDuration: TimeInterval = 0.5

    /// Angle covered by one additional rotation cycle, in degrees.
    static let additionalRotationTarget: Double = 90.0

    /// Half-period of the sweep animation (grow phase or shrink phase), in seconds.
    /// The full cycle (grow + shrink) is therefore `2 * progressHalfCycle`.
    static let progressHalfCycle: TimeInterval = 1.5

    /// Minimum sweep of the indeterminate indicator, in `[0, 1]`.
    static let progressMin: CGFloat = 0.05

    /// Maximum sweep of the indeterminate indicator when the track is displayed, in `[0, 1]`.
    /// Matches Compose Material 3's `CircularIndeterminateMaxProgress = 0.75f`, which keeps a
    /// visible portion of the track at the peak of the sweep respiration.
    static let progressMax: CGFloat = 0.75

    /// Maximum sweep of the indeterminate indicator when NO track is displayed, in `[0, 1]`.
    /// Since there is no track to hide, the foreground can grow closer to a full circle.
    static let progressMaxWithoutTrack: CGFloat = 0.90

    /// Sweep used when animations are disabled (accessibility / low power).
    static let staticSweep: CGFloat = 0.7

    // MARK: - AI assistant color cycling constants

    /// Full duration of one sweep respiration cycle (grow + shrink), in seconds. Also the period
    /// at which the AI assistant foreground color switches to the next one in ``cyclingColors``.
    static let colorCyclePeriod: TimeInterval = 2.0 * Self.progressHalfCycle

    /// Duration of the smooth cross-fade between two successive AI colors, in seconds. The fade
    /// starts `crossFadeDuration` seconds before the end of a cycle and ends exactly at the cycle
    /// boundary, so the transition is completed when the new cycle begins.
    static let crossFadeDuration: TimeInterval = 0.3

    // MARK: - Properties

    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    let gapSize: OUDSCircularProgressIndicator.GapSize
    let hasTrack: Bool
    let cyclingColors: [Color]

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Body

    var body: some View {
        if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            CircularProgressCanvasView(
                foregroundColor: foregroundColor,
                trackColor: trackColor,
                strokeCap: strokeCap,
                sweep: Self.staticSweep,
                rotation: -90,
                gapSize: gapSize)
        } else {
            TimelineView(.animation) { context in
                let time = context.date.timeIntervalSinceReferenceDate
                CircularProgressCanvasView(
                    foregroundColor: currentColor(at: time),
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    sweep: sweep(at: time),
                    rotation: totalRotation(at: time),
                    gapSize: gapSize)
            }
        }
    }

    // MARK: - Time-based animations

    /// Global rotation angle at time `t`, in degrees. Loops from `0°` to `360°` every ``globalRotationPeriod``.
    private func globalRotation(at time: TimeInterval) -> Double {
        let phase = time.truncatingRemainder(dividingBy: Self.globalRotationPeriod)
        return (phase / Self.globalRotationPeriod) * 360.0
    }

    /// Additional rotation angle at time `t`, in degrees.
    ///
    /// The angle is accumulated across cycles (each cycle adds ``additionalRotationTarget``) so that
    /// the total rotation never jumps back to `0°` — the animation stays visually smooth.
    /// Within a cycle:
    /// - during the first ``additionalRotationAnimDuration`` seconds, the rotation grows linearly from
    ///   the previous plateau to plateau + ``additionalRotationTarget``;
    /// - during the remaining time, the rotation stays constant (hold / pause).
    private func additionalRotation(at time: TimeInterval) -> Double {
        let completedCycles = floor(time / Self.additionalRotationCycle)
        let phase = time - completedCycles * Self.additionalRotationCycle
        let base = completedCycles * Self.additionalRotationTarget

        if phase < Self.additionalRotationAnimDuration {
            let ratio = phase / Self.additionalRotationAnimDuration
            return base + Self.additionalRotationTarget * ratio
        } else {
            return base + Self.additionalRotationTarget
        }
    }

    /// Total rotation at time `t`, in degrees: sum of global rotation and additional rotation, offset by
    /// `-90°` so that the arc starts at the top of the circle (12 o'clock position) at `t = 0`.
    private func totalRotation(at time: TimeInterval) -> Double {
        globalRotation(at: time) + additionalRotation(at: time) - 90.0
    }

    /// Sweep at time `t`, in `[progressMin, maxSweep]` where `maxSweep` depends on ``hasTrack``.
    ///
    /// The value oscillates smoothly between ``progressMin`` and either ``progressMax`` (when
    /// the track is displayed, keeping it visible at the peak) or ``progressMaxWithoutTrack``
    /// (when there is no track to hide, allowing a larger foreground). The easing uses a cosine
    /// curve which approximates Material 3's `EasingEmphasizedCubic` for an autoreversing
    /// infinite animation. The full oscillation period is `2 * progressHalfCycle`.
    private func sweep(at time: TimeInterval) -> CGFloat {
        let fullCycle = 2.0 * Self.progressHalfCycle
        let phase = time.truncatingRemainder(dividingBy: fullCycle) / fullCycle // 0..1
        // (1 - cos(2π * phase)) / 2 produces a smooth 0 -> 1 -> 0 oscillation.
        let eased = CGFloat((1.0 - cos(phase * 2.0 * .pi)) / 2.0)
        let maxSweep = hasTrack ? Self.progressMax : Self.progressMaxWithoutTrack
        return Self.progressMin + (maxSweep - Self.progressMin) * eased
    }

    // MARK: - AI assistant color cycling

    /// Current foreground color at time `t`.
    ///
    /// - When ``cyclingColors`` is empty (standard appearance), returns ``foregroundColor``.
    /// - Otherwise, picks the color of the current cycle and cross-fades into the next one during
    ///   the last ``crossFadeDuration`` seconds of each cycle.
    private func currentColor(at time: TimeInterval) -> Color {
        guard !cyclingColors.isEmpty else { return foregroundColor }
        let cycle = Self.colorCyclePeriod
        let index = Self.colorIndex(at: time, cycle: cycle, count: cyclingColors.count)
        let currentColor = cyclingColors[index]

        // Compute the position within the current cycle.
        let cyclesCompleted = floor(time / cycle)
        let phaseInCycle = time - cyclesCompleted * cycle // in [0, cycle)
        let fadeStart = cycle - Self.crossFadeDuration
        guard phaseInCycle >= fadeStart else {
            return currentColor
        }
        // Progress of the cross-fade in [0, 1], with 0 at fadeStart and 1 at the cycle boundary.
        let t = (phaseInCycle - fadeStart) / Self.crossFadeDuration
        let nextIndex = (index + 1) % cyclingColors.count
        let nextColor = cyclingColors[nextIndex]
        return Self.interpolate(from: currentColor, to: nextColor, ratio: CGFloat(t))
    }

    /// Returns the index (in `[0, count)`) of the color currently displayed at time `t`,
    /// cycling every `cycle` seconds.
    ///
    /// Exposed as `static` so that it can be unit-tested without instantiating a SwiftUI view.
    ///
    /// - Parameters:
    ///    - time: absolute time in seconds, expected `>= 0`.
    ///    - cycle: cycle period in seconds, must be `> 0`.
    ///    - count: number of colors in the cycle, must be `> 0`.
    /// - Returns: the 0-based index of the current color.
    static func colorIndex(at time: TimeInterval, cycle: TimeInterval, count: Int) -> Int {
        guard cycle > 0, count > 0 else { return 0 }
        let cyclesCompleted = Int(floor(time / cycle))
        // Ensure non-negative modulo even if `time` were negative.
        return ((cyclesCompleted % count) + count) % count
    }

    /// Linearly interpolates between two `Color`s in the sRGB color space using
    /// `UIColor`/`NSColor` bridging, so the interpolation happens on real RGBA channels
    /// (SwiftUI's `Color` does not expose components on iOS 15).
    ///
    /// The `ratio` is clamped to `[0, 1]`.
    static func interpolate(from: Color, to: Color, ratio: CGFloat) -> Color {
        let clamped = min(max(ratio, 0.0), 1.0)
        #if canImport(UIKit)
        let fromUI = UIColor(from)
        let toUI = UIColor(to)
        var fr: CGFloat = 0, fg: CGFloat = 0, fb: CGFloat = 0, fa: CGFloat = 0
        var tr: CGFloat = 0, tg: CGFloat = 0, tb: CGFloat = 0, ta: CGFloat = 0
        fromUI.getRed(&fr, green: &fg, blue: &fb, alpha: &fa)
        toUI.getRed(&tr, green: &tg, blue: &tb, alpha: &ta)
        return Color(
            red: Double(fr + (tr - fr) * clamped),
            green: Double(fg + (tg - fg) * clamped),
            blue: Double(fb + (tb - fb) * clamped),
            opacity: Double(fa + (ta - fa) * clamped))
        #elseif canImport(AppKit)
        let fromNS = NSColor(from).usingColorSpace(.sRGB) ?? NSColor(from)
        let toNS = NSColor(to).usingColorSpace(.sRGB) ?? NSColor(to)
        var fr: CGFloat = 0, fg: CGFloat = 0, fb: CGFloat = 0, fa: CGFloat = 0
        var tr: CGFloat = 0, tg: CGFloat = 0, tb: CGFloat = 0, ta: CGFloat = 0
        fromNS.getRed(&fr, green: &fg, blue: &fb, alpha: &fa)
        toNS.getRed(&tr, green: &tg, blue: &tb, alpha: &ta)
        return Color(
            red: Double(fr + (tr - fr) * clamped),
            green: Double(fg + (tg - fg) * clamped),
            blue: Double(fb + (tb - fb) * clamped),
            opacity: Double(fa + (ta - fa) * clamped))
        #else
        // Fallback for platforms without UIKit/AppKit component access.
        return clamped < 0.5 ? from : to
        #endif
    }
}

// swiftlint:enable type_name
