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
import OUDSThemesOrange
import OUDSTokensSemantic
import XCTest

// swiftlint:disable required_deinit

/// Tests some helper functions defined in extensions of `OUDSTheme` in the *OUDS* module, related to grids tokens.
/// Cannot be tested there because no theme exists at that level., but here the ``OrangeTheme`` can be used.
final class TestGridSemanticTokenHelper: XCTestCase {

    private let someTheme: OUDSTheme = OrangeTheme()

    func testGridMinWith() throws {
        XCTAssertEqual(someTheme.grids.gridExtraCompactMinWidth, someTheme.gridMinWidth(for: .extraCompact))
        XCTAssertEqual(someTheme.grids.gridCompactMinWidth, someTheme.gridMinWidth(for: .compact))
        XCTAssertEqual(someTheme.grids.gridRegularMinWidth, someTheme.gridMinWidth(for: .regular))
    }

    func testGridMaxWith() throws {
        XCTAssertEqual(someTheme.grids.gridExtraCompactMaxWidth, someTheme.gridMaxWidth(for: .extraCompact))
        XCTAssertEqual(someTheme.grids.gridCompactMaxWidth, someTheme.gridMaxWidth(for: .compact))
        XCTAssertEqual(someTheme.grids.gridRegularMaxWidth, someTheme.gridMaxWidth(for: .regular))
    }

    func testGridMargin() throws {
        XCTAssertEqual(someTheme.grids.gridExtraCompactMargin, someTheme.gridMargin(for: .extraCompact))
        XCTAssertEqual(someTheme.grids.gridCompactMargin, someTheme.gridMargin(for: .compact))
        XCTAssertEqual(someTheme.grids.gridRegularMargin, someTheme.gridMargin(for: .regular))
    }

    func testGridColumnGap() throws {
        XCTAssertEqual(someTheme.grids.gridExtraCompactColumnGap, someTheme.gridColumnGap(for: .extraCompact))
        XCTAssertEqual(someTheme.grids.gridCompactColumnGap, someTheme.gridColumnGap(for: .compact))
        XCTAssertEqual(someTheme.grids.gridRegularColumnGap, someTheme.gridColumnGap(for: .regular))
    }
}

// swiftlint:enable required_deinit
