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

/// Internal view rendering the **determinate** variant of ``OUDSCircularProgressIndicator``.
///
/// Handles two SwiftUI animations driven by the ``animated`` flag:
/// - a **reveal** animation on first display (from `0` to the target `progress`);
/// - an **update** animation whenever the target `progress` changes.
///
/// Both animations use the **same critically-damped spring**, matching Android Material 3's
/// `ProgressAnimationSpec` (`SpringSpec(dampingRatio: NoBouncy, stiffness: VeryLow)` on
/// Android / Compose). The perceived duration is around 1.5 seconds and the fill remains
/// visible during the whole animation — even without a track — which is the main visual
/// difference vs. a short `.easeOut` curve.
///
/// Animations are disabled and the target value is applied instantly when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true` or Low Power Mode is enabled
/// (via ``OUDSLowPowerModeObserver``), mirroring the behavior of the indeterminate animator.
struct CircularProgressIndicatorDeterminateView: View {

    // MARK: - Android Material 3 spring animation constants

    /*
     These values reproduce Android Material 3's `ProgressAnimationSpec`:

       SpringSpec(dampingRatio: DampingRatioNoBouncy, stiffness: StiffnessVeryLow)

        - Compose `StiffnessVeryLow` = 50f
        - `DampingRatioNoBouncy` = 1.0 (critical damping, no bounce)
        - Critical damping formula: damping = 2 * sqrt(mass * stiffness) with mass = 1
        => 2 * sqrt(50) ≈ 14.1421356
     */

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
    let gapSize: OUDSProgressIndicatorGapSize
    let size: CGFloat

    /// Current displayed progress. Starts at `0` so that the first `onAppear` can animate towards
    /// the target value when ``animated`` is `true`.
    @State private var displayedProgress: Double = 0

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    // MARK: - Body

    var body: some View {
        closure_end_indentation
        CircularProgressCanvasView(
            foregroundColor: foregroundColor,
            trackColor: trackColor,
            strokeCap: strokeCap,
            sweep: CGFloat(displayedProgress),
            rotation: -90,
            gapSize: gapSize,
            size: size)
        .onAppear {
            apply(newValue: progress)
        }
        #if os(watchOS) || os(visionOS)
        // swiftlint:disable closure_end_indentation
        .onChange(of: progress) { _, newValue in
            apply(newValue: newValue)
        }
        #else
        .onChange(of: progress) { newValue in
            apply(newValue: newValue)
        }
        // swiftlint:enable closure_end_indentation
        #endif

    }

    // MARK: - Helpers

    /// Updates ``displayedProgress`` either instantly or with the Material 3 spring animation,
    /// depending on the ``animated`` flag and the accessibility / low-power context.
    ///
    /// The same spring is used for the reveal animation (first display) and for update animations
    /// (subsequent changes of `progress`), matching Material 3's behavior.
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
