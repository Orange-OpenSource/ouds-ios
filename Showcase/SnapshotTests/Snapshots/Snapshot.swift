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

import SnapshotTesting
import SwiftUI

enum Snapshot {

    // =========
    // MARK: API
    // =========

    /// Asserts that a given view matches a reference on disk.
    /// The test is executed on light and dark modes on an iPhone 13 Pro Max.
    ///
    /// - Parameters:
    ///   - view: The view to compare against a reference.
    ///   - snapshotting: A strategy for serializing, deserializing, and comparing values.
    ///   - file: The file in which failure occurred. Defaults to the file path of the test case in
    ///     which this function was called.
    ///   - testName: The name of the test in which failure occurred. Defaults to the function name of
    ///     the test case in which this function was called.
    ///   - line: The line number on which failure occurred. Defaults to the line number on which this
    ///     function was called.
    static func assert<Content>(_ view: Content, file: StaticString = #file, testName: String = #function, line: UInt = #line) where Content: View {
        let viewController = UIHostingController(rootView: view)
        assertSnapshot(
            of: viewController,
            as: .image(on: .iPhone13ProMax, traits: Self.darkStyleTraits),
            file: file,
            testName: testName,
            line: line)

        assertSnapshot(
            of: viewController,
            as: .image(on: .iPhone13ProMax, traits: Self.lightStyleTraits),
            file: file,
            testName: testName,
            line: line)
    }

    static func assert<Content>(_ views: [Content], file: StaticString = #file, testName: String = #function, line: UInt = #line) where Content: View {
        for view in views {
            assert(view, file: file, testName: testName, line: line)
        }
    }

    // ============================
    // MARK: Private Implementation
    // ============================

    private static let darkStyleTraits = UITraitCollection(userInterfaceStyle: .dark)
    private static let lightStyleTraits = UITraitCollection(userInterfaceStyle: .light)

    /// Add support for phone 14 Pro Max.
    private static let iPhone14ProMax = iPhone14ProMax(.portrait)

    private static func iPhone14ProMax(_ orientation: ViewImageConfig.Orientation) -> ViewImageConfig {
        let safeArea: UIEdgeInsets
        let size: CGSize
        switch orientation {
        case .portrait:
            safeArea = .init(top: 59, left: 0, bottom: 34, right: 0)
            size = .init(width: 430, height: 932)
        case .landscape:
            safeArea = .init(top: 0, left: 59, bottom: 21, right: 59)
            size = .init(width: 932, height: 430)
        }
        return .init(safeArea: safeArea, size: size, traits: iPhone14ProMaxTraits(orientation))
    }

    private static func iPhone14ProMaxTraits(_ orientation: ViewImageConfig.Orientation) -> UITraitCollection {
        let base: [UITraitCollection] = [
            .init(forceTouchCapability: .available),
            .init(layoutDirection: .leftToRight),
            .init(preferredContentSizeCategory: .medium),
            .init(userInterfaceIdiom: .phone),
        ]
        switch orientation {
        case .portrait:
            return .init(traitsFrom: base + [
                .init(horizontalSizeClass: .compact),
                .init(verticalSizeClass: .regular),
            ])
        case .landscape:
            return .init(traitsFrom: base + [
                .init(horizontalSizeClass: .regular),
                .init(verticalSizeClass: .compact),
            ])
        }
    }
}
