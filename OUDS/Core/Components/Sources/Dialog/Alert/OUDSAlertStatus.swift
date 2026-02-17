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

public enum OUDSAlertStatus {

    /// Neutral status can be used as a generic informative alert without semantic meaning or colour association.
    /// Suitable for a wide range of contexts — such as tips, general information, or descriptive labels — where
    /// no specific feedback or urgency is required. Appropriate for help sections, dashboards, or onboarding flows.
    ///
    /// - Parameter icon: Optional `OUDSIcon`  to be displayed in the alert. Pass `nil` if no icon is needed.
    case neutral(icon: OUDSIcon? = nil)

    /// Accent status uses brand colours to draw attention to promotional or highlighted information while remaining non-critical. Ideal for marketing content,
    /// announcements, or feature highlights, where you want to subtly engage users without introducing functional semantics. Ideal for promotional banners,
    /// product updates, or customer engagement moments.
    ///
    /// - Parameter icon: Optional `OUDSIcon`  to be displayed in the alert. Pass `nil` if no icon is needed.
    case accent(icon: OUDSIcon? = nil)

    /// Positive status indicates that a task or process has been completed successfully. These alerts reassure users and confirm that no further action is needed.
    /// This status displays a dedicated default icon.
    case positive

    /// Info status is used to share neutral system information or service updates that do not require immediate action. Ideal for background processes or status
    /// messages where users simply need to stay informed.
    /// This status displays a dedicated default icon.
    case info

    /// Used to draw attention to potential issues or upcoming changes that might affect the user’s service or experience. Warnings encourage awareness but
    /// typically do not block actions.
    /// This status displays a dedicated default icon.
    case warning

    /// Negative status communicates a critical issue or error that prevents the user from proceeding until it is resolved. These alerts remain visible until
    /// the problem is fixed or dismissed by the user.
    /// This status displays a dedicated default icon.
    case negative
}
