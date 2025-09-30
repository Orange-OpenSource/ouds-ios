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

import OUDSComponents
import OUDSFoundations
import SwiftUI
import UIKit

extension OUDSSwiftUIBrige {

    /// Create a SwiftUI `OUDSTag` with simple label and maybe an icon.
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - icon: The icon displayed before the label, or `nil` if there is no icon
    ///    - flipIcon: Default set to `false`, set to true to reverse the image (i.e. flip vertically).
    ///     Usefull for example in RTL case to prevent loose of meanings for some images.
    ///    - hierarchy: The importance of the tag. Its background color and its content color are based on this hierarchy combined to the `status` of the tag
    ///    - status: The status of the tag. Its background color and its content color are based on this status combined to
    ///    the `hierarchy` of the tag
    ///    - shape: The shape of the tag that allows to play with its corners appearance.
    ///    - size: The size of the tag
    ///    - hasLoader: If an optional loader (or progress indicator) is displayed before the `label` or not. It will
    ///    replace the `icon` if provided.
    @MainActor public static func createTag(label: String,
                                            icon: OUDSTag.Icon? = nil,
                                            flipIcon: Bool = false,
                                            hierarchy: OUDSTag.Hierarchy = .emphasized,
                                            status: OUDSTag.Status = .neutral,
                                            shape: OUDSTag.Shape = .rounded,
                                            size: OUDSTag.Size = .default,
                                            hasLoader: Bool = false) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSTag(label:icon:flipIcon:hierarchy:status:shape:size:hasLoader)")
        let swiftUITag = OUDSTag(label: label,
                                 icon: icon,
                                 flipIcon: flipIcon,
                                 hierarchy: hierarchy,
                                 status: status,
                                 shape: shape,
                                 size: size,
                                 hasLoader: hasLoader)
        return wrap(component: swiftUITag)
    }
}
