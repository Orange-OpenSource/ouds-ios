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

/// Tests on the public API and internal configuration of ``OUDSLinearProgressIndicator``.
struct OUDSLinearProgressIndicatorTests {

    // MARK: - Determinate configuration defaults

    @Test
    func `determinate configuration must expose the provided progress and defaults for other fields`() {
        // Mirrors the defaults applied by
        // OUDSLinearProgressIndicator.init(progress:status:track:stopIndicator:helperText:gapSize:animated:).
        let configuration = LinearProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default,
                                                                 animated: true)
        #expect(configuration.progress == 0.5)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.stopIndicator == false)
        #expect(configuration.helperText == nil)
        #expect(configuration.gapSize == .default)
        #expect(configuration.animated == true)
        #expect(configuration.isIndeterminate == false)
    }

    // MARK: - Indeterminate configuration defaults

    @Test
    func `indeterminate configuration must have nil progress and defaults for other fields`() {
        // Mirrors the defaults applied by
        // OUDSLinearProgressIndicator.init(status:track:helperText:gapSize:).
        let configuration = LinearProgressIndicatorConfiguration(progress: nil,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default,
                                                                 animated: true)
        #expect(configuration.progress == nil)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.stopIndicator == false)
        #expect(configuration.helperText == nil)
        #expect(configuration.gapSize == .default)
        #expect(configuration.animated == true)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - M3 invariants in indeterminate mode

    @Test
    func `indeterminate mode must force stopIndicator to false even if caller passes true`() {
        // The internal configuration must sanitize invalid Material 3 combinations.
        let configuration = LinearProgressIndicatorConfiguration(progress: nil,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: true, // caller lies
                                                                 helperText: nil,
                                                                 gapSize: .default,
                                                                 animated: true)
        #expect(configuration.stopIndicator == false)
    }

    @Test
    func `indeterminate mode must force animated to true even if caller passes false`() {
        // The Material 3 animation is intrinsic to the indeterminate mode. Motion is only
        // disabled at render time by accessibility Reduce Motion / Low Power Mode.
        let configuration = LinearProgressIndicatorConfiguration(progress: nil,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default,
                                                                 animated: false) // caller lies
        #expect(configuration.animated == true)
    }

    // MARK: - Progress clamping

    @Test
    func `negative progress values must be clamped to 0`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: -0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default)
        #expect(configuration.progress == 0.0)
    }

    @Test
    func `progress values greater than 1 must be clamped to 1`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: 1.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default)
        #expect(configuration.progress == 1.0)
    }

    @Test
    func `progress values inside [0, 1] must be preserved`() {
        for value in [0.0, 0.25, 0.5, 0.75, 1.0] {
            let configuration = LinearProgressIndicatorConfiguration(progress: value,
                                                                     status: .neutral,
                                                                     track: true,
                                                                     stopIndicator: false,
                                                                     helperText: nil,
                                                                     gapSize: .default)
            #expect(configuration.progress == value)
        }
    }

    @Test
    func `nil progress must stay nil (indeterminate)`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: nil,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default)
        #expect(configuration.progress == nil)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - Optional parameters propagation (determinate)

    @Test
    func `helperText must be preserved as-is in the configuration`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: "Uploading...",
                                                                 gapSize: .default)
        #expect(configuration.helperText == "Uploading...")
    }

    @Test
    func `stopIndicator flag must be preserved in determinate mode`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: true,
                                                                 helperText: nil,
                                                                 gapSize: .default)
        #expect(configuration.stopIndicator == true)
    }

    @Test
    func `animated flag defaults to true when not provided (determinate)`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default)
        #expect(configuration.animated == true)
    }

    @Test
    func `animated flag can be disabled explicitly in determinate mode`() {
        let configuration = LinearProgressIndicatorConfiguration(progress: 0.5,
                                                                 status: .neutral,
                                                                 track: true,
                                                                 stopIndicator: false,
                                                                 helperText: nil,
                                                                 gapSize: .default,
                                                                 animated: false)
        #expect(configuration.animated == false)
    }

    // MARK: - Public enums exhaustiveness

    @Test
    func `every declared status is a distinct case`() {
        let allStatuses: [OUDSLinearProgressIndicator.Status] = [
            .neutral, .accent, .positive, .info, .warning, .negative,
        ]
        #expect(Set(allStatuses.map { String(describing: $0) }).count == allStatuses.count)
    }

    @Test
    func `every declared gap size is a distinct case`() {
        let allGapSizes: [OUDSLinearProgressIndicator.GapSize] = [.default, .small]
        #expect(Set(allGapSizes.map { String(describing: $0) }).count == allGapSizes.count)
    }
}
