import OUDSSwiftUI
import SwiftUI

struct Control: View {

    @State private var text: String = ""
    @State private var isOn: Bool = true
    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            OUDSCheckboxItem("Checkbox item", isOn: $isOn)
            OUDSRadioItem("Radio button item", isOn: $isOn)
            OUDSSwitchItem("Switch item", isOn: $isOn)
            OUDSTextInput(label: "Text input", text: $text)
            OUDSPasswordInput(label: "Password input", password: $text)
        }
    }
}

#Preview {
    Control().orangePreview()
}
