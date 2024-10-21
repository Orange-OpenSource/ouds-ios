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

/// To ensure the TokensDimension are tested for UI compatibility with the reference image previously recorded.

final class OUDSTokensDimensionUITests: XCTestCase {

    // MARK: - Orange Theme Light Mode Dimension Tests

    /// Verifies that the `SizeIconDecorativeShortest` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShortest_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShortest_Light")
    }

    /// Verifies that the `SizeIconDecorativeShorter` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShorter_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShorter_Light")
    }

    /// Verifies that the `SizeIconDecorativeShort` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShort_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeShort_Light")
    }

    /// Verifies that the `SizeIconDecorativeMedium` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeMedium_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeMedium_Light")
    }

    /// Verifies that the `SizeIconDecorativeTall` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTall_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTall_Light")
    }

    /// Verifies that the `SizeIconDecorativeTaller` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTaller_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTaller_Light")
    }

    /// Verifies that the `SizeIconDecorativeTalles` token from the orange theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTalles_Light() {
        let vc = SizingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSizing_SizeIconDecorativeTalles_Light")
    }

    // MARK: - Inverse Theme Light Mode Dimension Tests

    /// Verifies that the `SizeIconDecorativeShortest` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShortest_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShortest_Light")
    }

    /// Verifies that the `SizeIconDecorativeShorter` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShorter_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShorter_Light")
    }

    /// Verifies that the `SizeIconDecorativeShort` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShort_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeShort_Light")
    }

    /// Verifies that the `SizeIconDecorativeMedium` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeMedium_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeMedium_Light")
    }

    /// Verifies that the `SizeIconDecorativeTall` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTall_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTall_Light")
    }

    /// Verifies that the `SizeIconDecorativeTaller` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTaller_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTaller_Light")
    }

    /// Verifies that the `SizeIconDecorativeTalles` token from the inverse theme's `Sizing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTalles_Light() {
        let vc = SizingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSizing_SizeIconDecorativeTalles_Light")
    }

    // MARK: - Orange Theme Light Mode Dimension Tests

    /// Verifies that the `SpaceScaledNone` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledNone_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledNone_Light")
    }

    /// Verifies that the `SpaceScaledSmash` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledSmash_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledSmash_Light")
    }

    /// Verifies that the `SpaceScaledShortest` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShortest_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShortest_Light")
    }

    /// Verifies that the `SpaceScaledShorter` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShorter_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShorter_Light")
    }

    /// Verifies that the `SpaceScaledShort` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShort_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledShort_Light")
    }

    /// Verifies that the `SpaceScaledMedium` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledMedium_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledMedium_Light")
    }

    /// Verifies that the `SpaceScaledTall` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTall_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTall_Light")
    }

    /// Verifies that the `SpaceScaledTaller` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTaller_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTaller_Light")
    }

    /// Verifies that the `SpaceScaledTallest` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTallest_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledTallest_Light")
    }

    /// Verifies that the `SpaceScaledSpacious` token from the orange theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledSpacious_Light() {
        let vc = SpacingTokenPage().environment(\.theme, OrangeTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_OrangeTheme_SectionSpacing_SpaceScaledSpacious_Light")
    }

    // MARK: - Inverse Theme Light Mode Dimension Tests

    /// Verifies that the `SpaceScaledNone` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledNone_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledNone_Light")
    }

    /// Verifies that the `SpaceScaledSmash` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledSmash_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledSmash_Light")
    }

    /// Verifies that the `SpaceScaledShortest` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShortest_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShortest_Light")
    }

    /// Verifies that the `SpaceScaledShorter` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShorter_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShorter_Light")
    }

    /// Verifies that the `SpaceScaledShort` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShort_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledShort_Light")
    }

    /// Verifies that the `SpaceScaledMedium` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledMedium_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledMedium_Light")
    }

    /// Verifies that the `SpaceScaledTall` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTall_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTall_Light")
    }

    /// Verifies that the `SpaceScaledTaller` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTaller_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTaller_Light")
    }

    /// Verifies that the `SpaceScaledTallest` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTallest_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledTallest_Light")
    }

    /// Verifies that the `SpaceScaledSpacious` token from the inverse theme's `Spacing` section matches the saved reference image in light mode using snapshot testing.
    func testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledSpacious_Light() {
        let vc = SpacingTokenPage().environment(\.theme, InverseTheme())
        assertSnapshot(of: vc, as: .image, named: "OrangeTheme/testDimensionToken_InverseTheme_SectionSpacing_SpaceScaledSpacious_Light")
    }
}

// swiftlint:enable required_deinit
