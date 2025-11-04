import OUDSSwiftUI
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
