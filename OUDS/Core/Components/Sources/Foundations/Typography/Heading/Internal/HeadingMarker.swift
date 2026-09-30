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

import SwiftUI

/// Internal decorative marker displayed below a large ``OUDSHeading`` when the current theme supports it.
struct HeadingMarker: View {

    // MARK: Properties

    @Environment(\.theme) private var theme
    @Environment(\.layoutDirection) private var layoutDirection

    // MARK: Body

    var body: some View {
            Image(decorative: "ic_typography_heading_marker", bundle: theme.resourcesBundle)
                .renderingMode(.template)
            .toFlip(layoutDirection == .rightToLeft)
            .foregroundStyle(theme.typography.colorContentMarker)
            .padding(.top, theme.typography.spacePaddingBlockTopHeadingLargeMarker)
            .padding(.bottom, theme.typography.spacePaddingBlockBottomHeadingLargeMarker)
            .accessibilityHidden(true)
    }
}
