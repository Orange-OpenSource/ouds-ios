import OUDSSwiftUI
import SwiftUI

@main
struct OUDSTutorialSandboxApp: App {

    let myTheme = OrangeTheme(tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true, hasRoundedAlertMessages: true, hasRoundedListItems: true))

    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}
