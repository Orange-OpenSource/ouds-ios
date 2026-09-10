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

import OUDSSwiftUI
import SwiftUI

// MARK: - Lime Theme

nonisolated class LimeTheme: OrangeTheme, @unchecked Sendable {

    init() {
        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        let colors = LimeThemeColorProvider()
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: colors,
            colorModes: LimeThemeColorModeProvider(colors: colors),
            elevations: LimeThemeElevationProvider(),
            fonts: LimeThemeFontProvider(),
            spaces: LimeThemeSpaceProvider(),
            tuning: Self.tuning)

        registerFonts()
    }

    // MARK: - Tuning

    private static let tuning: Tuning = .init(hasRoundedButtons: true,
                                              hasRoundedTextInputs: true,
                                              hasRoundedAlertMessages: true,
                                              hasRoundedProgressIndicators: true,
                                              hasRoundedListItems: true)

    // MARK: - Fonts

    private static var fontsAlreadyRegistered = false

    private func registerFonts() {
        guard !LimeTheme.fontsAlreadyRegistered else { return }

        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }

        LimeTheme.fontsAlreadyRegistered = true
    }
}
