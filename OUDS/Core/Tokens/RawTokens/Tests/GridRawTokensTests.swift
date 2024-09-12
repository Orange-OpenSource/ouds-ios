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

import XCTest
import OUDSTokensRaw

/// The aim of this tests class is to look for regressions in **grid raw tokens**.
/// Because these values will be at least generated through an external tool, is it not mandatory and relevant to test each token values.
/// Indeed, each future generation of Swift code may break theses tests because there are new values.
/// However, in the semantics of **grid raw tokens**, there will be some unchanged things like relationships between tokens.
/// Thus this tests class just checks if such relationships are still here whatever the values at the end.
final class GridRawTokensTests: XCTestCase {

    // MARK: - Primitive token - Grid - Design Width

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth200() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth200)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth300() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth300)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth400() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth400)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth500() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth500)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth600() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth600)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth700() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth700)
    }

    func testGridRawTokenGridDesignWidth100LessThanGridDesignWidth800() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth100, GridRawTokens.gridWidth800)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth300() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth300)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth400() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth400)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth500() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth500)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth600() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth600)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth700() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth700)
    }

    func testGridRawTokenGridDesignWidth200LessThanGridDesignWidth800() throws {
        XCTAssertLessThan(GridRawTokens.gridWidth200, GridRawTokens.gridWidth800)
    }

    // MARK: - Primitive token - Grid - Min width

    func testGridRawTokenGridMinWidthIOSExtraCompactLessThanGridMinWidthIOSCompact() throws {
        XCTAssertLessThan(GridRawTokens.gridMinWidthExtraCompact, GridRawTokens.gridMinWidthCompact)
    }

    func testGridRawTokenGridMinWidthIOSExtraCompactLessThanGridMinWidthIOSRegular() throws {
        XCTAssertLessThan(GridRawTokens.gridMinWidthExtraCompact, GridRawTokens.gridMinWidthRegular)
    }

    func testGridRawTokenGridMinWidthIOSCompactLessThanGridMinWidthIOSRegular() throws {
        XCTAssertLessThan(GridRawTokens.gridMinWidthCompact, GridRawTokens.gridMinWidthRegular)
    }

    // MARK: - Primitive token - Grid - Max width

    func testGridRawTokenGridMaxWidthIOSExtraCompactLessThanGridMaxWidthIOSCompact() throws {
        XCTAssertLessThan(GridRawTokens.gridMaxWidthExtraCompact, GridRawTokens.gridMaxWidthCompact)
    }

    func testGridRawTokenGridMaxWidthIOSExtraCompactLessThanGridMaxWidthIOSRegular() throws {
        XCTAssertLessThan(GridRawTokens.gridMaxWidthExtraCompact, GridRawTokens.gridMaxWidthRegular)
    }

    func testGridRawTokenGridMaxWidthIOSCompactLessThanGridMaxWidthIOSRegular() throws {
        XCTAssertLessThan(GridRawTokens.gridMaxWidthCompact, GridRawTokens.gridMaxWidthRegular)
    }

    // MARK: - Primitive token - Grid - Margin

    func testGridRawTokenGridMargin100LessThanGridMargin300() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin100, GridRawTokens.gridMargin300)
    }

    func testGridRawTokenGridMargin300LessThanGridMargin400() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin300, GridRawTokens.gridMargin400)
    }

    func testGridRawTokenGridMargin400LessThanGridMargin500() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin400, GridRawTokens.gridMargin500)
    }

    func testGridRawTokenGridMargin500LessThanGridMargin600() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin500, GridRawTokens.gridMargin600)
    }

    func testGridRawTokenGridMargin600LessThanGridMargin700() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin600, GridRawTokens.gridMargin700)
    }

    func testGridRawTokenGridMargin700LessThanGridMargin900() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin700, GridRawTokens.gridMargin900)
    }

    func testGridRawTokenGridMargin900LessThanGridMargin1000() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin900, GridRawTokens.gridMargin1000)
    }

    func testGridRawTokenGridMargin1000LessThanGridMargin1100() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1000, GridRawTokens.gridMargin1100)
    }

    func testGridRawTokenGridMargin1100LessThanGridMargin1700() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1100, GridRawTokens.gridMargin1700)
    }

    func testGridRawTokenGridMargin1700LessThanGridMargin2500() throws {
        XCTAssertLessThan(GridRawTokens.gridMargin1700, GridRawTokens.gridMargin2500)
    }

    // MARK: - Primitive token - Grid - Column gap

    func testGridRawTokenGridColumnGap10LessThanGridColumnGap100() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap10, GridRawTokens.gridColumnGap100)
    }

    func testGridRawTokenGridColumnGap100LessThanGridColumnGap200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap100, GridRawTokens.gridColumnGap200)
    }

    func testGridRawTokenGridColumnGap200LessThanGridColumnGap300() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap200, GridRawTokens.gridColumnGap300)
    }

    func testGridRawTokenGridColumnGap300LessThanGridColumnGap500() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap300, GridRawTokens.gridColumnGap600)
    }

    func testGridRawTokenGridColumnGap500LessThanGridColumnGap700() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnGap600, GridRawTokens.gridColumnGap700)
    }

    // MARK: - Primitive token - Grid - Column count

    func testGridRawTokenGridColumnCount100LessThanGridColumnCount200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount100, GridRawTokens.gridColumnCount200)
    }

    func testGridRawTokenGridColumnCount200LessThanGridColumnCount400() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount200, GridRawTokens.gridColumnCount400)
    }

    func testGridRawTokenGridColumnCount400LessThanGridColumnCount600() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount400, GridRawTokens.gridColumnCount600)
    }

    func testGridRawTokenGridColumnCount600LessThanGridColumnCount800() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount600, GridRawTokens.gridColumnCount800)
    }

    func testGridRawTokenGridColumnCount800LessThanGridColumnCount1000() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount800, GridRawTokens.gridColumnCount1000)
    }

    func testGridRawTokenGridColumnCount1000LessThanGridColumnCount1200() throws {
        XCTAssertLessThan(GridRawTokens.gridColumnCount1000, GridRawTokens.gridColumnCount1200)
    }
}
