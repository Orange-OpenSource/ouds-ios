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

// MARK: - App

@main
struct OUDSTutorialSandboxApp: App {

    let myTheme = OrangeTheme(borders: MyOwnProviderOfBorderTokens(),
                              colors: MyOwnProviderOfColorTokens(),
                              fontFamily: "Menlo",
                              tuning: Tuning(hasRoundedButtons: true, hasRoundedTextInputs: true))

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

    @State var selectedGender: Genders = .male
    @State var identity: String = ""
    @State var email: String = ""
    @State var termsAccepted: Bool = false
    @State var selectedTopics: [Topics] = []
    @State var creatingProfile: Bool = false
    @State var switchToDarkMode: Bool = false

    @Environment(\.openURL) var openUrl
    @Environment(\.theme) var theme

    var body: some View {
        ScrollView {
            Group {
                VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
                    Text("OUDS Tutorial for new comers")
                        .headingXLarge(theme)
                        .oudsForegroundColor(theme.colors.contentBrandPrimary)

                    Text("Let's play with components, themes and tokens!")
                        .headingSmall(theme)

                    HStack {
                        OUDSTag(label: "Welcome")
                        OUDSTag(label: "OUDS")
                        OUDSTag(label: "Tutorial")
                    }
                }.padding(.bottom, theme.spaces.fixedLarge)

                Group {
                    VStack(alignment: .leading, spacing: theme.spaces.fixedMedium) {
                        OUDSRadioPicker(selection: $selectedGender,
                                        radios: genderRadioValues(),
                                        placement: .horizontal(false))

                        let identityDeleteAction = OUDSTextInput.TrailingAction(icon: Image(systemName: "trash"), actionHint: "Delete") { identity = "" }
                        OUDSTextInput(label: "Identity", text: $identity, placeholder: "Firstname and lastname", trailingAction: identityDeleteAction)

                        OUDSTextInput(label: "Email", text: $email,
                                      placeholder: "Email address",
                                      suffix: ".com",
                                      leadingIcon: Image(systemName: "envelope"),
                                      helperText: "The email will be automatically completed with @orange.com")

                        OUDSChipPicker(selections: $selectedTopics, chips: topicsChipsValues())

                        Text("\(selectedTopics.count) topic(s) selected")
                            .labelDefaultSmall(theme)
                            .foregroundColor(Color(hexadecimalCode: ColorRawTokens.functionalDodgerBlue800)!)

                        OUDSHorizontalDivider(color: .brandPrimary)

                        OUDSCheckboxItem(isOn: $termsAccepted, label: "I accept the terms of use")
                    }
                    .padding(.horizontal, theme.spaces.fixedSmall)
                }
                .oudsBackground(theme.colors.bgTertiary)
                .oudsBorder(style: theme.borders.styleDefault,
                            width: theme.borders.widthThin,
                            radius: theme.borders.radiusMedium,
                            color: theme.colors.actionEnabled)
                .oudsShadow(theme.elevations.emphasized)
                .padding(.bottom, theme.spaces.fixedLarge)

            }.padding(.horizontal, theme.spaces.fixedSmall)

            OUDSColoredSurface(color: theme.colorModes.onStatusInfoEmphasized) {
                VStack(alignment: .center, spacing: theme.spaces.fixedXsmall) {
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

// MARK: - Custom tokens providers
// WARNING: Can have side effects, use with care!

class MyOwnProviderOfColorTokens: OrangeThemeColorSemanticTokensProvider {

    // Some tokens have light and dark values used according to color scheme
    override var actionEnabledLight: ColorSemanticToken {
        ColorRawTokens.functionalAmethyst600
    }

    // This token can contain up to two values (light and dark), or only one for both
    override var bgTertiary: MultipleColorSemanticTokens {
        MultipleColorSemanticTokens(ColorRawTokens.sun160)
    }
}

class MyOwnProviderOfBorderTokens: OrangeThemeBorderSemanticTokensProvider {

    override var widthThin: BorderWidthSemanticToken {
        BorderRawTokens.width75
    }

    override var styleDefault: BorderStyleSemanticToken {
        BorderRawTokens.styleDashed
    }

    override var radiusMedium: BorderRadiusSemanticToken {
        40 // Remember, thanks to use of typealias, in the end each token is a raw type
    }
}
