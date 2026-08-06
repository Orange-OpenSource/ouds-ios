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
import OUDSFoundations
import SwiftUI

/*
 ━━━━━★. *･｡ﾟ✧⁺ Magic stuff
 */

/// Internal view rendering the **determinate** variant of ``OUDSLinearProgressIndicator``.
///
/// Handles two SwiftUI animations driven by the ``animated`` flag:
/// - a **reveal** animation on first display (from `0` to the target `progress`);
/// - an **update** animation whenever the target `progress` changes.
///
/// Both animations use the **same critically-damped spring** as
/// ``CircularProgressIndicatorDeterminateView``, matching Android Material 3's `ProgressAnimationSpec`
/// (`SpringSpec(dampingRatio: NoBouncy, stiffness: VeryLow)`). The perceived duration is around
/// 1.5 seconds and the bar remains visible during the whole animation.
///
/// Animations are disabled and the target value is applied instantly when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true`, Low Power Mode is enabled (via
/// ``OUDSLowPowerModeObserver``) or ``animated`` is `false`.
struct LinearProgressIndicatorDeterminateView: View {

    // MARK: - Android Material 3 spring animation constants

    /// Mass of the spring used to animate the determinate progress.
    static let springMass: Double = 1.0

    /// Stiffness of the spring. Very low, matching Android Material 3's `StiffnessVeryLow`.
    /// Higher values make the animation faster; lower values make it slower.
    static let springStiffness: Double = 50.0

    /// Damping of the spring. Critical damping (no bounce), matching Android Material 3's
    /// `DampingRatioNoBouncy`. Computed as `2 * sqrt(springMass * springStiffness)`.
    static let springDamping: Double = 14.142135623730951

    // MARK: - Properties

    let progress: Double
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

    /// Current displayed progress. Starts at `0` so that the first `onAppear` can animate towards
    /// the target value when ``animated`` is `true`.
    @State private var displayedProgress: Double = 0

    // MARK: - Body

    var body: some View {
        LinearProgressBarCanvasView(
            foregroundColor: foregroundColor,
            trackColor: trackColor,
            strokeCap: strokeCap,
            progress: CGFloat(displayedProgress),
            indeterminateBars: [],
            hasTrack: hasTrack,
            hasStopIndicator: hasStopIndicator,
            gapSize: gapSize,
            barHeight: barHeight)
            .onAppear {
                apply(newValue: progress)
            }
            .onChange(of: progress) { newValue in
                apply(newValue: newValue)
            }
    }

    // MARK: - Helpers

    /// Updates ``displayedProgress`` either instantly or with the Material 3 spring animation,
    /// depending on the ``animated`` flag and the accessibility / low-power context.
    private func apply(newValue: Double) {
        let shouldAnimate = animated && !reduceMotion && !lowPowerModeObserver.isLowPowerModeEnabled
        guard shouldAnimate else {
            displayedProgress = newValue
            return
        }
        withAnimation(.interpolatingSpring(mass: Self.springMass,
                                           stiffness: Self.springStiffness,
                                           damping: Self.springDamping,
                                           initialVelocity: 0))
        {
            displayedProgress = newValue
        }
    }
}
