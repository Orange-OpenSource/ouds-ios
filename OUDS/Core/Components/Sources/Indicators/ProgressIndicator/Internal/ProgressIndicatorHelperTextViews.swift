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

// MARK: - Two elements in helper text

struct TwoElementsHelperTextView: View {

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
