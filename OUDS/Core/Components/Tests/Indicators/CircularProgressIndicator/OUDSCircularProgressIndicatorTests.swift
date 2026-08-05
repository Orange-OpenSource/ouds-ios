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

@testable import OUDSComponents
import Testing

/// Tests on the public API and internal configuration of ``OUDSCircularProgressIndicator``.
struct OUDSCircularProgressIndicatorTests {

    // MARK: - Determinate configuration defaults

    @Test
    func `determinate configuration must expose the provided progress and defaults for other fields`() {
        // Mirrors the defaults applied by OUDSCircularProgressIndicator.init(progress:status:track:gapSize:).
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == 0.5)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.gapSize == .default)
        #expect(configuration.isIndeterminate == false)
    }

    // MARK: - Indeterminate configuration defaults

    @Test
    func `indeterminate configuration must have nil progress and defaults for other fields`() {
        // Mirrors the defaults applied by OUDSCircularProgressIndicator.init(status:track:gapSize:).
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == nil)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.gapSize == .default)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - Progress clamping

    @Test
    func `negative progress values must be clamped to 0`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: -0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == 0.0)
    }

    @Test
    func `progress values greater than 1 must be clamped to 1`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 1.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == 1.0)
    }

    @Test
    func `progress values inside [0, 1] must be preserved`() {
        for value in [0.0, 0.25, 0.5, 0.75, 1.0] {
            let configuration = CircularProgressIndicatorConfiguration(progress: value,
                                                                       status: .neutral,
                                                                       track: true,
                                                                       gapSize: .default)
            #expect(configuration.progress == value)
        }
    }

    @Test
    func `nil progress must stay nil (indeterminate)`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == nil)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - Public enums exhaustiveness

    @Test
    func `every declared status is a distinct case`() {
        let allStatuses: [OUDSCircularProgressIndicator.Status] = [
            .neutral, .accent, .positive, .info, .warning, .negative,
        ]
        #expect(Set(allStatuses.map { String(describing: $0) }).count == allStatuses.count)
    }

    @Test
    func `every declared gap size is a distinct case`() {
        let allGapSizes: [OUDSCircularProgressIndicator.GapSize] = [.default, .small]
        #expect(Set(allGapSizes.map { String(describing: $0) }).count == allGapSizes.count)
    }

    // MARK: - Default appearance

    @Test
    func `configuration appearance must default to standard`() {
        // The default value of `appearance` is `.standard`, so existing call sites that do not
        // specify it (e.g. the standard OUDSCircularProgressIndicator) keep the previous behavior.
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.appearance == .standard)
    }
}
