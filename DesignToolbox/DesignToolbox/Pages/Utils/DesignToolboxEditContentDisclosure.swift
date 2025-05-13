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

import OUDS
import OUDSTokensSemantic
import SwiftUI

struct DesignToolboxEditContentDisclosure<Content>: View where Content: View {

    @ViewBuilder
    let content: () -> Content

    @State private var isContentVisible = false
    @Environment(\.theme) private var theme

    var body: some View {
        DesignToolboxDisclosureGroup(isExpanded: $isContentVisible, accessibilityLabel: "", content: content) {
            Text("app_components_common_editContent_label")
                .typeHeadingSmall(theme)
                .oudsForegroundStyle(theme.colors.colorContentDefault)
        }
        .padding(.horizontal, theme.spaces.spaceFixedMedium)
    }
}
