struct ContentView: View {

    @State var selectedGender: Genders = .male

    var body: some View {
        OUDSRadioPicker(selection: $selectedGender,
                        radios: genderRadioValues(),
                        placement: .horizontal(false))
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
