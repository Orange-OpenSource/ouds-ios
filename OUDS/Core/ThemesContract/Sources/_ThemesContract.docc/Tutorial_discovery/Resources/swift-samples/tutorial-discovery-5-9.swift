import OUDSSwiftUI
import SwiftUI

@main
struct OUDSTutorialSandboxApp: App {

    let myTheme = OrangeTheme(fontFamily: "Menlo", tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true, hasRoundedAlertMessages: true))

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}
