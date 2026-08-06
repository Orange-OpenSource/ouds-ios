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
/// The layout mirrors the Android Material 3 reference implementation:
/// - a **foreground** bar of length `progress * fullWidth`;
/// - a **track** on the right of the foreground bar with a `gap` between them;
/// - an optional **stop indicator** (small square) at the end of the track.
///
/// In indeterminate mode, the foreground is replaced by up to two moving bars whose head/tail
/// fractions are provided by ``indeterminateBars``. Both segments share the foreground color and
/// the same rounded corners (when the theme requires them).
struct LinearProgressBarCanvasView: View {

    // MARK: - Constants

    /// Default gap between the foreground bar and the track, in points (Material 3 spec).
    static let defaultGapSize: CGFloat = 4.0

    /// Reduced gap between the foreground bar and the track, in points.
    static let smallGapSize: CGFloat = 1.0

    /// Side of the square stop indicator, in points (matches Material 3 `LinearTrackStopIndicatorSize`).
    /// The value is set equal to the bar height at run time so that the stop indicator scales with
    /// Dynamic Type.
    static let stopIndicatorSideRatio: CGFloat = 1.0

    // MARK: - Properties

    /// The color used to draw the foreground bar(s) and the stop indicator.
    let foregroundColor: Color

    /// The color of the track. When `hasTrack` is `false`, the caller passes `.clear`.
    let trackColor: Color

    /// Rounded caps (`.round`) or square caps (`.butt`). Follows `Tuning.hasRoundedProgressIndicators`.
    let strokeCap: CGLineCap

    /// Fraction of the full width occupied by the foreground bar in **determinate** mode, in `[0, 1]`.
    /// Ignored in indeterminate mode when ``indeterminateBars`` is non-empty.
    let progress: CGFloat

    /// Head/tail fractions (in `[0, 1]`) of each moving bar in **indeterminate** mode.
    /// - `head` = right edge (fraction from 0 = far left to 1 = far right).
    /// - `tail` = left edge.
    /// A bar is drawn only when `head > tail`.
    let indeterminateBars: [(head: CGFloat, tail: CGFloat)]

    /// Whether the track is displayed at all. When `false`, the track is not drawn but the gap
    /// logic still applies (the foreground / indeterminate bars keep their shape).
    let hasTrack: Bool

    /// Whether the stop indicator (small square) is drawn at the end of the track.
    let hasStopIndicator: Bool

    /// Requested gap size.
    let gapSize: OUDSLinearProgressIndicator.GapSize

    /// Height of the bar, in points. Corresponds to `theme.progressIndicator.sizeLinearIndicatorHeight`
    /// scaled by Dynamic Type.
    let barHeight: CGFloat

    // MARK: - Body

    var body: some View {
        GeometryReader { proxy in
            let totalWidth = proxy.size.width
            let gap = effectiveGap(barHeight: barHeight)
            let cornerRadius = (strokeCap == .round) ? barHeight / 2.0 : 0.0
            let stopIndicatorSide = barHeight * Self.stopIndicatorSideRatio

            ZStack(alignment: .leading) {
                // Track (drawn first, on the right of the foreground).
                if hasTrack {
                    trackShape(totalWidth: totalWidth,
                               gap: gap,
                               cornerRadius: cornerRadius,
                               stopIndicatorSide: stopIndicatorSide)
                }

                // Foreground (determinate) or moving bars (indeterminate).
                if indeterminateBars.isEmpty {
                    determinateForeground(totalWidth: totalWidth,
                                          cornerRadius: cornerRadius)
                } else {
                    indeterminateForeground(totalWidth: totalWidth,
                                            cornerRadius: cornerRadius)
                }

                // Stop indicator (drawn last so it stays visible on top of the track).
                if hasStopIndicator, shouldDrawStopIndicator {
                    stopIndicator(totalWidth: totalWidth,
                                  side: stopIndicatorSide,
                                  cornerRadius: cornerRadius)
                }
            }
            .frame(width: totalWidth, height: barHeight)
        }
    }

    // MARK: - Sub-views

    /// Draws the track on the right of the foreground bar with a `gap` in between. The track shrinks
    /// to accommodate the stop indicator when the stop indicator is drawn.
    @ViewBuilder
    private func trackShape(totalWidth: CGFloat,
                            gap: CGFloat,
                            cornerRadius: CGFloat,
                            stopIndicatorSide: CGFloat) -> some View
    {
        let foregroundWidth = max(0.0, progress * totalWidth)
        // The gap is hidden when the progress is 0 or 1 (matches Material 3 behavior).
        let effectiveGap = (progress <= 0.0 || progress >= 1.0) ? 0.0 : gap
        let stopReservation = hasStopIndicator ? (stopIndicatorSide + effectiveGap) : 0.0
        let trackWidth = max(0.0, totalWidth - foregroundWidth - effectiveGap - stopReservation)
        let trackOrigin = foregroundWidth + effectiveGap

        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(trackColor)
            .frame(width: trackWidth, height: barHeight)
            .offset(x: trackOrigin)
    }

    /// Draws the determinate foreground bar occupying `progress * totalWidth`.
    @ViewBuilder
    private func determinateForeground(totalWidth: CGFloat,
                                       cornerRadius: CGFloat) -> some View
    {
        let foregroundWidth = max(0.0, progress * totalWidth)
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(foregroundColor)
            .frame(width: foregroundWidth, height: barHeight)
    }

    /// Draws the moving bars of the indeterminate mode.
    private func indeterminateForeground(totalWidth: CGFloat,
                                         cornerRadius: CGFloat) -> some View
    {
        ForEach(0 ..< indeterminateBars.count, id: \.self) { index in
            let bar = indeterminateBars[index]
            let clampedHead = min(max(bar.head, 0.0), 1.0)
            let clampedTail = min(max(bar.tail, 0.0), 1.0)
            let start = min(clampedHead, clampedTail)
            let end = max(clampedHead, clampedTail)
            let width = max(0.0, (end - start) * totalWidth)

            if width > 0 {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(foregroundColor)
                    .frame(width: width, height: barHeight)
                    .offset(x: start * totalWidth)
            }
        }
    }

    /// Draws the stop indicator at the end of the total width.
    private func stopIndicator(totalWidth: CGFloat, side: CGFloat, cornerRadius: CGFloat) -> some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(foregroundColor)
            .frame(width: side, height: side)
            .offset(x: max(0.0, totalWidth - side))
    }

    // MARK: - Helpers

    /// Effective gap between the foreground and the track, in points. When ``strokeCap`` is `.round`,
    /// the round caps eat up the visible spacing, so we compensate by adding `barHeight`
    /// (2 × strokeWidth/2). This mirrors the Material 3 Android reference implementation.
    private func effectiveGap(barHeight: CGFloat) -> CGFloat {
        let nominal: CGFloat = (gapSize == .default) ? Self.defaultGapSize : Self.smallGapSize
        let capCompensation: CGFloat = (strokeCap == .round) ? barHeight : 0
        return nominal + capCompensation
    }

    /// The stop indicator must not be drawn when the foreground bar has reached the end of the track.
    private var shouldDrawStopIndicator: Bool {
        // In indeterminate mode, we always draw the stop indicator when requested.
        // In determinate mode, we hide it when progress reaches 1.
        indeterminateBars.isEmpty ? (progress < 1.0) : true
    }
}
