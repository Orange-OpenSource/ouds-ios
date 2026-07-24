import SwiftUI

enum ComponentGroup: CaseIterable, CustomStringConvertible {
    case control, indicator, navigation

    var description: String {
        switch self {
        case .control: "Control"
        case .indicator: "Indicator"
        case .navigation: "Navigation"
        }
    }
}
