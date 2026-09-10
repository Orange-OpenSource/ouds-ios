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
@testable import OUDSComponents
import Testing

// MARK: - Canvas constants

/// Tests on the constants defined in ``CircularProgressCanvas``.
struct CircularProgressCanvasConstantsTests {

    @Test
    func `stroke width ratio constant must be 12.5% of the diameter`() {
        #expect(CircularProgressCanvasView.strokeWidthRatio == 0.125)
    }

    @Test
    func `default gap angle constant must be 14 degrees`() {
        #expect(CircularProgressCanvasView.defaultGapAngleDegrees == 14.0)
    }
}

// MARK: - Animator constants

/// Tests on the Material indeterminate animation constants defined in
/// ``CircularProgressIndicatorIndeterminateView``. Values are the ones actually shipped by
/// Material Web, Material Components Android and Flutter's `CircularProgressIndicator` (they
/// share the very same motion values).
struct CircularProgressAnimatorConstantsTests {

    // MARK: - Tooth (head / tail cycle)

    @Test
    func `tooth duration must be 1_333 seconds (Material spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.toothDuration == 1.333)
    }

    // MARK: - Base rotation

    @Test
    func `rotation duration must be 2_222 seconds (Material spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.rotationDuration == 2.222)
    }

    // MARK: - Sweep

    @Test
    func `maximum sweep must be 270 degrees (3 over 2 pi, Material spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.maxSweepDegrees == 270.0)
    }

    @Test
    func `minimum sweep must be strictly positive so the arc never fully disappears`() {
        #expect(CircularProgressIndicatorIndeterminateView.minSweepDegrees > 0.0)
    }

    @Test
    func `minimum sweep must be strictly less than maximum sweep`() {
        #expect(CircularProgressIndicatorIndeterminateView.minSweepDegrees
            < CircularProgressIndicatorIndeterminateView.maxSweepDegrees)
    }

    // MARK: - Kick

    @Test
    func `kick must be 90 degrees per tooth (Material spec)`() {
        #expect(CircularProgressIndicatorIndeterminateView.kickDegrees == 90.0)
    }

    @Test
    func `kick plus maximum sweep must total a full turn (invisible reset jump)`() {
        // The -360° jump produced when the tooth resets must be a full turn to stay invisible.
        #expect(CircularProgressIndicatorIndeterminateView.kickDegrees
            + CircularProgressIndicatorIndeterminateView.maxSweepDegrees == 360.0)
    }

    // MARK: - Static (accessibility / low power) sweep

    @Test
    func `static sweep used when animations are disabled must be 70 percent`() {
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep == 0.7)
    }

    @Test
    func `static sweep must be within [0, 1]`() {
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep >= 0.0)
        #expect(CircularProgressIndicatorIndeterminateView.staticSweep <= 1.0)
    }
}
