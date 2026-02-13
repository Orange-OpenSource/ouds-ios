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

/// Use to provide an asset to ouds in order to be added in some components.
/// The icon can be fliped for RTL concideration and an associated `acessibilityLabel`must be provided
/// if the icon is not decrorative.
public struct OUDSIcon: View {

    // - MARK: Properties

    private let asset: Image?
    private let assetName: String?
    private let flipped: Bool
    private let accessibilityLabel: String?
    private let color: MultipleColorSemanticToken?

    @Environment(\.theme) private var theme

    // - MARK: Initialiazers

    /// Create the icon with asset.
    ///
    /// - Parameters:
    ///     - asset: The asset
    ///     - flipped: If asset must be flipped
    ///     - accessibilityLabel: label to be vocalized to describe the icon
    @MainActor
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
    ///     - assetName: The name of the asset
    ///     - flipped: If asset must be flipped
    ///     - accessibilityLabel: label to be vocalized to describe the icon
    @MainActor
    init(assetName: String, flipped: Bool = false, accessibilityLabel: String? = nil, color: MultipleColorSemanticToken? = nil) {
        self.assetName = assetName
        asset = nil
        self.flipped = flipped
        self.accessibilityLabel = accessibilityLabel
        self.color = color
    }

    // - MARK: Body

    public var body: some View {
        image?
            .resizable()
            .renderingMode(.template)
            .toFlip(flipped)
            .update(with: color)
            .accessibility(label: Text(accessibilityLabel ?? ""))
    }

    private var image: Image? {
        if let assetName {
            return Image(decorative: assetName, bundle: theme.resourcesBundle)
        }

        return asset
    }

    func update(with color: MultipleColorSemanticToken) -> some View {
        oudsForegroundColor(color)
    }
}

extension View {
    @ViewBuilder
    fileprivate func update(with color: MultipleColorSemanticToken? = nil) -> some View {
        if let color {
            oudsForegroundColor(color)
        } else {
            self
        }
    }
}
