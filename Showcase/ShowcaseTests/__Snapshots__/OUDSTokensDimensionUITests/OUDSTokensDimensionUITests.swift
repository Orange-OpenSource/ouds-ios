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

import OUDS
import OUDSComponents
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// To ensure the TokensDimension are tested for UI compatibility with the reference image recorded

final class OUDSTokensDimensionUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Dimension Tests

    /// This function tests all dimensions tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedSizing`,`NamedSpacing` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the dimension, theme, and color scheme.
    @MainActor func testAllDimensionsOrangeThemeLight() {
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let sizingPage = SizingTokenPage(forceTo: OrangeTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let spacingPage = SpacingTokenPage(forceTo: OrangeTheme(), colorScheme: .light)

        /// Section Sizing
        for sizing in NamedSizing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = sizingPage.illustration(for: sizing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.light)), named: snapshotName)
        }

        /// Section Spacing
        for spacing in NamedSpacing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = spacingPage.illustration(for: spacing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(spacing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.light)), named: snapshotName)
        }
    }

    // MARK: - Orange Theme Dark Mode Border Tests

    /// This function tests all dimensions tokens in the `OrangeTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSizing`,`NamedSpacing` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the dimension, theme, and color scheme.
    @MainActor func testAllDimensionsOrangeThemeDark() {
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let sizingPage = SizingTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let spacingPage = SpacingTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        /// Section Sizing
        for sizing in NamedSizing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = sizingPage.illustration(for: sizing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }

        /// Section Spacing
        for spacing in NamedSpacing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = spacingPage.illustration(for: spacing).background(OrangeTheme().colorBackgroundPrimary.color(for: .dark))

            /// Encapsuler l'élément dans un UIHostingController pour le test de capture d'écran
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(spacing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Light Mode Border Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedSizing`,`NamedSpacing` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the dimension, theme, and color scheme.
    @MainActor func testAllDimensionsInverseThemeLight() {
        /// Create an instance of the page with a forced InverseTheme and light color scheme
        let sizingPage = SizingTokenPage(forceTo: InverseTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced InverseTheme and light color scheme
        let spacingPage = SpacingTokenPage(forceTo: InverseTheme(), colorScheme: .light)

        /// Section Sizing
        for sizing in NamedSizing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = sizingPage.illustration(for: sizing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)
            isRecording = true
            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.light)), named: snapshotName)
        }

        /// Section Spacing
        for spacing in NamedSpacing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            // let illustration = spacingPage.illustration(for: spacing)
            let illustration = spacingPage.illustration(for: spacing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)
            isRecording = true
            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(spacing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(), named: snapshotName)
        }
    }

    // MARK: - Inverse Theme Dark Mode Border Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with the `dark` color scheme.
    /// It iterates through all `NamedSizing`,`NamedSpacing` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the dimension, theme, and color scheme.
    @MainActor func testAllDimensionsInverseThemeDark() {
        /// Create an instance of the page with a forced InverseTheme and light color scheme
        let sizingPage = SizingTokenPage(forceTo: InverseTheme(), colorScheme: .dark)
        /// Create an instance of the page with a forced InverseTheme and light color scheme
        let spacingPage = SpacingTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        /// Section Sizing
        for sizing in NamedSizing.allCases {
            // Use the `illustration(for:)` method to test a single illustration
            // let illustration = sizingPage.illustration(for: sizing)
            let illustration = sizingPage.illustration(for: sizing).background(InverseTheme().colorBackgroundPrimary.color(for: .dark))

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(sizing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }

        /// Section Spacing
        for spacing in NamedSpacing.allCases {
            /// Use the `illustration(for:)` method to test a single illustration
            let illustration = spacingPage.illustration(for: spacing)

            /// Encapsulate the element in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Capture the snapshot of the illustration with the correct theme and color scheme
            let snapshotName = "\(spacing.rawValue)"
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: UIUserInterfaceStyle.dark)), named: snapshotName)
        }
    }
}

// swiftlint:enable required_deinit
