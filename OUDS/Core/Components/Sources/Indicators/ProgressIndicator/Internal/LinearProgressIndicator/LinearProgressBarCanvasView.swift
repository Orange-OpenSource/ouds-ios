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

import SwiftUI

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

/// Draws the horizontal bar of an ``OUDSLinearProgressIndicator``.
///
/// The layout mirrors the Android Material 3 reference implementation (AndroidX Compose
/// `ProgressIndicator.kt`). Two rendering modes are supported through ``Content``:
///
/// - **Determinate** — a single foreground segment goes from `0` to `progress`, followed by a
///   gap and then a track segment up to `1.0`. Both segments are drawn by ``LinearProgressBarShape``,
///   a single `Shape` whose `animatableData` is the progress value, so foreground and track are
///   perfectly synchronized during progress animations (no offset glitch at the end of the reveal).
///
/// - **Indeterminate** — five segments are drawn in the following order, producing the two small
///   transparent gaps that surround each colored line (the visual signature of Material 3
///   indeterminate linear progress):
///
///   1. Track before line 1: `[firstHead + gap, 1]` if `firstHead < 1 − gap`.
///   2. Line 1 (foreground): `[firstTail, firstHead]` if `firstHead − firstTail > 0`.
///   3. Track between the two lines: `[secondHead + gap, firstTail − gap]` if `firstTail > gap`.
///   4. Line 2 (foreground): `[secondTail, secondHead]` if `secondHead − secondTail > 0`.
///   5. Track after line 2: `[0, secondTail − gap]` if `secondTail > gap`.
///
///   Since two of these segments are colored and the gaps are simply not drawn (transparent
///   container background), the effect is a caterpillar-like race between two lines. Each `gap`
///   above is not a fixed value: it is ramped down smoothly to `0` as the adjacent fraction
///   approaches an edge of the track (see
///   ``effectiveTrackGapFraction(currentValue:gapFraction:)``), so the visible spacing never jumps
///   abruptly when a line's head or tail crosses `0` or `1`.
///
/// The optional stop indicator is drawn as a **overlay** on the right edge in determinate mode
/// only — it does not reserve any space in the track, so appearing / disappearing it never
/// causes the track to shift horizontally.
struct LinearProgressBarCanvasView: View {

    // MARK: - Constants

    /// Default gap between the foreground bar and the track, in points (Android Material 3 specification).
    static let defaultGapSize: CGFloat = 4.0

    /// Reduced gap between the foreground bar and the track, in points.
    static let smallGapSize: CGFloat = 1.0

    /// Progress value threshold below which the track gap is ramped down proportionally, in
    /// `[0, 1]`. Matches the Material reference implementations' `TrackGapRampDownThreshold =
    /// 0.01`. Without this ramp, the gap would jump abruptly from `0` to its nominal size as soon
    /// as the adjacent segment's fraction crosses `0`, producing a visible discontinuity.
    static let trackGapRampDownThreshold: CGFloat = 0.01

    /// Side of the stop indicator, in points, relative to the bar height. Material 3 uses a stop
    /// indicator whose size equals the track height, so it scales naturally with Dynamic Type.
    static let stopIndicatorSideRatio: CGFloat = 1.0

    /// Trailing space between the stop indicator and the right edge of the bar, in points.
    /// Matches Android Compose Material 3 `StopIndicatorTrailingSpace = 6.dp`, but capped in
    /// ``stopIndicatorOffset(barHeight:stopSize:)`` so it cannot exceed the vertical padding
    /// available for the stop indicator inside the bar height.
    static let stopIndicatorTrailingSpace: CGFloat = 6.0

    // MARK: - Content

    /// Describes the segments to draw.
    enum Content: Equatable {
        /// Determinate mode with a progress value in `[0, 1]`.
        case determinate(progress: CGFloat)

        /// Indeterminate mode with the four head/tail fractions of the two Material 3 lines.
        /// Each fraction is expected in `[0, 1]`.
        case indeterminate(firstHead: CGFloat, firstTail: CGFloat,
                           secondHead: CGFloat, secondTail: CGFloat)
    }

    // MARK: - Properties

    /// The segments to draw.
    let content: Content

    /// Color used to draw the foreground bar(s) and the stop indicator.
    let foregroundColor: Color

    /// Color of the track. When `hasTrack` is `false`, the track segments are not drawn.
    let trackColor: Color

    /// Rounded caps (`.round`) or square caps (`.butt`). Follows `Tuning.hasRoundedProgressIndicators`.
    let strokeCap: CGLineCap

    /// Whether the track is displayed at all.
    let hasTrack: Bool

    /// Whether the stop indicator (small square / circle) is drawn at the end of the track.
    /// Only honored in determinate mode.
    let hasStopIndicator: Bool

    /// Requested gap size.
    let gapSize: OUDSProgressIndicatorGapSize

    /// Height of the bar, in points.
    let barHeight: CGFloat

    // MARK: - Body

    var body: some View {
        GeometryReader { proxy in
            let totalWidth = proxy.size.width
            let cornerRadius = (strokeCap == .round) ? barHeight / 2.0 : 0.0
            let gap = effectiveGap(barHeight: barHeight)
            let gapFraction = totalWidth > 0 ? gap / totalWidth : 0.0

            ZStack(alignment: .leading) {
                switch content {
                case let .determinate(progress):
                    LinearProgressBarShape(
                        progress: min(max(progress, 0.0), 1.0),
                        gapFraction: min(max(gapFraction, 0.0), 1.0),
                        cornerRadius: cornerRadius,
                        foregroundColor: foregroundColor,
                        trackColor: hasTrack ? trackColor : .clear)
                        .frame(width: totalWidth, height: barHeight)

                    if hasStopIndicator, progress < 1.0 {
                        stopIndicator(totalWidth: totalWidth,
                                      cornerRadius: cornerRadius)
                    }

                case let .indeterminate(firstHead, firstTail, secondHead, secondTail):
                    let fractions = IndeterminateFractions(firstHead: firstHead,
                                                           firstTail: firstTail,
                                                           secondHead: secondHead,
                                                           secondTail: secondTail)
                    indeterminateCanvas(gapFraction: gapFraction,
                                        cornerRadius: cornerRadius,
                                        fractions: fractions)
                        .frame(width: totalWidth, height: barHeight)
                }
            }
            .frame(width: totalWidth, height: barHeight)
        }
    }

    // MARK: - Indeterminate rendering

    /// Head/tail fractions of the two Android Material 3 indeterminate lines, grouped together to keep
    /// the ``indeterminateCanvas(gapFraction:cornerRadius:fractions:)`` signature short.
    struct IndeterminateFractions {
        let firstHead: CGFloat
        let firstTail: CGFloat
        let secondHead: CGFloat
        let secondTail: CGFloat
    }

    /// Draws the five Android Material 3 indeterminate segments (three track segments + two colored
    /// lines) via a SwiftUI `Canvas`, using the exact same layout as
    /// AndroidX Compose `LinearProgressIndicator`.
    private func indeterminateCanvas(gapFraction: CGFloat,
                                     cornerRadius: CGFloat,
                                     fractions: IndeterminateFractions) -> some View
    {
        Canvas { context, size in
            drawIndeterminate(context: context,
                              size: size,
                              gapFraction: gapFraction,
                              cornerRadius: cornerRadius,
                              fractions: fractions)
        }
    }

    /// Draws the five Android Material 3 indeterminate segments in the given `GraphicsContext`. Split from
    /// ``indeterminateCanvas(gapFraction:cornerRadius:fractions:)`` to keep view bodies
    /// short.
    private func drawIndeterminate(context: GraphicsContext,
                                   size: CGSize,
                                   gapFraction: CGFloat,
                                   cornerRadius: CGFloat,
                                   fractions: IndeterminateFractions)
    {
        drawIndeterminateTracks(context: context,
                                size: size,
                                gapFraction: gapFraction,
                                cornerRadius: cornerRadius,
                                fractions: fractions)
        drawIndeterminateLines(context: context,
                               size: size,
                               cornerRadius: cornerRadius,
                               fractions: fractions)
    }

    /// Draws the three track segments of the indeterminate rendering (segments 1, 3 and 5).
    ///
    /// The gap adjacent to each line's fraction is computed via
    /// ``effectiveTrackGapFraction(currentValue:gapFraction:)`` instead of being added or omitted
    /// through a binary condition: this ramps the gap smoothly from `0` to its nominal size as the
    /// adjacent fraction grows from `0` to `1%`, avoiding the abrupt jump that would otherwise
    /// occur exactly when a line's head or tail crosses an edge of the track.
    private func drawIndeterminateTracks(context: GraphicsContext,
                                         size: CGSize,
                                         gapFraction: CGFloat,
                                         cornerRadius: CGFloat,
                                         fractions: IndeterminateFractions)
    {
        guard hasTrack else { return }
        let firstHead = fractions.firstHead
        let firstTail = fractions.firstTail
        let secondHead = fractions.secondHead
        let secondTail = fractions.secondTail

        // 1. Track before line 1.
        if firstHead < 1 - gapFraction {
            let start = firstHead > 0
                ? firstHead + Self.effectiveTrackGapFraction(currentValue: firstHead, gapFraction: gapFraction)
                : 0
            fillSegment(context: context,
                        size: size,
                        startFraction: start,
                        endFraction: 1,
                        cornerRadius: cornerRadius,
                        color: trackColor)
        }
        // 3. Track between line 1 and line 2.
        if firstTail > gapFraction {
            let start = secondHead > 0
                ? secondHead + Self.effectiveTrackGapFraction(currentValue: secondHead, gapFraction: gapFraction)
                : 0
            let end = firstTail < 1
                ? firstTail - Self.effectiveTrackGapFraction(currentValue: 1 - firstTail, gapFraction: gapFraction)
                : 1
            if end > start {
                fillSegment(context: context,
                            size: size,
                            startFraction: start,
                            endFraction: end,
                            cornerRadius: cornerRadius,
                            color: trackColor)
            }
        }
        // 5. Track after line 2.
        if secondTail > gapFraction {
            let end = secondTail < 1
                ? secondTail - Self.effectiveTrackGapFraction(currentValue: 1 - secondTail, gapFraction: gapFraction)
                : 1
            if end > 0 {
                fillSegment(context: context,
                            size: size,
                            startFraction: 0,
                            endFraction: end,
                            cornerRadius: cornerRadius,
                            color: trackColor)
            }
        }
    }

    /// Draws the two colored lines of the indeterminate rendering (segments 2 and 4).
    private func drawIndeterminateLines(context: GraphicsContext,
                                        size: CGSize,
                                        cornerRadius: CGFloat,
                                        fractions: IndeterminateFractions)
    {
        // 2. Line 1 (colored).
        if fractions.firstHead - fractions.firstTail > 0 {
            fillSegment(context: context,
                        size: size,
                        startFraction: fractions.firstTail,
                        endFraction: fractions.firstHead,
                        cornerRadius: cornerRadius,
                        color: foregroundColor)
        }
        // 4. Line 2 (colored).
        if fractions.secondHead - fractions.secondTail > 0 {
            fillSegment(context: context,
                        size: size,
                        startFraction: fractions.secondTail,
                        endFraction: fractions.secondHead,
                        cornerRadius: cornerRadius,
                        color: foregroundColor)
        }
    }

    /// Draws a horizontal rounded segment in the given `GraphicsContext`, from `startFraction` to
    /// `endFraction` of the width.
    private func fillSegment(context: GraphicsContext,
                             size: CGSize,
                             startFraction: CGFloat,
                             endFraction: CGFloat,
                             cornerRadius: CGFloat,
                             color: Color)
    {
        let clampedStart = min(max(startFraction, 0.0), 1.0)
        let clampedEnd = min(max(endFraction, 0.0), 1.0)
        let start = min(clampedStart, clampedEnd)
        let end = max(clampedStart, clampedEnd)
        let width = (end - start) * size.width
        guard width > 0 else { return }
        let rect = CGRect(x: start * size.width, y: 0, width: width, height: size.height)
        let path = Path(roundedRect: rect, cornerRadius: min(cornerRadius, size.height / 2))
        context.fill(path, with: .color(color))
    }

    // MARK: - Stop indicator

    /// Draws the stop indicator as an overlay on the right edge of the bar. It does not reserve
    /// any horizontal space in the track, so its appearance / disappearance never shifts the
    /// track horizontally.
    @ViewBuilder
    private func stopIndicator(totalWidth: CGFloat, cornerRadius: CGFloat) -> some View {
        let stopSize = barHeight * Self.stopIndicatorSideRatio
        let trailingOffset = stopIndicatorOffset(barHeight: barHeight, stopSize: stopSize)
        let originX = max(0.0, totalWidth - stopSize - trailingOffset)

        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(foregroundColor)
            .frame(width: stopSize, height: stopSize)
            .offset(x: originX)
    }

    /// Trailing offset of the stop indicator inside the bar, in points. Matches the Compose
    /// Material 3 behavior: the offset is `StopIndicatorTrailingSpace` (6pt) but capped by
    /// `(barHeight − stopSize) / 2` so it stays visually inside the bar for large heights.
    private func stopIndicatorOffset(barHeight: CGFloat, stopSize: CGFloat) -> CGFloat {
        let maxOffset = (barHeight - stopSize) / 2.0
        return min(Self.stopIndicatorTrailingSpace, max(0.0, maxOffset))
    }

    // MARK: - Gap helpers

    /// Computes a track gap fraction that is scaled proportionally to a given adjacent value.
    ///
    /// This is used for a smooth transition of the track gap's size, preventing it from appearing
    /// or disappearing abruptly. The returned value increases linearly from `0` to the full
    /// `gapFraction` as `currentValue` increases from `0` to ``trackGapRampDownThreshold``.
    /// Mirrors the Material reference implementations' `getEffectiveTrackGapFraction`.
    static func effectiveTrackGapFraction(currentValue: CGFloat, gapFraction: CGFloat) -> CGFloat {
        gapFraction * min(max(currentValue, 0.0), trackGapRampDownThreshold) / trackGapRampDownThreshold
    }

    /// Effective gap between the foreground bar and the track, in points. When ``strokeCap`` is
    /// `.round`, the round caps eat up the visible spacing, so we compensate by adding
    /// `barHeight` (2 × strokeWidth/2). Mirrors the Material 3 Android reference implementation.
    private func effectiveGap(barHeight: CGFloat) -> CGFloat {
        let nominal: CGFloat = (gapSize == .default) ? Self.defaultGapSize : Self.smallGapSize
        let capCompensation: CGFloat = (strokeCap == .round) ? barHeight : 0
        return nominal + capCompensation
    }
}

// MARK: - Linear Progress Bar Shape

/// A single `View` that traces both the foreground bar and the track of a determinate linear
/// progress indicator in a single `path(in:)` call, using a single animatable value (`progress`).
private struct LinearProgressBarShape: View {

    let progress: CGFloat
    let gapFraction: CGFloat
    let cornerRadius: CGFloat
    let foregroundColor: Color
    let trackColor: Color

    var body: some View {
        ZStack(alignment: .leading) {
            LinearProgressBarSegmentShape(fraction: progress,
                                          isTrack: false,
                                          gapFraction: gapFraction,
                                          cornerRadius: cornerRadius)
                .fill(foregroundColor)

            LinearProgressBarSegmentShape(fraction: progress,
                                          isTrack: true,
                                          gapFraction: gapFraction,
                                          cornerRadius: cornerRadius)
                .fill(trackColor)
        }
    }
}

// MARK: - Linear Progress Bar Segment Shape

/// A `Shape` that draws either the foreground segment (`[0, fraction]`) or the track segment
/// (`[fraction + min(fraction, gap), 1]`) of the determinate linear progress indicator, depending
/// on ``isTrack``.
///
/// The conformance to `Animatable` (via `animatableData` = `fraction`) is what makes SwiftUI
/// re-invoke `path(in:)` at every frame during a `withAnimation` block, keeping the two segments
/// synchronized. The gap between them is derived from `fraction` inside `path(in:)`, so it also
/// animates in lockstep and never introduces a discontinuity — the horizontal offset of the
/// track is computed from the exact same `fraction` at every frame.
///
/// Mirrors the Android Compose Material 3 reference formula:
/// `trackStartFraction = progress + min(progress, gapSizeFraction)`.
private struct LinearProgressBarSegmentShape: Shape {

    var fraction: CGFloat
    let isTrack: Bool
    let gapFraction: CGFloat
    let cornerRadius: CGFloat

    var animatableData: CGFloat {
        get { fraction }
        set { fraction = newValue }
    }

    func path(in rect: CGRect) -> Path {
        let clampedFraction = min(max(fraction, 0.0), 1.0)
        let width = rect.width
        let height = rect.height

        if isTrack {
            // Android Compose M3: trackStart = progress + min(progress, gap).
            let trackStart = clampedFraction + min(clampedFraction, gapFraction)
            guard trackStart < 1.0, width > 0 else { return Path() }
            let x = trackStart * width
            let segmentRect = CGRect(x: x, y: 0, width: max(0, width - x), height: height)
            return Path(roundedRect: segmentRect,
                        cornerRadius: min(cornerRadius, height / 2))
        } else {
            // Foreground: from 0 to progress (no gap shrinking on this side, matches Android Compose M3).
            let foregroundWidth = clampedFraction * width
            guard foregroundWidth > 0 else { return Path() }
            let segmentRect = CGRect(x: 0, y: 0, width: foregroundWidth, height: height)
            return Path(roundedRect: segmentRect,
                        cornerRadius: min(cornerRadius, height / 2))
        }
    }
}
