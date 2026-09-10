import OUDSSwiftUI
import SwiftUI

struct Navigation: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            OUDSLink(text: "Link", indicator: .next) {}
            OUDSLink(text: "Link", indicator: .previous) {}
            OUDSLink(text: "Read OUDS Documentation") {
                UIApplication.shared.open(URL(string: "https://unified-design-system.orange.com")!)
            }
        }
    }
}

#Preview {
    ScrollView {
        Navigation().orangePreview()
    }
}
