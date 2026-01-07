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

import Figma
import OUDSComponents
import SwiftUI

struct OUDSBadgeConnection: FigmaConnect {

    let component = OUDSBadge.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_BADGE>"

    @FigmaEnum("State",
               mapping: ["Disabled": true,
                         "Enabled": false],
               hideDefault: true)
    var disabled = false

    @FigmaEnum("Status",
               mapping: ["Neutral": .neutral,
                         "Accent": .accent,
                         "Positive": .positive,
                         "Info": .info,
                         "Warning": .warning,
                         "Negative": .negative])
    var status = OUDSBadge.Status.negative

    @FigmaEnum("Size",
               mapping: ["Xsmall": .extraSmall,
                         "Small": .small,
                         "Medium": .medium,
                         "Large": .large],
               hideDefault: true)
    var size = OUDSBadge.StandardSize.medium

    var body: some View {
        OUDSBadge(accessibilityLabel: "Accessibility label", status: status, size: size)
            .disabled(disabled)
    }
}

struct OUDSBadgeCountConnection: FigmaConnect {

    let component = OUDSBadge.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_BADGE_COUNT>"

    @FigmaEnum("State",
               mapping: ["Disabled": true,
                         "Enabled": false],
               hideDefault: true)
    var disabled = false

    @FigmaEnum("Status",
               mapping: ["Neutral": .neutral,
                         "Accent": .accent,
                         "Positive": .positive,
                         "Info": .info,
                         "Warning": .warning,
                         "Negative": .negative])
    var status = OUDSBadge.Status.negative

    @FigmaEnum("Size",
               mapping: ["Medium": .medium,
                         "Large": .large],
               hideDefault: true)
    var size = OUDSBadge.IllustrationSize.medium

    @FigmaString("✏️ Number")
    var count = "0"

    var body: some View {
        OUDSBadge(count: UInt8(count) ?? 0, accessibilityLabel: "Accessibility label", status: status, size: size)
            .disabled(disabled)
    }
}

struct OUDSBadgeIconConnection: FigmaConnect {

    let component = OUDSBadge.self
    let figmaNodeUrl = "<FIGMA_COMPONENTS_BADGE_ICON>"

    @FigmaEnum("State",
               mapping: ["Disabled": true,
                         "Enabled": false],
               hideDefault: true)
    var disabled = false

    @FigmaEnum("Status",
               mapping: ["Neutral": .neutral(icon: Image("ic_heart")),
                         "Accent": .accent(icon: Image("ic_heart")),
                         "Positive": .positive,
                         "Info": .info,
                         "Warning": .warning,
                         "Negative": .negative])
    var status = OUDSBadge.StatusWithIcon.negative

    @FigmaEnum("Size",
               mapping: ["Medium": .medium,
                         "Large": .large],
               hideDefault: true)
    var size = OUDSBadge.IllustrationSize.medium

    var body: some View {
        OUDSBadge(status: status, accessibilityLabel: "Accessibility label", size: size)
            .disabled(disabled)
    }
}
