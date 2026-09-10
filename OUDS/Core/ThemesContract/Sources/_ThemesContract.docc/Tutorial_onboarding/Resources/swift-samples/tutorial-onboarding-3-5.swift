import OUDSSwiftUI
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

struct CategorySelector: View {

    @Binding var selectedComponentGroup: ComponentGroup
    @Environment(\.theme) private var theme
    @Environment(\.oudsHorizontalSizeClass) private var oudsHorizontalSizeClass

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: theme.spaces.fixedSmall) {
                ForEach(ComponentGroup.allCases, id: \.self) { group in
                    OUDSFilterChip(text: group.description, selected: group == selectedComponentGroup) {
                        selectedComponentGroup = group
                    }
                }
            }
            .padding(.horizontal, theme.gridMargin(for: oudsHorizontalSizeClass))
        }
    }
}
