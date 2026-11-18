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

import OUDSThemesContract
import OUDSTokensSemantic
import SwiftUI

// Apply the correct color according to the `isEnabled` flag

struct TypographyColorModifier: ViewModifier {

    // MARK: Properties

    @Environment(\.theme) private var theme
    @Environment(\.isEnabled) private var isEnabled

    // MARK: Body

    func body(content: Content) -> some View {
        content.foregroundColor(foregroundColor)
    }

    // MARK: Helper

    private var foregroundColor: MultipleColorSemanticToken {
        isEnabled ? theme.colors.contentDefault : theme.colors.contentDisabled
    }
}
