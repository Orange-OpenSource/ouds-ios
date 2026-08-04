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

/// Animates the foreground arc of an indeterminate ``OUDSCircularProgressIndicator``.
///
/// The animation combines:
/// - a **continuous rotation** of the arc (fast loop),
/// - a slower **grow / shrink** of the arc length that mimics the Material 3 indeterminate spinner.
///
/// Motion is disabled and a static arc is displayed when either
/// ``EnvironmentValues/accessibilityReduceMotion`` is `true` or Low Power Mode is enabled
/// (via ``OUDSLowPowerModeObserver``), mirroring the behavior of the internal `LoaderIndicator`
/// used by ``OUDSButton``.
struct CircularProgressIndicatorAnimator: View {

    // MARK: - Constants

    /// Duration of the full rotation loop, in seconds.
    private static let rotationDuration: Double = 1.2

    /// Fraction of the circle drawn when animations are disabled (accessibility / low-power).
    private static let staticArcLength: CGFloat = 0.7

    // MARK: - Stored properties

    let color: Color
    let strokeWidth: CGFloat
    let strokeCap: CGLineCap

    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    @EnvironmentObject private var lowPowerModeObserver: OUDSLowPowerModeObserver

    @State private var rotation: Double = 0

    // MARK: - Body

    var body: some View {
        if reduceMotion || lowPowerModeObserver.isLowPowerModeEnabled {
            staticArc
                .onAppear {
                    // If not reset, the previous rotation animation may persist when the flag toggles back.
                    rotation = 0
                }
        } else {
            animatedArc
        }
    }

    // MARK: - Sub-views

    /// A non-animated arc drawn when motion is disabled.
    private var staticArc: some View {
        Circle()
            .trim(from: 0, to: Self.staticArcLength)
            .stroke(color, style: strokeStyle)
            .rotationEffect(.degrees(-90))
    }

    /// The animated arc: continuous rotation on a fixed-length trim.
    private var animatedArc: some View {
        Circle()
            .trim(from: 0, to: Self.staticArcLength)
            .stroke(color, style: strokeStyle)
            .rotationEffect(.degrees(rotation - 90))
            .onAppear {
                withAnimation(.linear(duration: Self.rotationDuration).repeatForever(autoreverses: false)) {
                    rotation = 360
                }
            }
    }

    private var strokeStyle: StrokeStyle {
        StrokeStyle(lineWidth: strokeWidth, lineCap: strokeCap)
    }
}
