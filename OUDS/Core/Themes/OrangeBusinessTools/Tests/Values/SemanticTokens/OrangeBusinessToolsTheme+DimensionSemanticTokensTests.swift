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

import OUDSThemesContract
import OUDSThemesOrangeBusinessTools
import Testing

/// Checks if the closed semantic tokens of dimensions, as defined in the Orange Business Tools theme, have expected values and relationships
/// between them.
struct DimensionSemanticTokensValuesTests {

    private var theme: OUDSTheme

    init() {
        theme = OrangeBusinessToolsTheme()
    }

    @Test func dimensionsAreSmallerOneByOne() throws {
        #expect(theme.dimensions._none < theme.dimensions._12xsmall)
        #expect(theme.dimensions._12xsmall < theme.dimensions._11xsmall)
        #expect(theme.dimensions._11xsmall < theme.dimensions._10xsmall)
        #expect(theme.dimensions._10xsmall < theme.dimensions._9xsmall)
        #expect(theme.dimensions._9xsmall < theme.dimensions._8xsmall)
        #expect(theme.dimensions._8xsmall < theme.dimensions._7xsmall)
        #expect(theme.dimensions._7xsmall <= theme.dimensions._6xsmall)
        #expect(theme.dimensions._6xsmall < theme.dimensions._5xsmall)
        #expect(theme.dimensions._5xsmall < theme.dimensions._4xsmall)
        #expect(theme.dimensions._4xsmall < theme.dimensions._3xsmall)
        #expect(theme.dimensions._3xsmall < theme.dimensions._2xsmall)
        #expect(theme.dimensions._2xsmall < theme.dimensions._xsmall)
        #expect(theme.dimensions._xsmall < theme.dimensions._small)
        #expect(theme.dimensions._small < theme.dimensions._medium)
        #expect(theme.dimensions._medium < theme.dimensions._large)
        #expect(theme.dimensions._large < theme.dimensions._xlarge)
        #expect(theme.dimensions._xlarge < theme.dimensions._2xlarge)
        #expect(theme.dimensions._2xlarge < theme.dimensions._3xlarge)
        #expect(theme.dimensions._3xlarge < theme.dimensions._4xlarge)
        #expect(theme.dimensions._4xlarge < theme.dimensions._5xlarge)
        #expect(theme.dimensions._5xlarge < theme.dimensions._6xlarge)
        #expect(theme.dimensions._6xlarge < theme.dimensions._7xlarge)
        #expect(theme.dimensions._7xlarge < theme.dimensions._8xlarge)
        #expect(theme.dimensions._8xlarge < theme.dimensions._9xlarge)
        #expect(theme.dimensions._9xlarge < theme.dimensions._10xlarge)
        #expect(theme.dimensions._10xlarge < theme.dimensions._11xlarge)
    }

    // NOTE: For Orange Business Tools some dimensions are not unique
    // like _7xsmall and _6xsmall
    // So no dimensionsAreAllUnique() assertions
}
