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

#if canImport(UIKit)
import OUDSComponents // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import SwiftUI
import UIKit

extension OUDSUIKitBrige {

    /// Create a SwiftUI `OUDSTag` with  label and style.
    ///
    /// **This is an experimental feature, feedback and support are appreciated**
    ///
    /// - Parameters:
    ///    - label: The label displayed in the tag
    ///    - status: The status of the tag. Its background color and its content color are based on
    ///    this `OUDSTag.Status` combined to the `OUDSTag.Appearance` of the tag. Default set to *neutral*.
    ///    - appearance: The importance of the tag. Its background color and its content color are based on
    ///    this `OUDSTag.Appearance` combined to the `OUDSTag.Status` of the tag. Default set to *emphasized*
    ///    - shape: The shape of the tag, i.e. the corners style. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    ///    - hasLoader: If an optional loader (or progress indicator) is displayed before the `label` or not.
    ///    It will replace the `icon` if provided. Default set to *false*.
    @MainActor public static func createTag(label: String,
                                            status: OUDSTag.Status = .neutral(),
                                            appearance: OUDSTag.Appearance = .emphasized,
                                            shape: OUDSTag.Shape = .rounded,
                                            size: OUDSTag.Size = .default,
                                            hasLoader: Bool = false) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSTag(label:status:appearance:shape:size:hasLoader)")
        let swiftUITag = OUDSTag(label: label,
                                 status: status,
                                 appearance: appearance,
                                 shape: shape,
                                 size: size,
                                 hasLoader: hasLoader)
        return wrap(component: swiftUITag)
    }

    /// Create a SwiftUI `OUDSTag` with  label and style in loading state.
    ///
    /// **This is an experimental feature, feedback and support are appreciated**
    ///
    /// - Parameters:
    ///    - loadingLabel: The label displayed in the tag
    ///    - shape: The shape of the tag, i.e. the corners style. Default set to *rounded*.
    ///    - size: The size of the tag. Default set to *default*.
    @MainActor public static func createTag(loadingLabel: String,
                                            shape: OUDSTag.Shape = .rounded,
                                            size: OUDSTag.Size = .default) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSTag(loadingLabel:shape:size)")
        let swiftUITag = OUDSTag(label: loadingLabel,
                                 shape: shape,
                                 size: size)
        return wrap(component: swiftUITag)
    }
}
#endif
