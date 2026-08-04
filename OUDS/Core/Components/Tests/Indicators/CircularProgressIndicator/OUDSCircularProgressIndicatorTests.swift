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

    // MARK: - Determinate initializer

    @Test
    func `Determinate initializer defaults to neutral status, track = true and default gap size`() {
        let indicator = OUDSCircularProgressIndicator(progress: 0.5)
        // Rebuild the same configuration to compare defaults.
        let expected = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                              status: .neutral,
                                                              track: true,
                                                              gapSize: .default)
        #expect(indicator.configuration == expected)
    }

    // MARK: - Indeterminate initializer

    @Test
    func `Indeterminate initializer defaults to neutral status, track = true and default gap size, with nil progress`() {
        let indicator = OUDSCircularProgressIndicator()
        let expected = CircularProgressIndicatorConfiguration(progress: nil,
                                                              status: .neutral,
                                                              track: true,
                                                              gapSize: .default)
        #expect(indicator.configuration == expected)
        #expect(indicator.configuration.isIndeterminate)
    }

    // MARK: - Progress clamping

    @Test
    func `Negative progress values must be clamped to 0`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: -0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == 0.0)
    }

    @Test
    func `Progress values greater than 1 must be clamped to 1`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 1.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == 1.0)
    }

    @Test
    func `Progress values inside [0, 1] must be preserved`() {
        for value in [0.0, 0.25, 0.5, 0.75, 1.0] {
            let configuration = CircularProgressIndicatorConfiguration(progress: value,
                                                                       status: .neutral,
                                                                       track: true,
                                                                       gapSize: .default)
            #expect(configuration.progress == value)
        }
    }

    @Test
    func `Nil progress must stay nil (indeterminate)`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default)
        #expect(configuration.progress == nil)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - Public enums exhaustiveness

    @Test
    func `Every declared status is a distinct case`() {
        let allStatuses: [OUDSCircularProgressIndicator.Status] = [
            .neutral, .accent, .positive, .info, .warning, .negative,
        ]
        #expect(Set(allStatuses.map { String(describing: $0) }).count == allStatuses.count)
    }

    @Test
    func `Every declared gap size is a distinct case`() {
        let allGapSizes: [OUDSCircularProgressIndicator.GapSize] = [.default, .small]
        #expect(Set(allGapSizes.map { String(describing: $0) }).count == allGapSizes.count)
    }
}
