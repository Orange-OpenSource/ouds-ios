import OUDSSwiftUI
import SwiftUI

struct Indicator: View {

    @Environment(\.theme) private var theme
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: theme.spaces.scaledMedium.dimension(for: verticalSizeClass ?? .regular)) {
            HStack(spacing: theme.spaces.fixedSmall) {
                OUDSBadgeStandard(accessibilityLabel: "Badge positive", status: .positive, size: .large)
                OUDSBadgeCount(1, accessibilityLabel: "Badge count", status: .negative, size: .large)
                OUDSBadgeIcon(status: .info, accessibilityLabel: "Badge info", size: .large)
            }
        }
    }
}

#Preview {
    ScrollView {
        Indicator().orangePreview()
    }
}
