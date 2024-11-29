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
import OUDSThemesInverse
import OUDSThemesOrange
import OUDSTokensSemantic
import SnapshotTesting
import SwiftUI
import XCTest

// swiftlint:disable required_deinit

/// Tests the UI rendering of each **space token** using reference images
final class OUDSTokensSpaceUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Space Tests

    /// This function tests all dimension tokens in the `OrangeTheme` with both the `light` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. Each snapshot is saved with a name that indicates the spacing type, theme, and color scheme.
    @MainActor func testAllSpacesOrangeThemeLight() {
        // Testing for different types of spacing for light mode
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testScaledSpaces(theme: theme, interfaceStyle: interfaceStyle)
        testFixedSpacing(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInline(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInset(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStack(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInline(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testGapStack(theme: theme, interfaceStyle: interfaceStyle)
        testGapStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Orange Theme Dark Mode Space Tests

    /// This function tests all space tokens in the `OrangeTheme` with both the  `dark` color schemes.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space type, theme, and interfaceStyle (i.e color scheme).
    @MainActor func testAllSpacesOrangeThemeDark() {
        // Testing for different types of spacing for dark mode
        let theme = OrangeTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testScaledSpaces(theme: theme, interfaceStyle: interfaceStyle)
        testFixedSpacing(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInline(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInset(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStack(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInline(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testGapStack(theme: theme, interfaceStyle: interfaceStyle)
        testGapStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Inverse Theme Light Mode Space Tests

    /// This function tests all space tokens in the `InverseTheme` with both the `light` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space type, theme, and interfaceStyle (i.e color scheme).
    @MainActor func testAllSpaceInverseThemeLight() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.light
        testScaledSpaces(theme: theme, interfaceStyle: interfaceStyle)
        testFixedSpacing(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInline(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInset(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStack(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInline(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testGapStack(theme: theme, interfaceStyle: interfaceStyle)
        testGapStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Inverse Theme Dark Mode Space Tests

    /// This function tests all space tokens in the `InverseTheme` with both the `dark` color scheme.
    /// It iterates through all `NamedSize` cases, rendering each illustration in a `UIHostingController`
    /// and captures a snapshot. The snapshot is saved with a name indicating the space type, theme, and interfaceStyle (i.e color scheme).
    @MainActor func testAllSpaceInverseThemeDark() {
        let theme = InverseTheme()
        let interfaceStyle = UIUserInterfaceStyle.dark
        testScaledSpaces(theme: theme, interfaceStyle: interfaceStyle)
        testFixedSpacing(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInline(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingInset(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStack(theme: theme, interfaceStyle: interfaceStyle)
        testPaddingStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInline(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithIcon(theme: theme, interfaceStyle: interfaceStyle)
        testGapInlineWithArrow(theme: theme, interfaceStyle: interfaceStyle)
        testGapStack(theme: theme, interfaceStyle: interfaceStyle)
        testGapStackWithIcon(theme: theme, interfaceStyle: interfaceStyle)
    }

    // MARK: - Helper Functions

    /// Tests all scaled `Scaled` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testScaledSpaces(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.Scaled
        for namedToken in NamedSpace.Scaled.allCases {
            // Generate the illustration for the specified space token
            let illustration = OUDSThemeableView(theme: theme) {
                ScaledSpacesCategory.Illustration(for: namedToken)
                    .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding fixed `Fixed` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testFixedSpacing(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInline
        for namedToken in NamedSpace.Fixed.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    FixedSpacesCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding inline `PaddingInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingInline(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedSpace.PaddingInline
        for namedToken in NamedSpace.PaddingInline.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingInlineCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding inline with icon `PaddingInlineWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingInlineWithIcon(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.PaddingInlineWithIcon
        for namedToken in NamedSpace.PaddingInlineWithIcon.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingInlineWithIconCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding inline with arrow `PaddingInlineWithArrow`  with arrow spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingInlineWithArrow(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        /// Iterate through all background color cases defined in NamedSpace.PaddingInlineWithArrow
        for namedToken in NamedSpace.PaddingInlineWithArrow.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingInlineWithArrowCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding inset `PaddingInset` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingInset(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.PaddingInset
        for namedToken in NamedSpace.PaddingInset.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingInsetCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding stack `PaddingStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingStack(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.PaddingStack
        for namedToken in NamedSpace.PaddingStack.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingStackCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all padding stack `PaddingStackWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testPaddingStackWithIcon(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedSpace.PaddingStack
        for namedToken in NamedSpace.PaddingStackWithIcon.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    PaddingStackWithIconCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all gap inline `GapInline` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testGapInline(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.GapInline
        for namedToken in NamedSpace.GapInline.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    GapInlineCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all `GapInlineWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testGapInlineWithIcon(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.GapInline
        for namedToken in NamedSpace.GapInlineWithIcon.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    GapInlineWithIconCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all `GapInlineWithArrow` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testGapInlineWithArrow(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.GapInline
        for namedToken in NamedSpace.GapInlineWithArrow.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    GapInlineWithArrowCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all `GapStack` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testGapStack(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {

        // Iterate through all background color cases defined in NamedSpace.GapInline
        for namedToken in NamedSpace.GapStack.allCases {
            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    GapStackCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }

    /// Tests all gap inline `GapStackWithIcon` spaces by capturing their snapshots.
    /// - Parameters:
    ///   - theme: Theme used for rendering tokens (e.g., OrangeTheme or InverseTheme).
    ///   - interfaceStyle: The user interface style (light or dark) for which to test the colors.
    @MainActor private func testGapStackWithIcon(theme: OUDSTheme, interfaceStyle: UIUserInterfaceStyle) {
        // Iterate through all background color cases defined in NamedSpace.GapInline
        for namedToken in NamedSpace.GapStackWithIcon.allCases {

            // Generate the illustration for the specified space token using the spacePage instance
            let illustration = OUDSThemeableView(theme: theme) {
                SpaceTokenEntry(namedSpaceToken: namedToken) { token in
                    GapStackWithIconCategory.Illustration(token: token)
                }
                .background(theme.colorBgPrimary.color(for: interfaceStyle == .light ? .light : .dark))
            }

            // Encapsulate the generated illustration in a UIHostingController for snapshot testing
            let hostingVC = UIHostingController(rootView: illustration)

            // Create a unique snapshot name based on the current mode (light or dark) and the color's raw value
            let testName = "test_\(theme.name)Theme_\(interfaceStyle == .light ? "Light" : "Dark")"
            let name = namedToken.rawValue

            // Capture the snapshot of the illustration with the correct user interface style and save it with the snapshot name
            assertSnapshot(of: hostingVC, as: .image(traits: UITraitCollection(userInterfaceStyle: interfaceStyle)), named: name, testName: testName)
        }
    }
}
// swiftlint:enable required_deinit
