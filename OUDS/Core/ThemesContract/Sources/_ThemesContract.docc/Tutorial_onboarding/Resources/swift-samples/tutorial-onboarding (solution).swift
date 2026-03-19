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

// MARK: - Info Card

struct InfoCard: View {

    let assetName: String
    let title: String
    let subtitle: String
    let description: String
    let buttonLabel: String

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    var body: some View {
        VStack(alignment: .leading, spacing: theme.spaces.fixedNone) {
            Image(assetName, bundle: .main)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .headingMedium(theme)
                .oudsForegroundColor(theme.colors.contentBrandPrimary)
                .padding(.top, theme.gridMargin(for: oudsHorizontalSizeClass))

            Text(subtitle)
                .headingXLarge(theme)
                .oudsForegroundColor(theme.colors.contentDefault)
                .padding(.vertical, theme.spaces.scaled2xsmall.dimension(for: horizontalSizeClass ?? .regular))

            Text(description)
                .bodyDefaultLarge(theme)
                .oudsForegroundColor(theme.colors.contentDefault)

            Spacer(minLength: theme.spaces.scaledLarge.dimension(for: verticalSizeClass ?? .regular))

            OUDSButton(text: buttonLabel, appearance: .strong) {}

            Spacer(minLength: theme.spaces.fixedMedium)
        }
        .oudsGridMargin(.horizontal)
    }
}

/*
 #Preview {
     InfoCard(
         assetName: "Picture2",
         title: "Orange for the sector",
         subtitle: "A complete offer for Institutions",
         description: "Our experience as a partner in the digital transformation of companies and institutions guarantees the high efficiency of the services provided.",
         buttonLabel: "Transmission")
     .orangePreview()
 }
 */

// MARK: - Component Showcase

struct ComponentShowcase: View {

    @State private var selectedComponentGroup: ComponentGroup = .control
    @Environment(\.theme) private var theme
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            VStack(spacing: theme.spaces.scaledMedium.dimension(for: verticalSizeClass ?? .regular)) {
                Text("Explore some OUDS components")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .headingLarge(theme)
                    .oudsForegroundColor(theme.colors.contentDefault)
                    .padding(.horizontal, gridMargin)

                CategorySelector(selectedComponentGroup: $selectedComponentGroup)
            }
            .padding(.vertical, gridMargin)
            .oudsBackground(theme.colors.bgSecondary)

            // Use opacity to reserve space vertically, otherwise height change when changing group
            ZStack {
                let controlOpacity = selectedComponentGroup == .control ? 1.0 : 0.0
                let indicatorOpacity = selectedComponentGroup == .indicator ? 1.0 : 0.0
                let navigationOpacity = selectedComponentGroup == .navigation ? 1.0 : 0.0

                Control().opacity(controlOpacity)
                Indicator().opacity(indicatorOpacity)
                Navigation().opacity(navigationOpacity)
            }
            .padding(.all, gridMargin)
        }
    }

    private var gridMargin: Double {
        theme.gridMargin(for: oudsHorizontalSizeClass)
    }
}

enum ComponentGroup: CaseIterable, CustomStringConvertible {
    case control, indicator, navigation

    var description: String {
        switch self {
        case .control: "Control"
        case .indicator: "Indicator"
        case .navigation: "Navigation"
        }
    }
}

struct CategorySelector: View {

    @Binding var selectedComponentGroup: ComponentGroup
    @Environment(\.theme) private var theme
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: theme.spaces.fixedSmall) {
                ForEach(ComponentGroup.allCases, id: \.self) { group in
                    OUDSFilterChip(text: group.description, selected: group == selectedComponentGroup) {
                        selectedComponentGroup = group
                    }
                }
            }
            .padding(.horizontal, theme.gridMargin(for: oudsHorizontalSizeClass))
        }
    }
}

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

struct Indicator: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.scaledMedium.dimension(for: verticalSizeClass ?? .regular)) {
            HStack(spacing: theme.spaces.fixedSmall) {
                OUDSBadge(accessibilityLabel: "Badge positive", status: .positive, size: .large)
                OUDSBadge(count: 1, accessibilityLabel: "Badge Count", status: .negative, size: .large)
                OUDSBadge(status: .info, accessibilityLabel: "Badge Info", size: .large)
            }
        }
    }
}

struct Navigation: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            OUDSLink(text: "Link", indicator: .next) {}
            OUDSLink(text: "Link", indicator: .back) {}
            OUDSLink(text: "Read OUDS Documentation") {
                UIApplication.shared.open(URL(string: "https://unified-design-system.orange.com")!)
            }
        }
    }
}

/*
 #Preview {
     ScrollView {
         ComponentShowcase().orangePreview()
     }
 }
 */

// MARK: - Home Screen

struct HomeScreen: View {

    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    @Environment(\.theme) private var theme

    var body: some View {
        ScrollView {
            VStack {
                InfoCard(
                    assetName: "Picture2",
                    title: "Orange for the sector",
                    subtitle: "A complete offer for Institutions",
                    description: "Our experience as a partner in the digital transformation of companies and institutions guarantees the high efficiency of the services provided.",
                    buttonLabel: "Transmission")

                InfoCard(
                    assetName: "Picture1",
                    title: "Large Public Institutions",
                    subtitle: "Grow your company with",
                    description: "The Orange Polska Group is in the TOP 3 of ICT service leaders in Poland according to the 2000 Computerworld report. See how we can .- -Work together.",
                    buttonLabel: "Contact us")
                    .environment(\.colorScheme, .dark)
                    .oudsBackground(theme.colors.bgInverseLow)
            }

            ComponentShowcase()
        }
        .oudsBackground(theme.colors.bgPrimary)
    }
}

/*
 #Preview {
     HomeScreen().orangePreview()
 }
 */

// MARK: - Content View

struct ContentView: View {

    private let theme = OrangeTheme()

    var body: some View {
        OUDSThemeableView(theme: theme) {
            // Initializer for iOS 18- compatibility
            // Images are available in project assets
            // Tags allow to make the binding and display the selected tab indicator for iOS 18-
            OUDSTabBar(selected: 0, count: 3) {
                HomeScreen().tabItem {
                    Label("Home", image: "Home")
                }
                .tag(0)

                Text("E shop Screen").tabItem {
                    Label("E-Shop", image: "E-Shop")
                }
                .tag(1)

                Text("Contact Screen").tabItem {
                    Label("Contact", image: "Contact")
                }
                .tag(2)
            }
        }
    }
}

/*
 #Preview {
     ContentView()
         .orangePreview()
 }
 */

// MARK: App

@main
struct OUDS_Onboarding_TutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
