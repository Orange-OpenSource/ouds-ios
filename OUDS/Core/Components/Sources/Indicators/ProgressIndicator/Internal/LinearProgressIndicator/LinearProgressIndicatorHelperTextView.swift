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

// Internal view that draws the helperText for **determinate** and **indeterminate**
// variant of ``OUDSLinearProgressIndicator``,

struct IndeterminateHelperTextView: View {

    // MARK: Properties

    let configuration: LinearProgressIndicatorConfiguration.Indeterminate
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        OneElementHelperTextView(description: configuration.helperText, alignment: configuration.helperTextAlignment)
    }
}

struct DeterminateProgressIndicatorHelperText: View {

    // MARK: Properties

    let configuration: LinearProgressIndicatorConfiguration.Determinate
    @Environment(\.theme) private var theme

    // MARK: Body

    var body: some View {
        switch configuration.helperText {

        case let .description(description, alignment):
            OneElementHelperTextView(description: description, alignment: alignment)

        case let .percent(description, alignment):
            let percent = percent()
            switch alignment {
            case .center:
                OneElementHelperTextView(description: percent, alignment: alignment)
            case .start:
                TwoElementsHelperTextView(start: percent, end: description)
            case .end:
                TwoElementsHelperTextView(start: description, end: percent)
            }

        default:
            EmptyView()
        }
    }

    // MARK: Helper

    private func percent() -> String {
        let value = Int((configuration.progress * 100).rounded())
        return "core_progressIndicator_percent_value".localized(with: value)
    }
}
