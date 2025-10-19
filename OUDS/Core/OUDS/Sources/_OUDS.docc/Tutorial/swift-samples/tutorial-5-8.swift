import OUDS
import OUDSComponents
import OUDSFoundations
import OUDSThemesOrange
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

@main
struct OUDSTutorialSandboxApp: App {

    let myTheme = OrangeTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}
