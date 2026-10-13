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

import Foundation
@testable import OUDSComponents
import Testing

/// Tests on the constants defined in ``SkeletonShimmerView``.
struct SkeletonShimmerViewTests {

    @Test
    func `animation duration must be 1.25 seconds`() {
        #expect(SkeletonShimmerView.animationDuration == 1.25)
    }

    @Test
    func `shimmer duration must be 0.8 scond`() {
        #expect(SkeletonShimmerView.shimmerDuration == 0.8)
    }
}
