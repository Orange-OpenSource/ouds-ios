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

// swiftlint:disable type_body_length

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
            helperText: .description("Uploading", alignment: .end),
            gapSize: .small,
            animated: false)
        #expect(determinate.progress == 0.5)
        #expect(determinate.status == .accent)
        #expect(determinate.track == false)
        #expect(determinate.stopIndicator == true)
        #expect(determinate.helperText == .description("Uploading", alignment: .end))
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
        #expect(configuration.accessibilityLabel == nil)
        #expect(configuration.gapSize == .default)
    }

    // MARK: - Determinate helper text (accessibility label)

    @Test
    func `determinate description helper text must be exposed as the accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: .description("Uploading"),
                  gapSize: .default,
                  animated: true))
        #expect(configuration.accessibilityLabel == "Uploading")
    }

    @Test
    func `determinate percent helper text description must be exposed as the accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: .percent(description: "of 100 MB", alignment: .start),
                  gapSize: .default,
                  animated: true))
        #expect(configuration.accessibilityLabel == "of 100 MB")
    }

    @Test
    func `determinate percent helper text without description must expose a nil accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: .percent(),
                  gapSize: .default,
                  animated: true))
        #expect(configuration.accessibilityLabel == nil)
    }

    @Test
    func `determinate nil helper text must expose a nil accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true))
        #expect(configuration.accessibilityLabel == nil)
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
            helperTextAlignment: .end,
            gapSize: .small)
        #expect(indeterminate.status == .info)
        #expect(indeterminate.track == false)
        #expect(indeterminate.helperText == "Processing")
        #expect(indeterminate.helperTextAlignment == .end)
        #expect(indeterminate.gapSize == .small)
    }

    @Test
    func `indeterminate case of the enum must expose isIndeterminate true and progress nil`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral, track: true, helperText: nil, helperTextAlignment: .center, gapSize: .default))
        #expect(configuration.isIndeterminate)
        #expect(configuration.progress == nil)
    }

    @Test
    func `indeterminate helper text must be exposed as the accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral, track: true, helperText: "Loading", helperTextAlignment: .center, gapSize: .default))
        #expect(configuration.accessibilityLabel == "Loading")
    }

    @Test
    func `indeterminate nil helper text must expose a nil accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral, track: true, helperText: nil, helperTextAlignment: .center, gapSize: .default))
        #expect(configuration.accessibilityLabel == nil)
    }

    // MARK: - Accessibility configuration (determinate)

    @Test
    func `determinate accessibility name alone must be exposed as accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true,
                  accessibilityName: "download bar"))
        #expect(configuration.accessibilityLabel == "download bar")
    }

    @Test
    func `determinate accessibility state alone must be exposed as accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true,
                  accessibilityState: "downloading"))
        #expect(configuration.accessibilityLabel == "downloading")
    }

    @Test
    func `determinate accessibility name and state must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true,
                  accessibilityName: "download bar",
                  accessibilityState: "downloading"))
        #expect(configuration.accessibilityLabel == "download bar. downloading")
    }

    @Test
    func `determinate accessibility name and helper text must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: .description("Uploading"),
                  gapSize: .default,
                  animated: true,
                  accessibilityName: "download bar"))
        #expect(configuration.accessibilityLabel == "download bar. Uploading")
    }

    @Test
    func `determinate accessibility name state and helper text must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: .description("Uploading"),
                  gapSize: .default,
                  animated: true,
                  accessibilityName: "download bar",
                  accessibilityState: "downloading"))
        #expect(configuration.accessibilityLabel == "download bar. downloading. Uploading")
    }

    @Test
    func `determinate empty accessibility name must not be included in label`() {
        let configuration = LinearProgressIndicatorConfiguration.determinate(
            .init(progress: 0.5,
                  status: .neutral,
                  track: true,
                  stopIndicator: false,
                  helperText: nil,
                  gapSize: .default,
                  animated: true,
                  accessibilityName: "",
                  accessibilityState: "downloading"))
        #expect(configuration.accessibilityLabel == "downloading")
    }

    // MARK: - Accessibility configuration (indeterminate)

    @Test
    func `indeterminate accessibility name alone must be exposed as accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral,
                  track: true,
                  helperText: nil,
                  helperTextAlignment: .center,
                  gapSize: .default,
                  accessibilityName: "loading"))
        #expect(configuration.accessibilityLabel == "loading")
    }

    @Test
    func `indeterminate accessibility state alone must be exposed as accessibility label`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral,
                  track: true,
                  helperText: nil,
                  helperTextAlignment: .center,
                  gapSize: .default,
                  accessibilityState: "processing"))
        #expect(configuration.accessibilityLabel == "processing")
    }

    @Test
    func `indeterminate accessibility name and state must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral,
                  track: true,
                  helperText: nil,
                  helperTextAlignment: .center,
                  gapSize: .default,
                  accessibilityName: "loading",
                  accessibilityState: "processing"))
        #expect(configuration.accessibilityLabel == "loading. processing")
    }

    @Test
    func `indeterminate accessibility name and helper text must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral,
                  track: true,
                  helperText: "Please wait",
                  helperTextAlignment: .center,
                  gapSize: .default,
                  accessibilityName: "loading"))
        #expect(configuration.accessibilityLabel == "loading. Please wait")
    }

    @Test
    func `indeterminate accessibility name state and helper text must be combined with dot separator`() {
        let configuration = LinearProgressIndicatorConfiguration.indeterminate(
            .init(status: .neutral,
                  track: true,
                  helperText: "Please wait",
                  helperTextAlignment: .center,
                  gapSize: .default,
                  accessibilityName: "loading",
                  accessibilityState: "processing"))
        #expect(configuration.accessibilityLabel == "loading. processing. Please wait")
    }
}

// swiftlint:enable type_body_length
