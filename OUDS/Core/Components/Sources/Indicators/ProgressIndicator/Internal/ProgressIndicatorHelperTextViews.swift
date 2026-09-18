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

// MARK: - Helper Text View

struct ProgressIndicatorHelprTextView: View {

    // MARK: Properties

    let percent: Double?
    let description: String?
    let alignment: OUDSLinearProgressIndicator.HelperTextAlignment

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: Body

    var body: some View {
        switch alignment {
        case .center:
            CenteredHelperTextView(description: description, percent: percentString)
        case .start:
            if let percentString {
                EdgedHelperTextView(start: percentString, end: description)
            } else {
                EdgedHelperTextView(start: description, end: nil)
            }
        case .end:
            if let percentString {
                EdgedHelperTextView(start: description, end: percentString)
            } else {
                EdgedHelperTextView(start: nil, end: description)
            }
        }
    }

    // MARK: Helper

    private var percentString: String? {
        if let percent {
            let value = Int((percent * 100).rounded())
            return "core_progressIndicator_percent_value".localized(with: value)
        } else {
            return nil
        }
    }
}

// MARK: - Centered helper text

private struct CenteredHelperTextView: View {

    // MARK: Properties

    let description: String?
    let percent: String?

    @Environment(\.theme) private var theme
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass

    // MARK: Body

    var body: some View {
        HStack(alignment: .top, spacing: theme.progressIndicator.spaceColumnGap) {
            if let percent, !percent.isEmpty {
                Text(percent).labelDefaultMedium(theme)
            }
            if let description, !description.isEmpty {
                Text(description).labelDefaultMedium(theme)
            }
        }
        .foregroundColor(theme.colors.contentDefault)
        .multilineTextAlignment(.center)
        .frame(maxWidth: theme.sizes.maxWidthLabelLarge.dimension(for: horizontalSizeClass ?? .regular),
               alignment: .center)
    }
}

// MARK: - Edged helper text

private struct EdgedHelperTextView: View {

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

