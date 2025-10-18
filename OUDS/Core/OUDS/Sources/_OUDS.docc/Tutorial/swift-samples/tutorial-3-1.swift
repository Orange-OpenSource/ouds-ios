import OUDS
import OUDSComponents
import OUDSThemesOrange
import SwiftUI

// MARK: - App

@main
struct OUDSTutorialSandboxApp: App {
    
    let myTheme = OrangeTheme()
    
    var body: some Scene {
        WindowGroup {
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}

// MARK: - Tutorial Content View

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            Text("Hello OUDS!")
        }
    }
