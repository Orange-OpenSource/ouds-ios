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

    // MARK: - Constants
    // Values coming from the Figma design of the marker (Foundation / Typography — .Marker / Heading large).
    // Kept `internal` (default) so they can be validated by unit tests via `@testable import OUDSComponents`.

    /// Width of the marker rectangle, in points.
    static let markerWidth: CGFloat = 30

    /// Height of the marker rectangle, in points.
    static let markerHeight: CGFloat = 6

    // MARK: Body

    var body: some View {
        Image(decorative: "ic_typography_heading_marker", bundle: theme.resourcesBundle)
            .renderingMode(.template)
            .resizable()
            .toFlip(layoutDirection == .rightToLeft)
            .foregroundStyle(theme.colors.contentBrandPrimary)
            .frame(width: Self.markerWidth, height: Self.markerHeight)
            .padding(.top, theme.typography.spacePaddingBlockTopHeadingLargeMarker)
            .padding(.bottom, theme.typography.spacePaddingBlockBottomHeadingLargeMarker)
            .accessibilityHidden(true)
    }
}
