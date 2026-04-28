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

/// This is the leading container of the ControlItem.
///
/// This is a container because the height of the frame can increase dynamically
/// to a `maxHeight` fixed by a specific token.
/// The content with a fixed size is centered in this frame.
struct ControlItemLeadingContainer<Content: View>: View {

    // MARK: - Properties

    @ViewBuilder let content: () -> Content
    @Environment(\.theme) private var theme

    // MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            content()
        }
        .frame(minHeight: theme.controlItem.sizeAssetSmall, maxHeight: theme.controlItem.sizeMaxHeightAssetsContainer, alignment: .center)
    }
}
