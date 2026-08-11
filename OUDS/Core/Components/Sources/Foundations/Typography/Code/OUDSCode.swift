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

/// Text component used to render *code snippets* and technical values using a monospaced typography.
///
/// Only one style (medium) is defined by the design system for the *code* typography, so this component takes
/// only the text to render.
///
/// ## Code samples
///
/// ```swift
///     OUDSCode(text: "let x = 42")
///     OUDSCode(LocalizedStringKey("code_sample_wording_key"), bundle: Bundle.module)
/// ```
///
/// ## Design documentation
///
/// [unified-design-system.orange.com](https://unified-design-system.orange.com/)
///
/// - Version: 1.0.0 (Figma component design version)
/// - Since: 3.0.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
public struct OUDSCode: View { // TODO: #1580 - Add reference to documentation when available

    // TODO: #1580 - Add illustrations

    // MARK: Properties

    private let text: String

    @Environment(\.theme) private var theme

    // MARK: - Initializers

    /// Creates a code text with a raw `String`.
    ///
    /// - Parameter text: The text to display.
    public init(text: String) {
        self.text = text
    }

    /// Creates a code text with a localized `LocalizedStringKey`, looking up the key in the given bundle.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the text in the given bundle.
    ///    - tableName: The name of the `.strings` file, or `nil` for the default.
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main)
    {
        self.init(text: key.resolved(tableName: tableName, bundle: bundle))
    }

    // MARK: Body

    public var body: some View {
        Text(text)
            .codeMedium(theme)
            .foregroundColor(theme.colors.contentDefault)
    }
}
