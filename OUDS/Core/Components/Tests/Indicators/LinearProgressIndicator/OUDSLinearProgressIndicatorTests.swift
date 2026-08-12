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

    // MARK: - Determinate configuration

    @Test
    func `determinate configuration must expose all its fields`() {
        let determinate = LinearProgressIndicatorConfiguration.Determinate(
            progress: 0.5,
            status: .accent,
            track: false,
            stopIndicator: true,
            helperText: "Uploading",
            gapSize: .small,
            animated: false)
        #expect(determinate.progress == 0.5)
        #expect(determinate.status == .accent)
        #expect(determinate.track == false)
        #expect(determinate.stopIndicator == true)
        #expect(determinate.helperText == "Uploading")
        #expect(determinate.gapSize == .small)
        #expect(determinate.animated == false)
    }

    @Test
    func `determinate defaults propagate through the configuration enum`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true))
        #expect(configuration.isIndeterminate == false)
        #expect(configuration.progress == 0.5)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.helperText == nil)
        #expect(configuration.gapSize == .default)
    }

    // MARK: - Progress clamping

    @Test
    func `negative progress values must be clamped to 0`() {
        let determinate = LinearProgressIndicatorConfiguration.Determinate(
            progress: -0.5,
            status: .neutral,
            track: true,
            stopIndicator: false,
            helperText: nil,
            gapSize: .default,
            animated: true)
        #expect(determinate.progress == 0.0)
    }

    @Test
    func `progress values greater than 1 must be clamped to 1`() {
        let determinate = LinearProgressIndicatorConfiguration.Determinate(
            progress: 1.5,
            status: .neutral,
            track: true,
            stopIndicator: false,
            helperText: nil,
            gapSize: .default,
            animated: true)
        #expect(determinate.progress == 1.0)
    }

    @Test
    func `progress values inside [0, 1] must be preserved`() {
        for value in [0.0, 0.25, 0.5, 0.75, 1.0] {
            let determinate = LinearProgressIndicatorConfiguration.Determinate(
                progress: value,
                status: .neutral,
                track: true,
                stopIndicator: false,
                helperText: nil,
                gapSize: .default,
                animated: true)
            #expect(determinate.progress == value)
        }
    }

    // MARK: - Indeterminate configuration

    @Test
    func `indeterminate configuration must expose all its fields`() {
        let indeterminate = LinearProgressIndicatorConfiguration.Indeterminate(
            status: .info,
            track: false,
            helperText: "Processing",
            gapSize: .small)
        #expect(indeterminate.status == .info)
        #expect(indeterminate.track == false)
        #expect(indeterminate.helperText == "Processing")
        #expect(indeterminate.gapSize == .small)
    }

    @Test
    func `indeterminate case of the enum must expose isIndeterminate true and progress nil`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral, track: true, helperText: nil, gapSize: .default))
        #expect(configuration.isIndeterminate)
        #expect(configuration.progress == nil)
    }
}
