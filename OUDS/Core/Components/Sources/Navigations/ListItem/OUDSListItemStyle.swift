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

// TODO: add doc

/// - Since: 2.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSListItemStyle: ViewModifier {

    let containersAlignment: ContainersAlignment

    /// Define the vertical alignment of containers (leading, trailing, affordance, texts)
    @frozen public enum ContainersAlignment {
        case top
        case center
    }

    public func body(content: Content) -> some View {
        content
            .environment(\.controlItemContainersAlignment, containersAlignment)
    }
}

extension View {
    public func oudsListItemContainersAlignment(_ alignment: OUDSListItemStyle.ContainersAlignment) -> some View {
        modifier(OUDSListItemStyle(containersAlignment: alignment))
    }
}
