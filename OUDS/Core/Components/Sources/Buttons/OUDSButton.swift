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

import Foundation
import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

/// An OUDS component for buttons.
/// __Warning: This is a draft component__.
///
/// This component is created to illustrate the mecanism of theme and tokens and for tests.
public struct OUDSButton: View {

    // MARK: - Properties

    /// The text to display inside the button
    private let text: String

    /// The action to process when the button is activated by a user interaction like a tap
    private let action: () -> Void

    /// To get tokens to customize the component
    @Environment(\.theme) private var theme

    /// To choose if ight or dark color must be used
    @Environment(\.colorScheme) private var colorScheme

    /// To get programatically and on the fly the horizontal layout size
    @Environment(\.horizontalSizeClass) private var sizeClass

    // MARK: - Init

    /// Initializes the button.
    ///
    /// - Parameters:
    ///   - text: Text displayed in the button.
    ///   - action: Will be called when the user clicks the button.
    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    // MARK: - Body

    public var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .systemFont(typography: theme.buttonTypography)
                .padding(theme.buttonInternalSpacing)
                .foregroundColor(colorScheme == .light
                                 ? theme.buttonForegroundColor.light.color
                                 : theme.buttonForegroundColor.dark.color)
                .modifier(BorderStyleModifier(theme.buttonBorderStyle,
                                              theme.buttonBorderWidth,
                                              theme.buttonBorderRadius,
                                              theme.buttonBorderColor))
        }.frame(width: theme.buttonWidth, height: theme.buttonHeight)
    }
}
