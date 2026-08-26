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

        case let .percent(spaceBefore, description, alignment):
            let percent = percent(spaceBefore: spaceBefore)
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

    private func percent(spaceBefore: Bool) -> String {
        let value = Int((configuration.progress * 100).rounded())
        let extraSpace = spaceBefore ? " " : ""
        return "\(value)\(extraSpace)%"
    }
}

// MARK: - Two elements in helper text

private struct TwoElementsHelperTextView: View {

    // MARK: Properties

    let start: String?
    let end: String?

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: Body

    var body: some View {
        HStack(alignment: .top) {
            Text(start ?? "")
                .labelDefaultMedium(theme)
                .foregroundColor(theme.colors.contentDefault)
                .multilineTextAlignment(.leading)

            Spacer()

            Text(end ?? "")
                .labelDefaultMedium(theme)
                .foregroundColor(theme.colors.contentDefault)
                .multilineTextAlignment(.trailing)
        }
        .frame(maxWidth: theme.sizes.maxWidthLabelLarge.dimension(for: horizontalSizeClass ?? .regular))
    }
}

// MARK: - One element in helper text

struct OneElementHelperTextView: View {

    // MARK: Properties

    let description: String?
    let alignment: OUDSLinearProgressIndicator.HelperTextAlignment

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: Body

    var body: some View {
        if let description, !description.isEmpty {
            Text(description)
                .labelDefaultMedium(theme)
                .foregroundColor(theme.colors.contentDefault)
                .multilineTextAlignment(multilineTextAlignment)
                .frame(maxWidth: theme.sizes.maxWidthLabelLarge.dimension(for: horizontalSizeClass ?? .regular),
                       alignment: frameAlignment)
        }
    }

    // MARK: Alignment helpers

    private var frameAlignment: Alignment {
        switch alignment {
        case .center:
            .center
        case .start:
            .leading
        case .end:
            .trailing
        }
    }

    private var multilineTextAlignment: TextAlignment {
        switch alignment {
        case .center:
            .center
        case .start:
            .leading
        case .end:
            .trailing
        }
    }
}
