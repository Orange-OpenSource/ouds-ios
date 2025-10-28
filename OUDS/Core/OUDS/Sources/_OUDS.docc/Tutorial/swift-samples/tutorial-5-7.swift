struct ContentView: View {

    @State var selectedGender: Genders = .male
    @State var identity: String = ""
    @State var email: String = ""
    @State var termsAccepted: Bool = false
    @State var selectedTopics: [Topics] = []
    @State var creatingProfile: Bool = false
    @State var switchToDarkMode: Bool = false

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.openURL) var openUrl
    @Environment(\.theme) var theme

    var body: some View {
        ScrollView {
            Group {
                VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
                    Text("OUDS Tutorial for new comers")
                        .typeHeadingXLarge(theme)
                        .oudsForegroundColor(theme.colors.colorContentBrandPrimary)

                    Text("Let's play with components, themes and tokens!")
                        .typeHeadingSmall(theme)

                    HStack {
                        OUDSTag(label: "Welcome")
                        OUDSTag(label: "OUDS")
                        OUDSTag(label: "Tutorial")
                    }
                }.padding(.bottom, theme.spaces.spaceFixedLarge)

                Group {
                    VStack(alignment: .leading, spacing: theme.spaces.spaceFixedMedium) {
                        OUDSRadioPicker(selection: $selectedGender,
                                        radios: genderRadioValues(),
                                        placement: .horizontal(false))

                        let identityDeleteAction = OUDSTextInput.TrailingAction(icon: Image(systemName: "trash"), actionHint: "Delete") { identity = "" }
                        let identityPlaceholder = OUDSTextInput.Placeholder(text: "Firstname and lastname")
                        OUDSTextInput(label: "Identity", text: $identity, placeholder: identityPlaceholder, trailingAction: identityDeleteAction)

                        let emailPlaceholder = OUDSTextInput.Placeholder(text: "Email address", suffix: ".com")
                        OUDSTextInput(label: "Email", text: $email,
                                      placeholder: emailPlaceholder,
                                      leadingIcon: Image(systemName: "envelope"),
                                      helperText: "The email will be automatically completed with @orange.com")

                        OUDSChipPicker(selections: $selectedTopics, chips: topicsChipsValues())

                        Text("\(selectedTopics.count) topic(s) selected")
                            .typeLabelDefaultSmall(theme)
                            .foregroundColor(ColorRawTokens.functionalDodgerBlue800.color!)

                        OUDSHorizontalDivider(color: .brandPrimary)

                        OUDSCheckboxItem(isOn: $termsAccepted, label: "I accept the terms of use")
                    }
                    .padding(.horizontal, theme.spaces.spaceFixedSmall)
                }
                .oudsBackground(theme.colors.colorBgTertiary)
                .oudsBorder(style: theme.borders.styeDefault,
                            width: theme.borders.widthThin,
                            radius: theme.borders.radiusMedium,
                            color: theme.colors.colorActionEnabled)
                .oudsShadow(theme.elevations.elevationEmphasized)
                .padding(.bottom, theme.spaces.spaceFixedLarge)

            }.padding(.horizontal, theme.spaces.spaceFixedSmall)

            OUDSColoredSurface(color: theme.colorModes.modeOnStatusInfoEmphasized) {
                VStack(alignment: .center, spacing: theme.spaces.spaceFixedXsmall) {
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
                        .padding(.horizontal, theme.spaces.spaceFixed3xlarge)
                }
                .frame(maxWidth: theme.sizes.sizeMaxWidthTypeBodyMedium.dimension(for: horizontalSizeClass ?? .regular))
                .padding(.bottom, theme.spaces.spaceFixedLarge)
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
