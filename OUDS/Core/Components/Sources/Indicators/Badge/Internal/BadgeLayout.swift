//
//  BadgeLayout.swift.tmp.swift
//  OUDS
//
//  Created by Ludovie Pinel Le Roux on 12/11/2025.
//

import SwiftUI

/// The status of an `OUDSBadge` determines the leading element, the background
/// and the content colors of the tag according to the category.
struct BadgeLayout {

    let type: Self.`Type`
    let status: OUDSBadge.Status

    /// The type element of the badge
    enum `Type` {
        /// Means no element on badge
        case empty(size: OUDSBadge.StandardSize)

        /// To display a count on badge
        case count(value: UInt, size: OUDSBadge.IllustrationSize)

        /// To display an icon. For `OUDSTag.Status.Category.neutral` and `OUDSTag.Status.Category.accent`
        /// the decorative icon need to be provided. For other categories, a default icon is already provided.
        case icon(customIcon: Image? = nil, flipIcon: Bool = false, size: OUDSBadge.IllustrationSize)
    }

    /// Internal initializer
    ///
    /// - Parameters:
    ///    - type: The type of the badge
    ///    - status: The category of the status
    init(type: Self.`Type`, status: OUDSBadge.Status) {
        self.type = type
        self.status = status
    }

    var size: OUDSBadge.StandardSize {
        switch type {
        case let .empty(size):
            size
        case let .count(_, illustrationSize),
             let .icon(_, _, illustrationSize):
            illustrationSize.standardSize
        }
    }
}
