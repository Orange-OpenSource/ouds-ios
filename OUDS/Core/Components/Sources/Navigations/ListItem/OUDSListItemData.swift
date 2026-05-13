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

import OUDSTokensSemantic
import SwiftUI

public protocol OUDSListItemData {
    var label: String { get }
    var isBoldLabel: Bool { get }
    var extraLabel: String? { get }
    var overline: String? { get }
    var description: String? { get }
    var helperText: String? { get }
}

public struct OUDSListItemSizeSmallData: OUDSListItemData {
    public let label: String
    public let isBoldLabel: Bool
    public let description: String?
    public let overline: String? = nil
    public let extraLabel: String? = nil
    public let helperText: String?

    public init(label: String,
                isBoldLabel: Bool = false,
                description: String? = nil,
                helperText: String? = nil)
    {
        self.label = label
        self.isBoldLabel = isBoldLabel
        self.description = description
        self.helperText = helperText
    }
}

public struct OUDSListItemSizeDefaultData: OUDSListItemData {

    public let label: String
    public let isBoldLabel: Bool
    public let description: String?
    public let overline: String?
    public let extraLabel: String?
    public let helperText: String?

    public init(label: String,
                isBoldLabel: Bool = false,
                description: String? = nil,
                overline: String? = nil,
                extraLabel: String? = nil,
                helperText: String? = nil)
    {
        self.label = label
        self.isBoldLabel = isBoldLabel
        self.description = description
        self.overline = overline
        self.extraLabel = extraLabel
        self.helperText = helperText
    }
}
