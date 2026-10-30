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
