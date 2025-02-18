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

import Foundation

extension Bundle {

    // MARK: API

    /// Marketing version in semantic versioning
    var marketingVersion: String {
        string(forInfoDictionaryKey: "CFBundleShortVersionString") ?? "0.0.0"
    }

    /// Incremental build number
    var buildNumber: String {
        string(forInfoDictionaryKey: kCFBundleVersionKey as String) ?? "-1"
    }

    /// Type of build. Should be within:
    /// - DEBUG for developers builds
    /// - ALPHA for features tests CI/CD builds
    /// - BETA for develop CI/CD builds
    /// - PROD for main releases (CI/CD builds)
    var buildType: String? {
#if DEBUG
        "DEBUG"
#else
        string(forInfoDictionaryKey: "OUDSBuildType")
#endif
    }

    /// A value filled outside the app (e.g. by the CI/CD chain) for debug purposes to help to match the current app codebase to some CI/CD build tag
    var buildTag: String? {
#if DEBUG
        nil
#else
        string(forInfoDictionaryKey: "OUDSBuildTag")
#endif
    }

    /// A value filled outside the app (e.g. by the CI/CD chain) for debug purposes to help to match the current app codebase to some issues to test
    var buildDetails: String? {
#if DEBUG
        nil
#else
        string(forInfoDictionaryKey: "OUDSBuildDetails")
#endif
    }

    var fullBuildType: String {
        let type = buildType ?? ""
        var tag = ""
        if let buildTag = buildTag, !buildTag.isEmpty {
            tag = " (\(buildTag))"
        }
        return "\(type)\(tag)"
    }

    var tokensLibraryVersion: String {
        "Tokens versions (components, semantic, raw): 0.6.0 / 0.5.0 / 0.5.0"
    }

    // MARK: Private Implementation

    private func string(forInfoDictionaryKey key: String) -> String? {
        object(forInfoDictionaryKey: key) as? String
    }
}
