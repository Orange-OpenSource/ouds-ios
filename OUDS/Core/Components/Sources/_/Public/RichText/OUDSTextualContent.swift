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

// MARK: - Textual Content

/// A textual value that can be either a plain `String` or a styled `AttributedString`.
///
/// `OUDSTextualContent` is used by several OUDS components to let callers provide either a raw string or
/// a user-styled rich text (`AttributedString`) through a single parameter. It conforms to
/// `ExpressibleByStringLiteral` so a string literal is implicitly converted to the ``raw(_:)`` case,
/// keeping plain-text call sites concise.
///
/// ```swift
///     // Plain string literal (implicitly converted to .raw)
///     let description: OUDSTextualContent = "A plain description"
///
///     // Explicit raw string
///     let overline: OUDSTextualContent = .raw("Overline")
///
///     // User-styled rich text
///     let helper: OUDSTextualContent = .rich(AttributedString("Styled helper"))
/// ```
///
/// - Since: 3.2.0
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
@frozen
public enum OUDSTextualContent: @unchecked Sendable, ExpressibleByStringLiteral {

    /// The text is a raw `String` to use as is.
    case raw(String)

    /// The text is loaded from localizables with a `LocalizedStringKey`, in a table with its name (default `nil`), from a `Bundle` (default `main`).
    case localized(_: LocalizedStringKey, tableName: String? = nil, bundle: Bundle = .main)

    /// The text is an `AttributedString`, a rich text whose styling (font, color, markdown…) is
    /// fully controlled by the caller.
    case rich(AttributedString)

    /// Creates a ``raw(_:)`` value from a string literal.
    ///
    /// This conformance lets any call site pass a plain string literal where a ``OUDSTextualContent``
    /// is expected, without wrapping it in `.raw(…)`.
    public init(stringLiteral value: String) {
        self = .raw(value)
    }

    /// Returns the text value of the element.
    /// Voice Over will be able to vocalize it, at least for `String` and `AttributedString(markdown:)` cases.
    public var rawValue: String {
        switch self {
        case let .raw(text):
            text
        case let .localized(key, tableName, bundle):
            key.resolved(tableName: tableName, bundle: bundle)
        case let .rich(text):
            String(text.characters)
        }
    }

    /// Whether the underlying text payload is empty.
    public var isEmpty: Bool {
        rawValue.isEmpty
    }
}
