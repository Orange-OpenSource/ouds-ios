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

// The umbrella imports to have all OUDS products
// Get more details about imports here: https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted
import OUDSSwiftUI
import SwiftUI

// MARK: - App

// The iOS app entry
@main
struct OUDS_Lime_TutorialApp: App {

    // The Orange theme for start, to instanciate once for all
    let myTheme = OrangeTheme()

    var body: some Scene {
        WindowGroup {
            // The theme must be injected in the app environment with OUDSThemeableView
            OUDSThemeableView(theme: myTheme) {
                ContentView()
            }
        }
    }
}

// MARK: - Content View

struct ContentView: View {

    @State var selectedGender: Genders = .male
    @State var identity: String = ""
    @State var email: String = ""
    @State var termsAccepted: Bool = false
    @State var selectedTopics: [Topics] = []
    @State var creatingProfile: Bool = false
    @State var switchToDarkMode: Bool = false

    // The theme injected through OUDSThemeableView
    @Environment(\.theme) var theme
    @Environment(\.openURL) var openUrl

    // OUDS public components are prefixed by "OUDS"
    // Tokens are exposed through the theme environment object
    // OUDS provides also view modifiers
    var body: some View {
        ScrollView {
            Group {
                VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
                    Text("Create your own theme")
                        .headingXLarge(theme)
                        .foregroundColor(theme.colors.contentBrandPrimary)

                    OUDSHeading(text: "Let's customize the Lime theme together!", size: .small)

                    HStack {
                        OUDSTag(label: "Welcome")
                        OUDSTag(label: "Lime")
                        OUDSTag(label: "Tutorial")
                    }
                }.padding(.bottom, theme.spaces.fixedLarge)

                Group {
                    VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
                        OUDSRadioPicker(selection: $selectedGender,
                                        radios: genderRadioValues(),
                                        placement: .horizontal(false))

                        let identityDeleteAction = OUDSTextInput.TrailingAction(image: .init(asset: Image(systemName: "trash")), actionHint: "Delete") { identity = "" }
                        OUDSTextInput(label: "Identity", text: $identity, placeholder: "Firstname and lastname", trailingAction: identityDeleteAction)

                        OUDSTextInput(label: "Email", text: $email,
                                      placeholder: "Email address",
                                      suffix: ".com",
                                      leadingImage: .init(asset: Image(systemName: "envelope")),
                                      helperText: "The email will be automatically completed with @orange.com")

                        OUDSChipPicker(selections: $selectedTopics, chips: topicsChipsValues())

                        OUDSLabel(text: "\(selectedTopics.count) topic(s) selected", size: .small)
                            .foregroundColor(Color(hexadecimalCode: ColorRawTokens.functionalDodgerBlue800)!)

                        OUDSHorizontalDivider(color: .brandPrimary)

                        OUDSCheckboxItem("I accept the terms of use", isOn: $termsAccepted)
                    }
                    .padding(.horizontal, theme.spaces.fixedSmall)
                }
                .background(theme.colors.bgTertiary)
                .border(style: theme.borders.styleDefault,
                        width: theme.borders.widthThin,
                        radius: theme.borders.radiusMedium,
                        color: theme.colors.actionEnabled)
                .shadow(theme.elevations.emphasized)
                .padding(.bottom, theme.spaces.fixedLarge)

            }.padding(.horizontal, theme.spaces.fixedSmall)

            OUDSColoredSurface(color: theme.colorModes.onStatusInfoEmphasized) {
                VStack(alignment: .center, spacing: theme.spaces.fixedXsmall) {
                    OUDSLink(text: "Go to the website", indicator: .next) {
                        openUrl.callAsFunction(URL(string: "https://ios.unified-design-system.orange.com")!)
                    }

                    OUDSButton(text: "Create my profile",
                               appearance: .strong,
                               style: creatingProfile ? .loading(progress: nil) : .default)
                    {
                        creatingProfile = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            creatingProfile = false
                        }
                    }.disabled(!termsAccepted)

                    OUDSSwitchItem("Switch to dark mode",
                                   isOn: $switchToDarkMode)
                        .padding(.horizontal, theme.spaces.fixed3xlarge)
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, theme.spaces.fixedLarge)
            }
        }.preferredColorScheme(switchToDarkMode ? .dark : .light)
    }

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
