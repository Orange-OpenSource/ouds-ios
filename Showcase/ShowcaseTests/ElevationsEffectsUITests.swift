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

import OUDS_Showcase
import OUDSComponents
import OUDSThemesOrange
import OUDSThemesSosh
import OUDSThemesInverse
import SwiftUI
import XCTest

/// Class to make UI tests on elevations effects using the
/// [swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing) library.
final class ElevationsEffectsUITests: XCTestCase {

    // MARK: - Tests

    func testElevationsEffects_OrangeTheme() {
        Snapshot.assert(ElevationsList().environment(\.theme, OrangeTheme()), testName: "\(#function)OrangeTheme")
    }

    func testElevationsEffects_SoshTheme() {
        Snapshot.assert(ElevationsList().environment(\.theme, SoshTheme()), testName: "\(#function)SoshTheme")
    }

    func testElevationsEffects_InverseTheme() {
        Snapshot.assert(ElevationsList().environment(\.theme, InverseTheme()), testName: "\(#function)InverseTheme")
    }
}
