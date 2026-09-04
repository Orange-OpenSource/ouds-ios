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

    // MARK: - View constants

    @Test func `default size constant must be 48 points`() {
        #expect(OUDSCircularProgressIndicator.defaultSize == 48.0)
    }

    // MARK: - Determinate configuration defaults

    @Test @MainActor
    func `determinate configuration must expose the provided progress and defaults for other fields`() {
        // Mirrors the defaults applied by OUDSCircularProgressIndicator.init(progress:status:track:gapSize:).
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: OUDSCircularProgressIndicator.defaultSize)
        #expect(configuration.progress == 0.5)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.gapSize == .default)
        #expect(configuration.size == OUDSCircularProgressIndicator.defaultSize)
        #expect(configuration.isIndeterminate == false)
    }

    // MARK: - Indeterminate configuration defaults

    @Test @MainActor
    func `indeterminate configuration must have nil progress and defaults for other fields`() {
        // Mirrors the defaults applied by OUDSCircularProgressIndicator.init(status:track:gapSize:).
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: OUDSCircularProgressIndicator.defaultSize)
        #expect(configuration.progress == nil)
        #expect(configuration.status == .neutral)
        #expect(configuration.track == true)
        #expect(configuration.gapSize == .default)
        #expect(configuration.size == OUDSCircularProgressIndicator.defaultSize)

        #expect(configuration.isIndeterminate)
    }

    // MARK: - Progress clamping

    @Test
    func `negative progress values must be clamped to 0`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: -0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44)
        #expect(configuration.progress == 0.0)
    }

    @Test
    func `progress values greater than 1 must be clamped to 1`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 1.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44)
        #expect(configuration.progress == 1.0)
    }

    @Test
    func `progress values inside [0, 1] must be preserved`() {
        for value in [0.0, 0.25, 0.5, 0.75, 1.0] {
            let configuration = CircularProgressIndicatorConfiguration(progress: value,
                                                                       status: .neutral,
                                                                       track: true,
                                                                       gapSize: .default,
                                                                       size: 44)
            #expect(configuration.progress == value)
        }
    }

    @Test
    func `nil progress must stay nil (indeterminate)`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: nil,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44)
        #expect(configuration.progress == nil)
        #expect(configuration.isIndeterminate)
    }

    // MARK: - Animated flag

    @Test
    func `animated flag must default to true`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44)
        #expect(configuration.animated)
    }

    @Test
    func `animated flag must be preserved when set to false`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   animated: false)
        #expect(configuration.animated == false)
    }

    // MARK: - Helper text (accessibility label)

    @Test
    func `helper text must default to nil`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44)
        #expect(configuration.helperTextType == nil)
        #expect(configuration.accessibilityLabel == nil)
    }

    @Test
    func `description helper text must be exposed as the accessibility label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .description("Uploading"))
        #expect(configuration.helperTextType == .description("Uploading"))
        #expect(configuration.accessibilityLabel == "Uploading")
    }

    @Test
    func `percent helper text description must be exposed as the accessibility label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .percent("of 100 MB"))
        #expect(configuration.accessibilityLabel == "of 100 MB")
    }

    @Test
    func `percent helper text without description must expose a nil accessibility label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .percent())
        #expect(configuration.accessibilityLabel == nil)
    }

    // MARK: - Accessibility configuration

    @Test
    func `accessibility name alone must be exposed as accessibility label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   accessibilityName: "download bar")
        #expect(configuration.accessibilityLabel == "download bar")
    }

    @Test
    func `accessibility state alone must be exposed as accessibility label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   accessibilityState: "downloading")
        #expect(configuration.accessibilityLabel == "downloading")
    }

    @Test
    func `accessibility name and state must be combined with dot separator`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   accessibilityName: "download bar",
                                                                   accessibilityState: "downloading")
        #expect(configuration.accessibilityLabel == "download bar. downloading")
    }

    @Test
    func `accessibility name and helper text must be combined with dot separator`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .description("Uploading"),
                                                                   accessibilityName: "download bar")
        #expect(configuration.accessibilityLabel == "download bar. Uploading")
    }

    @Test
    func `accessibility name state and helper text must be combined with dot separator`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .description("Uploading"),
                                                                   accessibilityName: "download bar",
                                                                   accessibilityState: "downloading")
        #expect(configuration.accessibilityLabel == "download bar. downloading. Uploading")
    }

    @Test
    func `empty accessibility name must not be included in label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   accessibilityName: "",
                                                                   accessibilityState: "downloading")
        #expect(configuration.accessibilityLabel == "downloading")
    }

    @Test
    func `nil accessibility must not affect label`() {
        let configuration = CircularProgressIndicatorConfiguration(progress: 0.5,
                                                                   status: .neutral,
                                                                   track: true,
                                                                   gapSize: .default,
                                                                   size: 44,
                                                                   helperText: .description("Uploading"))
        #expect(configuration.accessibilityLabel == "Uploading")
    }
}
