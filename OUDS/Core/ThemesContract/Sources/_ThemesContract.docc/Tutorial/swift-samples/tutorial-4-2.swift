//
// Software Name: OUDS iOS
// SPDX-FileCopyrightText: Copyright (c) Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license,
// the text of which is available at https://opensource.org/license/MIT/
// or see the "LICENSE" file for more details.
//
// Authors: See CONTRIBUTORS.txt
// Software description: A SwiftUI components library with code examples for Orange Unified Design System
//

import OUDSSwiftUI
import SwiftUI

struct ContentView: View {

    @State var selectedGender: Genders = .male
    @State var termsAccepted: Bool = false
    @State var switchToDarkMode: Bool = false
    @State var creatingProfile: Bool = false
    @State var selectedTopics: [Topics] = []

    @Environment(\.openURL) var openUrl

    var body: some View {
        VStack {
            HStack {
                OUDSTag(label: "Welcome")
                OUDSTag(label: "OUDSThemesContract")
                OUDSTag(label: "Tutorial")
            }

            OUDSRadioPicker(selection: $selectedGender,
                            radios: genderRadioValues(),
                            placement: .horizontal(false))

            OUDSChipPicker(selections: $selectedTopics, chips: topicsChipsValues())

            OUDSHorizontalDivider(color: .brandPrimary)

            OUDSCheckboxItem(isOn: $termsAccepted, label: "I accept the terms of use")

            OUDSSwitchItem("Switch to dark mode", isOn: $switchToDarkMode)

            OUDSLink(text: "Go to the website", indicator: .next) {
                openUrl.callAsFunction(URL(string: "https://ios.unified-design-system.orange.com")!)
            }

            OUDSButton(text: "Create my profile",
                       appearance: .strong,
                       style: creatingProfile ? .loading : .default)
            {
                creatingProfile = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    creatingProfile = false
                }
            }.disabled(!termsAccepted)

        }.preferredColorScheme(switchToDarkMode ? .dark : .light)
    }

    // MARK: - Utils

    enum Topics: String, Hashable {
        case food
        case music
        case gardening
        case sport
    }

    func topicsChipsValues() -> [OUDSChipPickerData<Topics>] {
        [
            OUDSChipPickerData(tag: Topics.food, layout: .text(text: "Food")),
            OUDSChipPickerData(tag: Topics.music, layout: .text(text: "Music")),
            OUDSChipPickerData(tag: Topics.gardening, layout: .text(text: "Gardening")),
            OUDSChipPickerData(tag: Topics.sport, layout: .text(text: "Sport")),
        ]
    }

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
