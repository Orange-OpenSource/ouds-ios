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

/// Deprecated initializers of ``OUDSCheckboxItem``.
///
/// The four initializers below (label as `String` or `LocalizedStringKey` × `errorText` as `String` or `AttributedString`)
/// are deprecated in favor of the two unified initializers which accept an ``OUDSTextualContent`` for the `errorText`.
///
/// They forward to the new unified initializers so existing call sites keep working unchanged;
/// only a deprecation warning is emitted.
///
/// See `MIGRATION.md` section `v3.0.0 → v3.2.0` for the full migration guide.
@available(iOS 15, macOS 13, visionOS 1, watchOS 11, tvOS 16, *)
extension OUDSCheckboxItem { // TODO: v4 - Remove these old inits

    // swiftlint:disable function_default_parameter_at_end

    /// Creates a checkbox with a `String` label and an optional `String` error text.
    ///
    /// - Parameters:
    ///   - label: The main label text of the checkbox, must not be empty
    ///   - isOn: A binding to a property that determines whether the indicator is ticked (selected) or not (unselected)
    ///   - description: An additional helper text, a description, which should not be empty, default set to `nil`
    ///   - image: An optional ``OUDSImage``. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    ///   - action: An additional action to trigger when the checkbox has been pressed
    @available(*, deprecated, message: "Use init with an OUDSTextualContent errorText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ label: String,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        self.init(label,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText.map { .raw($0) },
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    /// Creates a checkbox with a `String` label and a rich `AttributedString` error text.
    ///
    /// - Parameters:
    ///   - label: The main label text of the checkbox, must not be empty
    ///   - isOn: A binding to a property that determines whether the indicator is ticked (selected) or not (unselected)
    ///   - description: An additional helper text, a description, which should not be empty, default set to `nil`
    ///   - image: An optional ``OUDSImage``. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An error message to display at the bottom as rich `AttributedString`. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    ///   - action: An additional action to trigger when the checkbox has been pressed
    @available(*, deprecated, message: "Use init with an OUDSTextualContent errorText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ label: String,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: AttributedString,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        self.init(label,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: .rich(errorText),
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    /// Creates a checkbox with a localized label and an optional `String` error text.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOn: A binding to a property that determines whether the indicator is ticked (selected) or not (unselected)
    ///   - description: An additional helper text, a description, which should not be empty, default set to `nil`
    ///   - image: An optional ``OUDSImage``. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An optional error message to display at the bottom. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    ///   - action: An additional action to trigger when the checkbox has been pressed
    @available(*, deprecated, message: "Use init with an OUDSTextualContent errorText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: String? = nil,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: errorText.map { .raw($0) },
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    /// Creates a checkbox with a localized label and a rich `AttributedString` error text.
    ///
    /// - Parameters:
    ///   - key: A `LocalizedStringKey` used to look up the label in the given bundle
    ///   - tableName: The name of the `.strings` file, or `nil` for the default
    ///   - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///   - isOn: A binding to a property that determines whether the indicator is ticked (selected) or not (unselected)
    ///   - description: An additional helper text, a description, which should not be empty, default set to `nil`
    ///   - image: An optional ``OUDSImage``. Default set to `nil`.
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position, `false` otherwise. Default to `false`
    ///   - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///   - errorText: An error message to display at the bottom as rich `AttributedString`. Ignored if `isError` is `false`.
    ///   - isReadOnly: True if component is in read only, default set to `false`
    ///   - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///   - constrainedMaxWidth: When `true`, the item width is constrained to a maximum value defined by the design system. Defaults to `false`.
    ///   - action: An additional action to trigger when the checkbox has been pressed
    @available(*, deprecated, message: "Use init with an OUDSTextualContent errorText. See MIGRATION.md v3.2.0.")
    @_disfavoredOverload
    public init(_ key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                isOn: Binding<Bool>,
                description: String? = nil,
                image: OUDSImage? = nil,
                isReversed: Bool = false,
                isError: Bool = false,
                errorText: AttributedString,
                isReadOnly: Bool = false,
                hasDivider: Bool = false,
                constrainedMaxWidth: Bool = false,
                action: (() -> Void)? = nil)
    {
        self.init(key,
                  tableName: tableName,
                  bundle: bundle,
                  isOn: isOn,
                  description: description,
                  image: image,
                  isReversed: isReversed,
                  isError: isError,
                  errorText: .rich(errorText),
                  isReadOnly: isReadOnly,
                  hasDivider: hasDivider,
                  constrainedMaxWidth: constrainedMaxWidth,
                  action: action)
    }

    // swiftlint:enable function_default_parameter_at_end
}
