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

/// To ensure the TokensSpace are tested for UI compatibility with the reference image recorded

final class OUDSTokensSpaceUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Space Tests

    /// This function tests all dimensions tokens in the `OrangeTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space, theme, and color scheme.
    @MainActor func testAllSpacesOrangeTheme() {
        /// Create an instance of the page with a forced OrangeTheme and light color scheme
        let lightSpacePage = SpaceTokenPage(forceTo: OrangeTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced OrangeTheme and dark color scheme
        let darkSpacePage = SpaceTokenPage(forceTo: OrangeTheme(), colorScheme: .dark)

        /// Testing for different types of spacing for light mode
        testScaledSpaces(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testFixedSpacing(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testPaddingInline(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testPaddingInlineWithIcon(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testPaddingInlineWithArrow(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testPaddingInset(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testPaddingStack(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testGapInline(using: lightSpacePage, theme: OrangeTheme(), mode: .light)
        testGapStack(using: lightSpacePage, theme: OrangeTheme(), mode: .light)

        /// Testing for different types of spacing for dark mode
        testScaledSpaces(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testFixedSpacing(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testPaddingInline(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testPaddingInlineWithIcon(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testPaddingInlineWithArrow(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testPaddingInset(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testPaddingStack(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testGapInline(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
        testGapStack(using: darkSpacePage, theme: OrangeTheme(), mode: .dark)
    }

    // MARK: - Inverse Theme Light Mode Space Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space, theme, and color scheme.
    @MainActor func testAllSpaceInverseTheme() {
        /// Create an instance of the page with a forced InverseTheme and light color scheme
        let lightSpacePage = SpaceTokenPage(forceTo: InverseTheme(), colorScheme: .light)
        /// Create an instance of the page with a forced InverseTheme and dark color scheme
        let darkSpacePage = SpaceTokenPage(forceTo: InverseTheme(), colorScheme: .dark)

        /// Testing for different types of spacing for light mode
        testScaledSpaces(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testFixedSpacing(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testPaddingInline(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testPaddingInlineWithIcon(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testPaddingInlineWithArrow(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testPaddingInset(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testPaddingStack(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testGapInline(using: lightSpacePage, theme: InverseTheme(), mode: .light)
        testGapStack(using: lightSpacePage, theme: InverseTheme(), mode: .light)

        /// Testing for different types of spacing for dark mode
        testScaledSpaces(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testFixedSpacing(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testPaddingInline(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testPaddingInlineWithIcon(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testPaddingInlineWithArrow(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testPaddingInset(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testPaddingStack(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testGapInline(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
        testGapStack(using: darkSpacePage, theme: InverseTheme(), mode: .dark)
    }

    // MARK: - Helper Functions

    /// Tests all scaled `Scaled` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testScaledSpaces(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.Scaled
        for scaled in NamedSpace.Scaled.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustration(for: scaled)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(scaled.rawValue)_\(mode == .light ? "Light" : "Dark")"
        }
    }

    /// Tests all padding fixed `Fixed` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testFixedSpacing(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInline
        for fixed in NamedSpace.Fixed.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.inline(fixed.token(from: theme)), name: fixed.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(fixed.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all padding inline `PaddingInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testPaddingInline(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInline
        for paddingInline in NamedSpace.PaddingInline.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.inline(paddingInline.token(from: OrangeTheme())), name: paddingInline.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInline.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all padding inline with icon `PaddingInlineWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testPaddingInlineWithIcon(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInlineWithIcon
        for paddingInlineWithIcon in NamedSpace.PaddingInlineWithIcon.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(
                for: Padding.inlineWithIcon(paddingInlineWithIcon.token(from: theme)),
                name: paddingInlineWithIcon.rawValue,
                additionalAsset: (icon: Image(decorative: "ic_token"), horizontalPadding: 1))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInlineWithIcon.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all padding inline with arrow `PaddingInlineWithArrow`  with arrow spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testPaddingInlineWithArrow(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInlineWithArrow
        for paddingInlineWithArrow in NamedSpace.PaddingInlineWithArrow.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(
                for: Padding.inlineWithArrow(paddingInlineWithArrow.token(from: theme)),
                name: paddingInlineWithArrow.rawValue,
                additionalAsset: (icon: Image(decorative: "ic_vector"), horizontalPadding: 5))

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInlineWithArrow.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all padding inset `PaddingInset` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testPaddingInset(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInset
        for paddingInset in NamedSpace.PaddingInset.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.inset(paddingInset.token(from: theme)), name: paddingInset.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInset.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all padding stack `PaddingStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testPaddingStack(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingStack
        for paddingStack in NamedSpace.PaddingStack.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.stack(paddingStack.token(from: theme)), name: paddingStack.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingStack.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all gap inline `GapInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testGapInline(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.GapInline
        for gapInline in NamedSpace.GapInline.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Gap.inline(gapInline.token(from: OrangeTheme())), name: gapInline.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(gapInline.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }

    /// Tests all gap inline `GapStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - mode: Specifies light or dark mode for the test.
    @MainActor private func testGapStack(using spacePage: SpaceTokenPage, theme: OUDSTheme, mode: UIUserInterfaceStyle) {
        /// Iterate through all background color cases defined in NamedSpace.GapInline
        for gapStack in NamedSpace.GapInline.allCases {

            /// Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Gap.stack(gapStack.token(from: OrangeTheme())), name: gapStack.rawValue)

            /// Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            /// Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(gapStack.rawValue)_\(mode == .light ? "Light" : "Dark")"

            /// Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: mode)), named: snapshotName)
        }
    }
}
// swiftlint:enable required_deinit
