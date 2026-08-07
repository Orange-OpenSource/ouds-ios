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

#if !os(watchOS) && !os(tvOS)
import OUDSTokensSemantic
import SwiftUI

struct TextInputCircularProgressIndicator: View {

    // MARK: Properties

    private let progress: Double?
    private let status = OUDSCircularProgressIndicator.Status.neutral
    private let track = false

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    init(progress: Double? = nil) {
        self.progress = progress
    }

    // MARK: - Body

    var body: some View {
        Group {
            if let progress {
                OUDSCircularProgressIndicator(progress: progress, status: status, track: track, animated: false, size: size)
            } else {
                OUDSCircularProgressIndicator(status: status, track: track, size: size)
            }
        }
        .accessibilityHidden(true)
    }

    private var size: CGFloat {
        theme.button.sizeProgressIndicatorDefault
    }
}
#endif
