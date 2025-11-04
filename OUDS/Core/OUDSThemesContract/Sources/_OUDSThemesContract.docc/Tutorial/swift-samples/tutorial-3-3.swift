import OUDSSwiftUI
import SwiftUI

struct ContentView: View {

    @State var selectedGender: Genders = .male
    @State var termsAccepted: Bool = false

    var body: some View {
        VStack {
            OUDSRadioPicker(selection: $selectedGender,
                            radios: genderRadioValues(),
                            placement: .horizontal(false))

            OUDSCheckboxItem(isOn: $termsAccepted, label: "I accept the terms of use")
        }
    }

    // MARK: - Utils

    enum Genders: String, Hashable {
        case male
        case female
        case nonBinary
    }

    func genderRadioValues() -> [OUDSRadioPickerData<Genders>] {
        [
            OUDSRadioPickerData(tag: Genders.male, label: "Mr"),
            OUDSRadioPickerData(tag: Genders.female, label: "Ms"),
            OUDSRadioPickerData(tag: Genders.nonBinary, label: "Other"),
        ]
    }
}
