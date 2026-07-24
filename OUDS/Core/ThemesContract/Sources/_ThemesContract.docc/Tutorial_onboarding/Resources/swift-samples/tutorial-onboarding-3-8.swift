import OUDSSwiftUI
import SwiftUI

struct ContentView: View {

    private let theme = OrangeTheme()
    @State private var selectedTab = 0

    var body: some View {
        OUDSThemeableView(theme: theme) {
            OUDSTabBar(selectedTab: $selectedTab, count: 3) {
                HomeScreen().tabItem {
                    Label("Home", image: "Home")
                }
                .tag(0)

                Text("E shop Screen").tabItem {
                    Label("E-Shop", image: "E-Shop")
                }
                .tag(1)

                Text("Contact Screen").tabItem {
                    Label("Contact", image: "Contact")
                }
                .tag(2)
            }
        }
    }
}

#Preview {
    ContentView()
        .orangePreview()
}
