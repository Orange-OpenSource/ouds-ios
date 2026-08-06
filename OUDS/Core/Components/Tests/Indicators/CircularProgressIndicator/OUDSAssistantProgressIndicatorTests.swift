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

/// Tests on the public API and internal configuration of ``OUDSAssistantCircularProgressIndicator``,
/// and on the AI color cycling helper of ``CircularProgressIndicatorAnimatorView``.
struct OUDSAssistantProgressIndicatorTests {

    // MARK: - Assistant configuration defaults

    @Test
    func `assistant configuration must be indeterminate with assistant appearance and defaults`() {
        // Mirrors the defaults applied by OUDSAssistantCircularProgressIndicator.init(gapSize:).
        // The assistant variant never displays a track, so `track` is expected to be `false`
        // regardless of the argument passed to the configuration initializer.
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: false,
                                                                   gapSize: .default,
                                                                   animated: true,
                                                                   appearance: .assistant)
        #expect(configuration.progress == nil)
        #expect(configuration.isIndeterminate)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == false)
        #expect(configuration.gapSize == .default)
        #expect(configuration.animated == true)
        #expect(configuration.appearance == .assistant)
    }

    @Test
    func `assistant configuration must force track to false even when initialized with true`() {
        // Safety-net invariant: the configuration must ignore `track: true` when the appearance is
        // `.assistant`. This protects against a future internal call site that would try to enable
        // the track for the assistant variant.
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   animated: true,
                                                                   appearance: .assistant)
        #expect(configuration.track == false)
    }

    @Test
    func `standard configuration must keep the track flag value passed at init`() {
        // Symmetric check: the invariant only applies to the assistant appearance. The standard
        // appearance must keep whichever value the caller passes.
        let withTrack = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                               status: .neutral,
                                                               track: true,
                                                               gapSize: .default,
                                                               animated: true,
                                                               appearance: .standard)
        #expect(withTrack.track == true)

        let withoutTrack = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                  status: .neutral,
                                                                  track: false,
                                                                  gapSize: .default,
                                                                  animated: true,
                                                                  appearance: .standard)
        #expect(withoutTrack.track == false)
    }

    @Test
    func `assistant configuration must force gap size to default even when initialized with small`() {
        // Safety-net invariant: the configuration must ignore `gapSize: .small` when the
        // appearance is `.assistant`. This protects against a future internal call site that
        // would try to use a compact rendering for the assistant variant.
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: false,
                                                                   gapSize: .small,
                                                                   animated: true,
                                                                   appearance: .assistant)
        #expect(configuration.gapSize == .default)
    }

    @Test
    func `standard configuration must keep the gap size value passed at init`() {
        // Symmetric check: the invariant only applies to the assistant appearance. The standard
        // appearance must keep whichever gap size the caller passes.
        let withDefault = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 gapSize: .default,
                                                                 animated: true,
                                                                 appearance: .standard)
        #expect(withDefault.gapSize == .default)

        let withSmall = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                               status: .neutral,
                                                               track: true,
                                                               gapSize: .small,
                                                               animated: true,
                                                               appearance: .standard)
        #expect(withSmall.gapSize == .small)
    }

    // MARK: - Appearance enum

    @Test
    func `standard and assistant appearances must be distinct cases`() {
        let allAppearances: [CircularProgressIndicatorConfiguration.Appearance] = [.standard, .assistant]
        #expect(Set(allAppearances.map { String(describing: $0) }).count == allAppearances.count)
    }

    // MARK: - Color cycling helper

    @Test
    func `colorIndex must be 0 at t = 0`() {
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 0.0, cycle: 3.0, count: 4) == 0)
    }

    @Test
    func `colorIndex must stay at 0 during the first cycle`() {
        for time in stride(from: 0.0, to: 3.0, by: 0.5) {
            #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: time, cycle: 3.0, count: 4) == 0)
        }
    }

    @Test
    func `colorIndex must advance by one at every cycle boundary`() {
        // At t = 3s, 6s, 9s the index should be 1, 2, 3 (still within the 4-color cycle).
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 3.0, cycle: 3.0, count: 4) == 1)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 6.0, cycle: 3.0, count: 4) == 2)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 9.0, cycle: 3.0, count: 4) == 3)
    }

    @Test
    func `colorIndex must wrap back to 0 after count cycles`() {
        // With 4 colors and a 3s cycle, at t = 12s the index must wrap back to 0.
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 12.0, cycle: 3.0, count: 4) == 0)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 15.0, cycle: 3.0, count: 4) == 1)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 24.0, cycle: 3.0, count: 4) == 0)
    }

    @Test
    func `colorIndex must be 0 for degenerate inputs`() {
        // Guard clauses: cycle <= 0 or count <= 0 must return 0.
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 10.0, cycle: 0.0, count: 4) == 0)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 10.0, cycle: 3.0, count: 0) == 0)
        #expect(CircularProgressIndicatorIndeterminateView.colorIndex(at: 10.0, cycle: -1.0, count: 4) == 0)
    }

    // MARK: - Color cycle period constant

    @Test
    func `color cycle period must equal a full sweep respiration`() {
        // 2 * progressHalfCycle = 2 * 1.5s = 3s.
        #expect(CircularProgressIndicatorIndeterminateView.colorCyclePeriod == 2.0 * CircularProgressIndicatorIndeterminateView.progressHalfCycle)
        #expect(CircularProgressIndicatorIndeterminateView.colorCyclePeriod == 3.0)
    }

    @Test
    func `cross-fade duration must be strictly positive and shorter than the cycle`() {
        #expect(CircularProgressIndicatorIndeterminateView.crossFadeDuration > 0.0)
        #expect(CircularProgressIndicatorIndeterminateView.crossFadeDuration < CircularProgressIndicatorIndeterminateView.colorCyclePeriod)
    }
}
