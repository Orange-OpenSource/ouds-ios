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

// Conditional import and use of UIKit for documentation generation (see #628 #626)

#if canImport(UIKit)
import OUDSFoundations
#endif
import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

// MARK: - Accessible Navigation Title Modifier

/// `ViewModifier` which defines a navigation title for the calling `View` and also uses `UIAccessibility` to notify for screen changed.
struct AccessibleNavigationTitleModifier: ViewModifier {

    // MARK: Properties

    /// The title used as a `LocalizedStringKey` to add as navigation title
    let title: String
    let subtitle: String?
    let hasLargeTitle: Bool

#if canImport(UIKit)
    /// Elapsed time to wait before sending an accessibility notification of a screen change with the `title` in argument
    let deadline: DispatchTime
#endif

    @Environment(\.theme) private var theme
    @Environment(\.forceOUDSLegacyLayout) private var forceOUDSLegacyLayout
    @Environment(\.isLiquidGlassDisabled) private var isLiquidGlassDisabled

    // MARK: Body

    func body(content: Content) -> some View {
        #if os(macOS) || os(watchOS)
        content
            .navigationTitle(LocalizedStringKey(title))
            .oudsNavigationSubtitle(subtitle)
        #else
        Group {
            if let subtitle {
                if #available(iOS 26.0, *), !(forceOUDSLegacyLayout || isLiquidGlassDisabled) {
                    content
                        .navigationTitle(LocalizedStringKey(title))
                        .oudsNavigationSubtitle(subtitle)
                } else {
                    if let fonts, !hasLargeTitle {
                        content
                            .toolbar {
                                ToolbarItem(placement: .principal) {
                                    VStack(alignment: .center, spacing: 0) {
                                        Text(title.localized())
                                            .font(fonts.0)
                                            .foregroundColor(theme.colors.contentDefault)

                                        Text(subtitle.localized())
                                            .font(fonts.1)
                                            .foregroundColor(theme.colors.contentMuted)
                                    }
                                }
                            }
                    } else {
                        content.navigationTitle(LocalizedStringKey(title))
                    }
                }
            } else {
                content.navigationTitle(LocalizedStringKey(title))
            }
        }
        .navigationBarTitleDisplayMode(hasLargeTitle ? .large : .inline)
        .onAppear {
#if canImport(UIKit) && !os(watchOS)
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                UIAccessibility.post(notification: .screenChanged, argument: title)
            }
#endif
        }
        #endif
    }

    // MARK: Font helpers
    #if !os(macOS)
    private var fonts: (title: Font, subtitle: Font)? {
        guard let fontFamily = theme.fontFamily else {
            return nil
        }

        let titleFontName = kApplePostScriptFontNames[orKey: PSFNMK(fontFamily, Font.Weight.medium)]

        guard let uiTitleFont = UIFont(name: titleFontName, size: 17) else {
            return nil
        }

        guard let uiSubtitleFont = UIFont(name: titleFontName, size: 12) else {
            return nil
        }

        return (Font(uiTitleFont), Font(uiSubtitleFont))
    }
    #endif
}

extension View {
    @ViewBuilder
    func oudsNavigationSubtitle(_ subtitle: String? = nil) -> some View {
        #if os(iOS) || os(macOS)
        if #available(iOS 26.0, *), let subtitle {
            navigationSubtitle(Text(LocalizedStringKey(subtitle)))
        } else {
            self
        }
        #else
        self
        #endif
    }
}

// MARK: - Request Accessible Focus Modifier

/// `ViewModifier` to apply on a `View` so as to request the focus after a given time.
struct RequestAccessibleFocusModifier: ViewModifier {

    /// Flag to listen saying whether or not the `View` got the focus
    @AccessibilityFocusState var requestFocus: Bool
    // NOTE: "never used" false positive with periphery (https://github.com/peripheryapp/periphery/issues/979)

    /// Elapsed time to wait before requesting the focus
    let deadline: DispatchTime

    func body(content: Content) -> some View {
        content.onAppear {
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                requestFocus = true
            }
        }
    }
}

// MARK: - Accessibility Focusable

/// Value to use as a `AccessibilityFocusState` to request focus.
///
/// ```swift
///     // In your view, add the following property
///     @AccessibilityFocusState private var requestFocus: AccessibilityFocusable?
///
///     var body: some View {
///         SomeView()
///         .accessibilityFocused($requestFocus, equals: .some(id: element.id))
///         .requestAccessibleFocus(_requestFocus, for: .some(id: elements[0].id))
///     }
/// ```
///
/// - Since: 0.8.0
@frozen public enum AccessibilityFocusable: Hashable {
    case none
    case some(id: String)
}

// MARK: - Restricted Request Accessible Focus Modifier

/// `ViewModifier` to apply on a `View` to request the focus on that `View` after a given time
struct RestrictedRequestAccessibleFocusModifier: ViewModifier {

    /// Flag to listen saying whether or not the `View` got the focus
    @AccessibilityFocusState var requestFocus: AccessibilityFocusable?
    // NOTE: "never used" false positive with periphery (https://github.com/peripheryapp/periphery/issues/979)

    /// The target to give the focus after the deadLine` delay
    let target: AccessibilityFocusable

    /// Elapsed time to wait before requesting the focus
    let deadline: DispatchTime

    func body(content: Content) -> some View {
        content.onAppear {
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                requestFocus = target
            }
        }
    }
}
