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
                    .padding(.horizontal, gridMarin)

                CategorySelector(selectedComponentGroup: $selectedComponentGroup)
            }
            .padding(.vertical, gridMarin)
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
            .padding(.all, gridMarin)
        }
    }

    private var gridMarin: Double {
        theme.gridMargin(for: oudsHorizontalSizeClass)
    }
}

#Preview {
    ScrollView {
        ComponentShowcase().orangePreview()
    }
}
