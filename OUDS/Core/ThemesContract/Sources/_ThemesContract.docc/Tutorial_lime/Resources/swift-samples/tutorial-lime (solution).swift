// The umbrella imports to have all OUDS products
// Get more details about imports here: https://ios.unified-design-system.orange.com/documentation/oudsthemescontract/gettingstarted
import OUDSSwiftUI
import SwiftUI

// MARK: - App

// The iOS app entry
@main
struct OUDS_Lime_TutorialApp: App {

    // The Orange theme for start, to instanciate once for all
    let myTheme = LimeTheme()

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

/// Defines a formular with several OUDS components and tokens
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

// MARK: - Lime Theme

nonisolated class LimeTheme: OrangeTheme, @unchecked Sendable {

    init() {
        // Define the tokens providers you need
        // Because you override the OrangeTheme, some tokens providers will be silently defined
        let colors = LimeThemeColorProvider()
        super.init(
            borders: LimeThemeBorderProvider(),
            colors: colors,
            colorModes: LimeThemeColorModeProvider(colors: colors),
            elevations: LimeThemeElevationProvider(),
            fonts: LimeThemeFontProvider(),
            spaces: LimeThemeSpaceProvider(),
            tuning: Self.tuning)

        registerFonts()
    }

    // MARK: - Tuning

    private static let tuning: Tuning = .init(hasRoundedButtons: true,
                                              hasRoundedTextInputs: true,
                                              hasRoundedAlertMessages: true,
                                              hasRoundedProgressIndicators: true,
                                              hasRoundedListItems: true)

    // MARK: - Fonts

    private static var fontsAlreadyRegistered = false

    private func registerFonts() {
        guard !LimeTheme.fontsAlreadyRegistered else { return }

        let fonts = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
        fonts?.forEach { CTFontManagerRegisterFontsForURL($0 as CFURL, .process, nil) }

        LimeTheme.fontsAlreadyRegistered = true
    }
}

// MARK: - Color Provider

// By subclassing OrangeThemeColorSemanticTokensProvider, you get all existing tokens
// of colors of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeColorProvider: OrangeThemeColorSemanticTokensProvider {

    override var bgTertiary: MultipleColorSemanticToken {
        MultipleColorSemanticToken(light: ColorRawTokens.functionalGrayLight80, dark: ColorRawTokens.functionalGrayDark960)
    }

    override var contentBrandPrimaryLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var contentBrandPrimaryDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var actionEnabledLight: ColorSemanticToken { ColorRawTokens.functionalMalachite600 }
    override var actionEnabledDark: ColorSemanticToken { ColorRawTokens.functionalMalachite400 }

    override var borderBrandPrimary: MultipleColorSemanticToken { MultipleColorSemanticToken(ColorRawTokens.functionalMalachite600) }

    override var surfaceStatusInfoEmphasized: MultipleColorSemanticToken { MultipleColorSemanticToken(ColorRawTokens.functionalMalachite600) }
}

// MARK: - Border Provider

// By subclassing OrangeThemeBorderSemanticTokensProvider, you get all existing tokens
// of borders of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeBorderProvider: OrangeThemeBorderSemanticTokensProvider {

    override var styleDefault: BorderStyleSemanticToken { BorderRawTokens.styleDashed }
    override var widthThin: BorderWidthSemanticToken { BorderRawTokens.width100 }
    override var radiusMedium: BorderRadiusSemanticToken { BorderRawTokens.radius800 }
}

// MARK: - Space Provider

// By subclassing OrangeThemeSpaceSemanticTokensProvider, you get all existing tokens
// of spacings of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeSpaceProvider: OrangeThemeSpaceSemanticTokensProvider {

    override var fixedMedium: SpaceSemanticToken { DimensionRawTokens._150 }
    override var fixedLarge: SpaceSemanticToken { DimensionRawTokens._200 }
}

// MARK: - Elevation Provider

// By subclassing OrangeThemeElevationSemanticTokensProvider, you get all existing tokens
// of elevations of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeElevationProvider: OrangeThemeElevationSemanticTokensProvider {

    override var emphasized: ElevationCompositeSemanticToken {
        raised
    }
}

// MARK: - ColorMode Provider

// By subclassing OrangeThemeColorModesSemanticTokensProvider, you get all existing tokens
// of color mode of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeColorModeProvider: OrangeThemeColorModeSemanticTokensProvider {

    override init(colors: AllColorSemanticTokensProvider? = nil) {
        super.init(colors: colors)
    }
}

// MARK: - Fonts Provider

// By subclassing OrangeThemeFontSemanticTokensProvider, you get all existing tokens
// of font of Orange theme.
// Then you can override some tokens with your own values.
nonisolated class LimeThemeFontProvider: OrangeThemeFontSemanticTokensProvider {

    private static let myFont = "Shantell Sans"

    override var familyBody: FontFamilySemanticToken { Self.myFont }
    override var familyCode: FontFamilySemanticToken { Self.myFont }
    override var familyDisplay: FontFamilySemanticToken { Self.myFont }
    override var familyHeading: FontFamilySemanticToken { Self.myFont }
    override var familyLabel: FontFamilySemanticToken { Self.myFont }
    override var familySystem: FontFamilySemanticToken { Self.myFont }
}
