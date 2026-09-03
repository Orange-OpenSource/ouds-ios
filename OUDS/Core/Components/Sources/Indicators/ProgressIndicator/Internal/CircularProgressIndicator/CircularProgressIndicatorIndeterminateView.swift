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

// swiftlint:disable type_name

/// Animates the foreground arc of an indeterminate ``OUDSCircularProgressIndicator``.
///
/// The animation reproduces the **Material** indeterminate circular progress specification, as
/// implemented identically by Material Web, Material Components Android and Flutter's
/// `CircularProgressIndicator` (all three share the very same motion values, originating from the
/// Android `progress_indeterminate_rotation_material.xml` reference). The active arc:
///
/// - continuously rotates **clockwise**, with no stop and no change of direction;
/// - alternates between a **grow** phase (its trailing end advances while its leading end stays
///   fixed, making the arc longer) and a **shrink** phase (its leading end advances and catches up
///   with the trailing end, making the arc shorter), repeating forever: `short → grow → long →
///   shrink → short → …`.
///
/// This is obtained by combining four time-based values, all derived from a repeating **"tooth"**
/// of `1333 ms`:
///
/// - `head` grows from `0` to `1` (eased with `fastOutSlowIn`) during the first half of the tooth,
///   then holds at `1` during the second half;
/// - `tail` holds at `0` during the first half of the tooth, then grows from `0` to `1` (eased)
///   during the second half;
/// - the visible sweep is `max((head - tail) * 270°, epsilon)`: it grows while only `head` moves,
///   then shrinks while only `tail` moves — exactly the "grow / shrink" alternation described
///   above, with no discontinuity since both phases meet at `sweep ≈ epsilon`;
/// - `offset` is a raw (non-eased) sawtooth of the same `1333 ms` period, used as an additional
///   `90°` "kick" applied to the arc start angle; combined with the `270°` swept by `tail`, the
///   `-360°` jump produced when the tooth resets is a full turn and therefore invisible;
/// - a slower, independent raw sawtooth of `2222 ms` (`rotation`) adds a continuous base rotation
///   of `360°` per period, so the arc never stops advancing even while `head`/`tail` are idle.
///
/// The rendering itself is delegated to ``CircularProgressCanvasView`` and computed from the
/// current wall-clock time provided by ``TimelineView(.animation)``. This approach:
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

    // MARK: - Material animation constants

    /// Duration of one "tooth" (head + tail cycle), in seconds. Matches the reference
    /// implementations' `1333 ms`.
    static let toothDuration: TimeInterval = 1.333

    /// Duration of one base-rotation sawtooth, in seconds. Matches the reference
    /// implementations' `2222 ms`.
    static let rotationDuration: TimeInterval = 2.222

    /// Maximum sweep of the foreground arc, in degrees. Matches the reference implementations'
    /// `3 / 2 * π` radians (i.e. `270°`, three quarters of a full turn).
    static let maxSweepDegrees: Double = 270.0

    /// Minimum sweep of the foreground arc, in degrees, used as a floor so the arc never fully
    /// disappears (a `0°` arc would not be drawn at all).
    static let minSweepDegrees: Double = 0.06

    /// Additional rotation "kick" applied once per tooth, in degrees. Combined with
    /// ``maxSweepDegrees``, the `-360°` jump produced when the tooth resets becomes a full turn
    /// and is therefore invisible.
    static let kickDegrees: Double = 90.0

    /// Control points of the `fastOutSlowIn` cubic-bezier easing (`cubic-bezier(0.4, 0, 0.2, 1)`)
    /// used to ease the `head` and `tail` values within a tooth.
    private static let fastOutSlowInX1 = 0.4
    private static let fastOutSlowInY1 = 0.0
    private static let fastOutSlowInX2 = 0.2
    private static let fastOutSlowInY2 = 1.0

    /// Sweep used when animations are disabled (accessibility / low power).
    static let staticSweep: CGFloat = 0.7

    // MARK: - Properties

    let foregroundColor: Color
    let trackColor: Color
    let strokeCap: CGLineCap
    let gapSize: OUDSProgressIndicatorGapSize
    let size: CGFloat

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
                gapSize: gapSize,
                size: size)
        } else {
            TimelineView(.animation) { context in
                let time = context.date.timeIntervalSinceReferenceDate
                CircularProgressCanvasView(
                    foregroundColor: foregroundColor,
                    trackColor: trackColor,
                    strokeCap: strokeCap,
                    sweep: sweepFraction(at: time),
                    rotation: arcStartDegrees(at: time),
                    gapSize: gapSize,
                    size: size)
            }
        }
    }

    // MARK: - Time-based animations

    /// Progress within the current tooth, in `[0, 1)`. The tooth repeats every ``toothDuration``.
    private static func toothPhase(at time: TimeInterval) -> Double {
        let phase = time.truncatingRemainder(dividingBy: toothDuration)
        return phase / toothDuration
    }

    /// Progress within the current base-rotation sawtooth, in `[0, 1)`. Repeats every
    /// ``rotationDuration``, independently from the tooth.
    private static func rotationPhase(at time: TimeInterval) -> Double {
        let phase = time.truncatingRemainder(dividingBy: rotationDuration)
        return phase / rotationDuration
    }

    /// `head` value at time `t`, in `[0, 1]`: eases from `0` to `1` during the first half of the
    /// tooth (the arc's leading end advances, the arc grows), then holds at `1`.
    private func head(at time: TimeInterval) -> Double {
        let phase = Self.toothPhase(at: time)
        guard phase < 0.5 else { return 1.0 }
        return Self.fastOutSlowIn(phase / 0.5)
    }

    /// `tail` value at time `t`, in `[0, 1]`: holds at `0` during the first half of the tooth, then
    /// eases from `0` to `1` during the second half (the arc's trailing end catches up, the arc
    /// shrinks).
    private func tail(at time: TimeInterval) -> Double {
        let phase = Self.toothPhase(at: time)
        guard phase >= 0.5 else { return 0.0 }
        return Self.fastOutSlowIn((phase - 0.5) / 0.5)
    }

    /// Raw (non-eased) sawtooth used as the additional rotation "kick", in `[0, 1)`.
    private func offset(at time: TimeInterval) -> Double {
        Self.toothPhase(at: time)
    }

    /// Raw (non-eased) sawtooth used as the continuous base rotation, in `[0, 1)`.
    private func rotation(at time: TimeInterval) -> Double {
        Self.rotationPhase(at: time)
    }

    /// Sweep of the foreground arc at time `t`, as a fraction of the full circle in `[0, 1]`.
    private func sweepFraction(at time: TimeInterval) -> CGFloat {
        let sweepDegrees = max((head(at: time) - tail(at: time)) * Self.maxSweepDegrees, Self.minSweepDegrees)
        return CGFloat(sweepDegrees / 360.0)
    }

    /// Start angle of the foreground arc at time `t`, in degrees.
    ///
    /// Combines: a `-90°` offset so the arc starts at the top (12 o'clock) at `t = 0`, the `tail`
    /// sweep (so the start angle moves forward as the arc shrinks), the continuous base rotation,
    /// and the additional rotation kick.
    private func arcStartDegrees(at time: TimeInterval) -> Double {
        -90.0
            + tail(at: time) * Self.maxSweepDegrees
            + rotation(at: time) * 360.0
            + offset(at: time) * Self.kickDegrees
    }

    /// Evaluates the `fastOutSlowIn` cubic-bezier easing (`cubic-bezier(0.4, 0, 0.2, 1)`) at `x`.
    private static func fastOutSlowIn(_ x: Double) -> Double {
        ProgressIndicatorCubicBezierEasing.value(x,
                                                 x1: fastOutSlowInX1,
                                                 y1: fastOutSlowInY1,
                                                 x2: fastOutSlowInX2,
                                                 y2: fastOutSlowInY2)
    }
}

// swiftlint:enable type_name
