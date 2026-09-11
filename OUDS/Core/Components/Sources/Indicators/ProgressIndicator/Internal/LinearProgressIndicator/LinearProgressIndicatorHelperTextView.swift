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

import OUDSTokensSemantic
import SwiftUI

// MARK: - Indeterminate Helper Text View

/// Internal view that draws the helper text for **determinate** and **indeterminate**
/// variants of ``OUDSLinearProgressIndicator``,
struct IndeterminateHelperTextView: View {

    let configuration: LinearProgressIndicatorConfiguration.Indeterminate

    var body: some View {
        ProgressIndicatorHelprTextView(percent: nil, description: configuration.helperText, alignment: configuration.helperTextAlignment)
    }
}

// MARK: - Determinate Progress Indicator Helper Text

struct DeterminateProgressIndicatorHelperText: View {

    let configuration: LinearProgressIndicatorConfiguration.Determinate

    var body: some View {
        switch configuration.helperText {
        case let .description(description, alignment):
            ProgressIndicatorHelprTextView(percent: nil, description: description, alignment: alignment)

        case let .percent(description, alignment):
            ProgressIndicatorHelprTextView(percent: configuration.progress, description: description, alignment: alignment)

        default:
            EmptyView()
        }
    }
}
