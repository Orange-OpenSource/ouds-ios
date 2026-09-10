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

@testable import OUDSComponents
import SwiftUI
import Testing

/// Tests the `OUDSListItemImage.ImageType` cases, in particular the `.animated` case
/// used to display GIF/WebP animated images (see ``AnimatedImage``).
@MainActor
struct OUDSListItemImageTests {

    // MARK: - init(asset:) builds a .asset case

    @Test func assetInitializerBuildsAssetCase() {
        let image = OUDSListItemImage(asset: Image(systemName: "star"))
        guard case .asset = image.imageType else {
            Issue.record("Expected .asset case")
            return
        }
    }

    // MARK: - init(animatedImage:) builds a .animated case

    @Test func animatedImageInitializerBuildsAnimatedCase() {
        let image = OUDSListItemImage(animatedImage: OUDSAnimatedImage(url: nil))
        guard case .animated = image.imageType else {
            Issue.record("Expected .animated case")
            return
        }
    }
}
