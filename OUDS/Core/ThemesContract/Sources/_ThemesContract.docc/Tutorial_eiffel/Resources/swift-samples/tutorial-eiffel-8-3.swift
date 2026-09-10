import OUDSSwiftUI
import SwiftUI

// MARK: - Eiffel Theme

class EiffelTheme: OrangeTheme {

    override init() {
        let borders = EiffelThemeBorderProvider()
        let colors = EiffelThemeColorProvider()

        super.init(
            borders: EiffelThemeBorderProvider(),
            colors: colors,
            colorModes: EiffelThemeColorModeProvider(),
            elevations: EiffelThemeElevationProvider(),
            fonts: EiffelThemeFontProvider(),
            spaces: EiffelThemeSpaceProvider(),
            alertMessage: EiffelThemeAlertMessageComponentTokensProvider(
                borders: borders),
            button: EiffelThemeButtonComponentTokensProvider(
                colors: colors borders: borders),
            checkbox: EiffelThemeCheckboxComponentTokensProvider(
                borders: borders),
            radioButton: EiffelThemeRadioButtonComponentTokensProvider(
                borders: borders),
            switch: EiffelThemeSwitchComponentTokensProvider(
                colors: colors),
            textInput: EiffelThemeTextInputComponentTokensProvider(
                borders: borders))
    }
}

// MARK: - Color Provider

class EiffelThemeColorProvider: OrangeThemeColorSemanticTokensProvider {

    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight80, dark: ColorRawTokens.functionalGrayDark960)
    }

    override var contentBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var contentBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var actionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var actionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }
}

// MARK: - Border Provider

class EiffelThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {

    override var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleDashed }

    override var widthThin: BorderWidthSemanticToken { BorderRawTokens.width100 }

    override var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius800 }

    override var radiusLarge: BorderRadiusSemanticToken { BorderRawTokens.radius1000 }

    override var colorActionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var colorActionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }
}

// MARK: - Space Provider

class EiffelThemeSpaceProvider: OrangeThemeSpaceSemanticTokensProvider {

    override var fixedMedium: SpaceSemanticToken { DimensionRawTokens._500 }
    override var fixedLarge: SpaceSemanticToken { DimensionRawTokens._600 }
}

// MARK: - Elevation Provider

class EiffelThemeElevationProvider: OrangeThemeElevationSemanticTokensProvider {

    override var emphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }

    override var stickyEmphasized: ElevationCompositeSemanticToken {
        ElevationCompositeSemanticToken(ElevationRawTokens.bottom_4_600)
    }
}

// MARK: - Font Provider

class EiffelThemeFontProvider: OrangeThemeFontSemanticTokensProvider {

    override var headingXLarge: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.headingXLargeBold)
    }

    override var headingSmall: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.headingSmallBold)
    }

    override var labelDefaultSmall: FontCompositeSemanticToken {
        FontCompositeSemanticToken(FontRawTokens.labelDefaultSmallMedium)
    }
}

// MARK: - Color Mode Provider

class EiffelThemeColorModeProvider: OrangeThemeColorModeSemanticTokensProvider {

    override var onStatusInfoEmphasizedLight: ColorSemanticToken { ColorRawTokens.functionalMalachite100 }
    override var onStatusInfoEmphasizedDark: ColorSemanticToken { ColorRawTokens.functionalMalachite900 }
}

// MARK: - Categorical Tag Provider

class EiffelThemeCategoricalTagComponentTokensProvider: OrangeThemeCategoricalTagComponentTokensProvider {

    override var colorBgCategory1: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalMalachite500, dark: ColorRawTokens.functionalMalachite400)
    }

    override var colorBgCategory2: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight560, dark: ColorRawTokens.functionalGrayDark400)
    }

    override var colorBgCategory3: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalSun500, dark: ColorRawTokens.functionalSun300)
    }

    override var colorBgCategory4: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalBlack, dark: ColorRawTokens.functionalGrayLight560)
    }

    override var colorBgCategory5: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight320, dark: ColorRawTokens.functionalGrayDark640)
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
                    Text("Create Your Own Theme")
                        .headingXLarge(theme)
                        .foregroundColor(theme.colors.contentBrandPrimary)

                    Text("Let's customize the Eiffel theme together!")
                        .headingSmall(theme)

                    HStack {
                        OUDSTag(label: "Welcome")
                        OUDSTag(label: "Eiffel")
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

                        Text("\(selectedTopics.count) topic(s) selected")
                            .labelDefaultSmall(theme)
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
