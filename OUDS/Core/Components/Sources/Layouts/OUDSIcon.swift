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

// MARK: - OUDS Icon

/// Use to provide an asset to ouds in order to be added in some components.
/// The icon can be flipped for RTL consideration and an associated `acessibilityLabel`must be provided
/// if the icon is not decorative.
///
/// - Since: 1.3.0
public struct OUDSIcon: View {

    // MARK: Properties

    private let asset: Image?
    private let assetName: String?
    private let flipped: Bool
    private let accessibilityLabel: String?
    private let color: MultipleColorSemanticToken?

    @Environment(\.theme) private var theme

    // MARK: Initializers

    // swiftlint:disable function_default_parameter_at_end
    /// Create the icon with asset.
    ///
    /// ```swift
    ///     OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: LocalizedStringKey("like_icon"), bundle: Bundle.module)
    /// ```
    ///
    /// - Parameters:
    ///    - asset: The asset
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - key: The text to vocalize with *Voice Over* the component must have, as as `LocalizedStringKey` for the given `Bundle`
    ///    - tableName: The name of the `.strings` file, or `nil` for the default
    ///    - bundle: The bundle in which to look up the localized string. Defaults to `Bundle.main`.
    public init(asset: Image,
                flipped: Bool = false,
                accessibilityLabel key: LocalizedStringKey,
                tableName: String? = nil,
                bundle: Bundle = .main)
    {
        let resolvedText = key.resolved(tableName: tableName, bundle: bundle)
        self.init(asset: asset, flipped: flipped, accessibilityLabel: resolvedText)
    }

    // swiftlint:enable function_default_parameter_at_end

    /// Create the icon with asset.
    ///
    /// ```swift
    ///     OUDSIcon(asset: Image("ic_heart"), accessibilityLabel: "Like")
    /// ```
    ///
    /// - Parameters:
    ///    - asset: The asset
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - accessibilityLabel:The label to be vocalized to describe the icon, default set to `nil`
    public init(asset: Image, flipped: Bool = false, accessibilityLabel: String? = nil) {
        self.asset = asset
        assetName = nil
        self.flipped = flipped
        self.accessibilityLabel = accessibilityLabel
        color = nil
    }

    /// Create the icon from its name.
    /// Internal usage to load asset from theme.
    ///
    /// - Parameters:
    ///    - assetName: The name of the asset to load as icon
    ///    - flipped: If asset must be flipped, default set to `false`
    ///    - accessibilityLabel:The label to be vocalized to describe the icon, default set to `nil`
    ///    - color: The color to apply to the icon, default set to `nil`
    init(assetName: String, flipped: Bool = false, accessibilityLabel: String? = nil, color: MultipleColorSemanticToken? = nil) {
        self.assetName = assetName
        asset = nil
        self.flipped = flipped
        self.accessibilityLabel = accessibilityLabel
        self.color = color
    }

    // MARK: Body

    public var body: some View {
        image?
            .resizable()
            .renderingMode(.template)
            .toFlip(flipped)
            .update(with: color)
            .accessibility(label: Text(accessibilityLabel ?? ""))
    }

    // MARK: Helpers

    private var image: Image? {
        if let assetName {
            return Image(decorative: assetName, bundle: theme.resourcesBundle)
        }

        return asset
    }

    // NOTE: Seen as unused by Periphery 3.4.0  (warning: Unused function 'update(with:)')
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
