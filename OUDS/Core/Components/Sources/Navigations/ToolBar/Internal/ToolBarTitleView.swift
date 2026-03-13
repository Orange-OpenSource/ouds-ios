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

#if !os(watchOS) && !os(tvOS)
import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

/// `View` dedicated to the display of title and subtitle in the toolbar components
struct ToolbarTitleView: View {

    let title: String
    let subtitle: String?
    let addGrabber: Bool

    @Environment(\.theme) private var theme

    var body: some View {
        VStack(spacing: theme.spaces.fixedNone) {
            if addGrabber {
                GrabberView()
            }

            Text(LocalizedStringKey(title))
                .headingSmall(theme) // TODO: #1174 - Check typography to apply
                .oudsForegroundColor(MultipleColorSemanticToken(light: "#333333", dark: "#FFFFFF")) // TODO: #1174 - Check color to apply
            if let subtitle {
                Text(LocalizedStringKey(subtitle))
                    .labelDefaultMedium(theme) // TODO: #1174 - Check typography to apply
                    .oudsForegroundColor(MultipleColorSemanticToken("#999999")) // TODO: #1174 - Check color to apply
            }
        }
        .multilineTextAlignment(.center)
    }
}

struct GrabberView: View {

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        // Hard coded values because base on figma apple kit
        // (no need tokens because same for all brands)
        RoundedRectangle(cornerRadius: 2)
            .fill(color)
            .frame(width: 36, height: 5)
            .padding(.top, 5)
            .padding(.bottom, 6)
    }

    private var color: Color {
        Color(hexadecimalCode: colorScheme == .light ? "CCCCCC" : "333333") ?? .black
    }
}

#endif
