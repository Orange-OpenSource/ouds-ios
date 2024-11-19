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

    /// This function tests all dimension tokens in the `OrangeTheme` with both the `light` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures snapshots. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllSpacesOrangeThemeLight() {
        // Create an instance of the page with a forced OrangeTheme and light color scheme
        let spacePage = SpaceTokenPage(forceTo: OrangeTheme(), colorScheme: .light, horizontalSizeClass: .compact, verticalSizeClass: .regular)

        // Testing for different types of spacing for light mode
        testScaledSpaces(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testFixedSpacing(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInline(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInlineWithIcon(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInlineWithArrow(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInset(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingStack(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testGapInline(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
        testGapStack(using: spacePage, theme: OrangeTheme(), interfaceStyle: .light, colorScheme: .light)
    }

    // MARK: - Orange Theme Dark Mode Space Tests

    /// This function tests all dimension tokens in the `OrangeTheme` with both the  `dark` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures snapshots. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllSpacesOrangeThemeDark() {
        // Create an instance of the page with a forced OrangeTheme and dark color scheme
        let spacePage = SpaceTokenPage(forceTo: OrangeTheme(), colorScheme: .dark, horizontalSizeClass: .compact, verticalSizeClass: .regular)

        // Testing for different types of spacing for dark mode
        testScaledSpaces(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testFixedSpacing(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInline(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInlineWithIcon(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInlineWithArrow(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInset(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingStack(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testGapInline(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testGapStack(using: spacePage, theme: OrangeTheme(), interfaceStyle: .dark, colorScheme: .dark)
    }

    // MARK: - Inverse Theme Light Mode Space Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with both the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space type, theme, and color scheme.
    @MainActor func testAllSpaceInverseThemeLight() {
        // Create an instance of the page with a forced InverseTheme and light color scheme
        let spacePage = SpaceTokenPage(forceTo: InverseTheme(), colorScheme: .light, horizontalSizeClass: .compact, verticalSizeClass: .regular)

        // Testing for different types of spacing for light mode
        testScaledSpaces(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testFixedSpacing(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInline(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInlineWithIcon(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInlineWithArrow(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingInset(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testPaddingStack(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testGapInline(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
        testGapStack(using: spacePage, theme: InverseTheme(), interfaceStyle: .light, colorScheme: .light)
    }

    // MARK: - Inverse Theme Dark Mode Space Tests

    /// This function tests all dimensions tokens in the `InverseTheme` with both the `dark` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space type, theme, and color scheme.
    @MainActor func testAllSpaceInverseThemeDark() {
        // Create an instance of the page with a forced InverseTheme and light color scheme
        let spacePage = SpaceTokenPage(forceTo: InverseTheme(), colorScheme: .light, horizontalSizeClass: .compact, verticalSizeClass: .regular)

        // Testing for different types of spacing for dark mode
        testScaledSpaces(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testFixedSpacing(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInline(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInlineWithIcon(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInlineWithArrow(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingInset(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testPaddingStack(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testGapInline(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
        testGapStack(using: spacePage, theme: InverseTheme(), interfaceStyle: .dark, colorScheme: .dark)
    }

    // MARK: - Helper Functions

    /// Tests all scaled `Scaled` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testScaledSpaces(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.Scaled
        for scaled in NamedSpace.Scaled.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustration(for: scaled)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(scaled.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding fixed `Fixed` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testFixedSpacing(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInline
        for fixed in NamedSpace.Fixed.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Gap.inline(fixed.token(from: theme)), name: fixed.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(fixed.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding inline `PaddingInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testPaddingInline(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInline
        for paddingInline in NamedSpace.PaddingInline.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.inline(paddingInline.token(from: OrangeTheme())), name: paddingInline.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInline.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding inline with icon `PaddingInlineWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testPaddingInlineWithIcon(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInlineWithIcon
        for paddingInlineWithIcon in NamedSpace.PaddingInlineWithIcon.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(
                for: Padding.inlineWithIcon(paddingInlineWithIcon.token(from: theme)),
                name: paddingInlineWithIcon.rawValue,
                additionalAsset: (icon: Image(decorative: "ic_token"), horizontalPadding: 1))
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInlineWithIcon.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding inline with arrow `PaddingInlineWithArrow`  with arrow spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testPaddingInlineWithArrow(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        /// Iterate through all background color cases defined in NamedSpace.PaddingInlineWithArrow
        for paddingInlineWithArrow in NamedSpace.PaddingInlineWithArrow.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(
                for: Padding.inlineWithArrow(paddingInlineWithArrow.token(from: theme)),
                name: paddingInlineWithArrow.rawValue,
                additionalAsset: (icon: Image(decorative: "ic_vector"), horizontalPadding: 5))
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInlineWithArrow.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding inset `PaddingInset` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testPaddingInset(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInset
        for paddingInset in NamedSpace.PaddingInset.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.inset(paddingInset.token(from: theme)), name: paddingInset.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingInset.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all padding stack `PaddingStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testPaddingStack(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.PaddingStack
        for paddingStack in NamedSpace.PaddingStack.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Padding.stack(paddingStack.token(from: theme)), name: paddingStack.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(paddingStack.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all gap inline `GapInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testGapInline(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.GapInline
        for gapInline in NamedSpace.GapInline.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Gap.inline(gapInline.token(from: OrangeTheme())), name: gapInline.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(gapInline.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }

    /// Tests all gap inline `GapStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - spacePage: The page instance containing the token spaces to be tested.
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    ///   - colorScheme: The color scheme (light or dark) to be used for testing
    @MainActor private func testGapStack(using spacePage: SpaceTokenPage, theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle, colorScheme: ColorScheme) {
        // Iterate through all background color cases defined in NamedSpace.GapInline
        for gapStack in NamedSpace.GapStack.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = spacePage.illustation(for: Gap.stack(gapStack.token(from: OrangeTheme())), name: gapStack.rawValue)
                .background(theme.colorBgPrimary.color(for: colorScheme))

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let snapshotName = "\(theme.name)_\(gapStack.rawValue)_\(interfaceStyle == .light ? "Light" : "Dark")"

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: snapshotName)
        }
    }
}
// swiftlint:enable required_deinit
