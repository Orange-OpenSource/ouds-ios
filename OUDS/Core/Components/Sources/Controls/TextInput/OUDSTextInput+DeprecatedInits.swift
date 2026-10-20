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
import SwiftUI

/// Deprecated initializers of ``OUDSTextInput``.
///
/// The four initializers below (label as `String` or `LocalizedStringKey` × `helperText` as `String` or `AttributedString`)
/// are deprecated in favor of the two unified initializers which accept an ``OUDSTextualContent`` for the `helperText`.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, *)
extension OUDSTextInput { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Creates a text input with a `String` label and an optional `String` helper text.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingImage: An optional ``OUDSImage``, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an OUDSTextualContent helperText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingImage: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: label,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingImage: leadingImage,
                  trailingAction: trailingAction,
                  helperText: helperText.map { .raw($0) },
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a `String` label and a rich `AttributedString` helper text.
    ///
    /// - Parameters:
    ///    - label: The label displayed above the text input. It describes the purpose of the input
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingImage: An optional ``OUDSImage``, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an OUDSTextualContent helperText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(label: String,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingImage: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(label: label,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingImage: leadingImage,
                  trailingAction: trailingAction,
                  helperText: .rich(helperText),
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a localized label and an optional `String` helper text.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingImage: An optional ``OUDSImage``, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: An optional helper text, by default is *nil*
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an OUDSTextualContent helperText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingImage: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: String? = nil,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingImage: leadingImage,
                  trailingAction: trailingAction,
                  helperText: helperText.map { .raw($0) },
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    /// Creates a text input with a localized label and a rich `AttributedString` helper text.
    ///
    /// - Parameters:
    ///    - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - text: The text to display and edit
    ///    - placeholder: The text displayed when the text input is empty, by default is *nil*
    ///    - prefix: Text placed before the user's input, by default is *nil*
    ///    - suffix: Text placed after the user's input, by default is *nil*
    ///    - leadingImage: An optional ``OUDSImage``, by default is *nil*
    ///    - trailingAction: An optional trailing action, by default is *nil*
    ///    - helperText: A rich `AttributedString` helper text
    ///    - helperLink: An optional helper link, by default is *nil*
    ///    - isOutlined: Controls the style of the text input, by default is *false*
    ///    - constrainedMaxWidth: When `true`, the width is constrained, defaults to `false`
    ///    - status: The current status of the text input, default set to *enabled*
    @available(*, deprecated, message: "Use init with an OUDSTextualContent helperText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                text: Binding<String>,
                placeholder: String? = nil,
                prefix: String? = nil,
                suffix: String? = nil,
                leadingImage: OUDSImage? = nil,
                trailingAction: Self.TrailingAction? = nil,
                helperText: AttributedString,
                helperLink: Self.Helperlink? = nil,
                isOutlined: Bool = false,
                constrainedMaxWidth: Bool = false,
                status: Self.Status = .enabled)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  text: text,
                  placeholder: placeholder,
                  prefix: prefix,
                  suffix: suffix,
                  leadingImage: leadingImage,
                  trailingAction: trailingAction,
                  helperText: .rich(helperText),
                  helperLink: helperLink,
                  isOutlined: isOutlined,
                  constrainedMaxWidth: constrainedMaxWidth,
                  status: status)
    }

    // swiftlint:enable function_default_parameter_at_end
}
#endif
