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

// MARK: - OUDS Image

/// Use to provide an asset to ouds in order to be added in some components.
/// The icon can be flipped for RTL consideration and an associated `acessibilityLabel`must be provided
/// if the icon is not decorative.
///
/// ## Code Samples
///
/// ```swift
///     // Display an image with a label loaded from a given module (default in rendering mode)
///     OUDSImage(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
///
///     // Display an image but without tints and in original mode
///     OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like", renderingMode: .original)
///
///     // Display an icon from the active theme's own icon library, by name
///     OUDSImage(name: "patate", accessibilityLabel: "Patate")
/// ```
///
/// - Since: 1.3.0
public struct OUDSImage: View {

    // MARK: Properties

    public let asset: Image?
    public let name: String?
    public let flipped: Bool
    public let accessibilityLabel: String?
    public let color: MultipleColorSemanticToken?
    public let renderingMode: Image.TemplateRenderingMode

    public var image: Image? {
        if let name {
            return Image(decorative: name, bundle: theme.resourcesBundle)
        }

        return asset
    }

    @Environment(\.theme) private var theme

    // MARK: Initializers

    // swiftlint:disable function_default_parameter_at_end
    /// Create the icon with asset.
    ///
    /// ```swift
    ///     OUDSImage(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
    /// ```
    ///
    /// - Parameters:
    ///    - asset: The asset
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - key: The text to vocalize with *Voice Over* the component must have, as as `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    ///    - renderingMode: By default set to `.template`, allows to apply colors on given `asset` or not
    public init(asset: Image,
                flipped: Bool = false,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main,
                renderingMode: Image.TemplateRenderingMode = .template)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(asset: asset, flipped: flipped, accessibilityLabel: resolvedText, renderingMode: renderingMode)
    }

    // swiftlint:enable function_default_parameter_at_end

    /// Create the icon with asset.
    ///
    /// ```swift
    ///     OUDSImage(asset: Image("ic_heart"), accessibilityLabel: "Like")
    /// ```
    ///
    /// - Parameters:
    ///    - asset: The asset
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - accessibilityLabel:The label to be vocalized to describe the icon, default set to `nil`
    ///    - renderingMode: By default set to `.template`, allows to apply colors on given `asset` or not
    public init(asset: Image,
                flipped: Bool = false,
                accessibilityLabel: String? = nil,
                renderingMode: Image.TemplateRenderingMode = .template)
    {
        self.asset = asset
        name = nil
        self.flipped = flipped
        self.accessibilityLabel = accessibilityLabel
        color = nil
        self.renderingMode = renderingMode
    }

    /// Create the icon from its name, loaded from the active theme's own icon library.
    ///
    /// ```swift
    ///     OUDSImage(name: "communication-assistance-avatar-training-session", accessibilityLabel: "Assistance")
    /// ```
    ///
    /// - Warning: The available icon names are **not guaranteed to be stable across OUDS versions**.
    ///   They are generated from the design team's icon source files, and an icon can be renamed,
    ///   moved or removed between two releases without notice. Because the name is resolved as a
    ///   plain `String`, such a change will **not** be caught at compile time: the icon will simply
    ///   stop being displayed.
    ///
    /// - Warning: The set of available icons can also differ from one theme to another. An icon
    ///   name that exists for a given theme may not exist for another one.
    ///
    /// - Parameters:
    ///    - name: The name of the icon to load from the active theme's icon library
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - accessibilityLabel:The label to be vocalized to describe the icon, default set to `nil`
    ///    - color: The color to apply to the icon, default set to `nil`
    ///    - renderingMode: By default set to `.template`, allows to apply colors on given `asset` or not
    public init(name: String,
                flipped: Bool = false,
                accessibilityLabel: String? = nil,
                color: MultipleColorSemanticToken? = nil,
                renderingMode: Image.TemplateRenderingMode = .template)
    {
        self.name = name
        asset = nil
        self.flipped = flipped
        self.accessibilityLabel = accessibilityLabel
        self.color = color
        self.renderingMode = renderingMode
    }

    // MARK: Body

    public var body: some View {
        image?
            .resizable()
            .renderingMode(renderingMode)
            .toFlip(flipped)
            .update(with: color)
            .accessibility(label: Text(accessibilityLabel ?? ""))
    }

    // MARK: Helpers

    private func update(with color: MultipleColorSemanticToken) -> some View {
        foregroundColor(color)
    }
}

// MARK: - Extension of View

extension View {

    @ViewBuilder
    func update(with color: MultipleColorSemanticToken? = nil) -> some View {
        if let color {
            foregroundColor(color)
        } else {
            self
        }
    }
}
