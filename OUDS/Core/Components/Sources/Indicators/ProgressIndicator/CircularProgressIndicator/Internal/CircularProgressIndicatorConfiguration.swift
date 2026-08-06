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

/// Internal configuration used to draw an ``OUDSCircularProgressIndicator`` or an
/// ``OUDSAssistantCircularProgressIndicator``.
///
/// - `progress`: when `nil`, the indicator is **indeterminate**. When set, the value is clamped to `[0, 1]`.
/// - `status`: the color status of the indicator. Ignored when ``appearance`` is ``Appearance/assistant``.
/// - `track`: whether the track is displayed under the progress arc.
/// - `gapSize`: the size of the gap between the indicator and the track.
/// - `animated`: whether the determinate indicator animates on display and on progress updates.
///   Ignored in indeterminate mode (the Android Material 3 animation is intrinsic to the mode).
/// - `appearance`: whether the indicator uses the standard color mapping (from ``status``) or the AI
///   assistant color cycling (`colorAiPrimary` → `colorAiSecondary` → `colorAiTertiary` → `colorAiQuaternary`).
struct CircularProgressIndicatorConfiguration: Equatable, Sendable {

    // MARK: - Types

    /// Visual appearance of the circular progress indicator.
    ///
    /// - `standard`: color driven by the ``OUDSCircularProgressIndicator/Status`` mapping.
    /// - `assistant`: AI assistant appearance — the foreground color cycles through the four
    ///   `theme.colors.colorAi*` tokens once per sweep respiration cycle (see
    ///   ``CircularProgressIndicatorAnimatorView``). Only meaningful in indeterminate mode.
    enum Appearance: Equatable, Sendable {
        case standard
        case assistant
    }

    // MARK: - Properties

    /// Clamped progress in `[0, 1]`; `nil` means the indicator is indeterminate
    let progress: Double?

    /// Color status of the indicator. Ignored when ``appearance`` is ``Appearance/assistant``.
    let status: OUDSCircularProgressIndicator.Status

    /// Whether the track is displayed under the indicator arc.
    let track: Bool

    /// Size of the gap between the indicator and the track.
    let gapSize: OUDSCircularProgressIndicator.GapSize

    /// Whether the determinate indicator animates on first display (reveal from `0`) and on subsequent
    /// changes of `progress`. Ignored in indeterminate mode.
    let animated: Bool

    /// Visual appearance of the indicator. Defaults to ``Appearance/standard``.
    let appearance: Appearance

    // MARK: - Initializer

    /// Creates a configuration. The `progress` value is clamped to `[0, 1]` when non-nil.
    ///
    /// Invariants (enforced as safety nets so no future call site can bypass the design intent):
    ///
    /// - When ``appearance`` is ``Appearance/assistant``, ``track`` is forced to `false`
    ///   regardless of the argument passed. The AI assistant variant never displays a track
    ///   behind the animated arc.
    /// - When ``appearance`` is ``Appearance/assistant``, ``gapSize`` is forced to
    ///   ``OUDSCircularProgressIndicator/GapSize/default`` regardless of the argument passed.
    ///   The AI assistant variant does not support a compact rendering.
    ///
    /// - Parameters:
    ///    - progress: The current progress in the `[0, 1]` range, or `nil` for indeterminate.
    ///    - status: The color status of the indicator. Ignored when `appearance` is `.assistant`.
    ///    - track: Whether the track is displayed. Forced to `false` when `appearance == .assistant`.
    ///    - gapSize: The size of the gap between the indicator and the track. Forced to `.default`
    ///      when `appearance == .assistant`.
    ///    - animated: Whether the determinate indicator animates. Defaults to `true`. Ignored in indeterminate mode.
    ///    - appearance: Visual appearance. Defaults to ``Appearance/standard``.
    init(progress: Double?,
         status: OUDSCircularProgressIndicator.Status,
         track: Bool,
         gapSize: OUDSCircularProgressIndicator.GapSize,
         animated: Bool = true,
         appearance: Appearance = .standard)
    {
        if let progress {
            self.progress = min(max(progress, 0.0), 1.0)
        } else {
            self.progress = nil
        }
        self.status = status
        self.track = (appearance == .assistant) ? false : track
        self.gapSize = (appearance == .assistant) ? .default : gapSize
        self.animated = animated
        self.appearance = appearance
    }

    // MARK: - Helpers

    /// Convenience: `true` when the indicator is indeterminate.
    var isIndeterminate: Bool {
        progress == nil
    }
}

// MARK: - Status / GapSize conformance

extension OUDSCircularProgressIndicator.Status: Equatable {}

extension OUDSCircularProgressIndicator.GapSize: Equatable {}
