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

import OUDSFoundations
import OUDSTokensSemantic
import SwiftUI

/// Inline alert is a lightweight UI element, placed in the content flow, that displays information, system feedback,
/// status changes throughout short, prominent, persistent and non actionable communication. Inline alert includes functional
/// icon and semantic colour, and does not include a close button and/or action link. Inline alert does not disappear and remains visible.
///
/// ## Code samples
///
/// ```swift
///     // A inline alert with a label and the default neutral status
///     OUDSInlineAlert(label: "Label")
///
///     // An inline alert
///     OUDSInlineAlert(label: "Warning", status: .warning)
///
///     // Add a custom icon for accent and neutral status
///     OUDSInlineAlert(label: "Label", status: .accent(icon: OUDSIcon(asset: Image("ic_heart"))))
///     OUDSInlineAlert(label: "Label", status: .neutral(icon: OUDSIcon(asset: Image("ic_heart"))))
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://r.orange.fr/r/S-ouds-doc-alert-message)
///
/// ## Themes rendering
///
/// ### Orange
///
/// ![An inline alert component in light and dark modes with Orange theme](component_inlineAlert_Orange)
///
/// ### Orange Compact
///
/// ![An inline alert component in light and dark modes with Orange Compact theme](component_inlineAlert_OrangeCompact)
///
/// ### Sosh
///
/// ![An inline alert component in light and dark modes with Sosh theme](component_inlineAlert_Sosh)
///
/// ### Wireframe
///
/// ![An inline alertcomponent in light and dark modes with Wireframe theme](component_inlineAlert_Wireframe)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 1.3.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSInlineAlert: View {

    // MARK: Stored properties

    private let text: String
    private let status: OUDSAlertStatus

    @Environment(\.theme) private var theme

    // MARK: - Initializer

    /// Creates a inline alert.
    ///
    /// Use the `View/disabled(_:)` method to have component in disabled state.
    ///
    /// - Parameters:
    ///   - label: Label displayed in the inline alert. Main message that should be short, clear, and readable at a glance.
    ///   - status: The status of the inline alert. Its text and its icon color are based on this status. Default set to *neutral* without icon.
    public init(label: String, status: OUDSAlertStatus = .neutral()) {
        text = label
        if text.isEmpty {
            OL.warning("The label for the OUDSInlineAlert must not be empty!")
        }
        self.status = status
    }

    // MARK: - Body

    public var body: some View {
        HStack(alignment: .top, spacing: theme.alert.spaceColumnGap) {
            AlertLeadingIcon(status: status)
            InlineAlertLabel(text: text, status: status)
        }
    }
}
