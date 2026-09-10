import OUDSSwiftUI
import SwiftUI

struct ContentView: View {

    private let theme = OrangeTheme()

    var body: some View {
        OUDSThemeableView(theme: theme) {
            HomeScreen()
        }
    }
}

#Preview {
    ContentView()
        .orangePreview()
}
