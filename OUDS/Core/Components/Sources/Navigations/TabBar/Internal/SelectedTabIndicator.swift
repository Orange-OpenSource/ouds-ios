import OUDSFoundations
import OUDSThemesContract
import OUDSTokensRaw
import OUDSTokensSemantic
import SwiftUI

#if os(iOS)
// MARK: - Selected Tab Indicator

let kTabBarAnimationDuration: CGFloat = 0.3
let kAsyncDelay: CGFloat = 0.1

/// An indicator to display at the top of the selected tab for iOS lower than 26 (i.e. no Liquid Glass)
struct SelectedTabIndicator: View {

    @Binding var selected: Int
    let count: Int

    @State private var tabBarHeight: CGFloat = 0
    @State private var safeAreaBottom: CGFloat = 0
    @State private var hasFaceID: Bool = false
    @State private var isLandscape: Bool = false
    @State private var deviceModel: iPhoneModel = .regular12

    @Environment(\.theme) private var theme
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(count)
            let indicatorWidth = theme.bar.sizeWidthActiveIndicatorCustomTop

            let xOffset = tabWidth * CGFloat(selected) + (tabWidth - indicatorWidth) / 2

            Rectangle()
                .fill(theme.bar.colorActiveIndicatorCustomSelectedEnabled.color(for: colorScheme))
                .frame(width: indicatorWidth, height: theme.bar.sizeHeightActiveIndicatorCustom)
                .position(
                    x: xOffset + indicatorWidth / 2,
                    y: calculateTopIndicatorPosition(geometry: geometry))
                .animation(.easeInOut(duration: kTabBarAnimationDuration), value: selected)
        }
        .onAppear {
            loadTabBarConfiguration()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + kAsyncDelay) {
                loadTabBarConfiguration()
            }
        }
    }

    /// Calcule la position Y pour l'indicateur en haut de la tab bar
    private func calculateTopIndicatorPosition(geometry: GeometryProxy) -> CGFloat {
        let indicatorHeight = theme.bar.sizeHeightActiveIndicatorCustom

        // Position de base : en haut de la tab bar
        let basePosition = geometry.size.height - tabBarHeight + safeAreaBottom

        // Ajuster selon l'orientation et le type d'appareil
        let topOffset = 3.0

        let finalPosition = basePosition + topOffset + (indicatorHeight / 2)

        print("🔍 Top Indicator Position (\(deviceModel)):")
        print("   - Geometry height: \(geometry.size.height)")
        print("   - Tab bar height: \(tabBarHeight)")
        print("   - Safe area bottom: \(safeAreaBottom)")
        print("   - Top offset: \(topOffset)")
        print("   - Final Y position: \(finalPosition)")

        return finalPosition
    }

    /// Charge la configuration de la tab bar selon l'appareil et l'orientation
    private func loadTabBarConfiguration() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return }

        safeAreaBottom = window.safeAreaInsets.bottom

        // Identifier le modèle d'appareil
        deviceModel = getCurrentiPhoneModel() ?? .regular12
        hasFaceID = !deviceModel.hasHomeButton

        // Détecter l'orientation
        let windowBounds = window.bounds
        isLandscape = windowBounds.width > windowBounds.height

        // Obtenir la hauteur de la tab bar
        updateTabBarHeight()

        print("🔍 Configuration loaded:")
        print("   - Device Model: \(deviceModel)")
        print("   - Device: \(hasFaceID ? "Face ID" : "Touch ID")")
        print("   - Orientation: \(isLandscape ? "Landscape" : "Portrait")")
        print("   - Tab bar height: \(tabBarHeight)")
        print("   - Safe area bottom: \(safeAreaBottom)")
    }

    /// Met à jour la hauteur de la tab bar
    private func updateTabBarHeight() {
        // Essayer de détecter la tab bar réelle
        if let detectedTabBar = findTabBar() {
            tabBarHeight = detectedTabBar.frame.height
            print("🔍 Tab bar detected with height: \(tabBarHeight)")
        } else {
            // Fallback avec les valeurs recommandées
            tabBarHeight = getRecommendedTabBarHeight()
            print("🔍 Using recommended tab bar height: \(tabBarHeight)")
        }
    }

    /// Retourne la hauteur recommandée selon l'appareil et l'orientation
    private func getRecommendedTabBarHeight() -> CGFloat {
        let heights = deviceModel.tabBarHeight
        return isLandscape ? heights.landscape : heights.portrait
    }

    /// Détecte si l'iPhone a Face ID
    private func detectFaceID() -> Bool {
        !deviceModel.hasHomeButton
    }

    /// Trouve la tab bar dans la hiérarchie des vues
    private func findTabBar() -> UITabBar? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else { return nil }

        // Méthode 1: Recherche via le root view controller
        if let tabBar = findTabBar(in: window.rootViewController) {
            return tabBar
        }

        // Méthode 2: Recherche directe dans les vues
        return findTabBarInView(window)
    }

    /// Recherche récursive dans les view controllers
    private func findTabBar(in viewController: UIViewController?) -> UITabBar? {
        guard let viewController else { return nil }

        if let tabBarController = viewController as? UITabBarController {
            return tabBarController.tabBar
        }

        // Recherche dans les enfants
        for child in viewController.children {
            if let tabBar = findTabBar(in: child) {
                return tabBar
            }
        }

        // Recherche dans les vues présentées
        if let presented = viewController.presentedViewController {
            return findTabBar(in: presented)
        }

        return nil
    }

    /// Recherche récursive dans les vues
    private func findTabBarInView(_ view: UIView) -> UITabBar? {
        if let tabBar = view as? UITabBar {
            return tabBar
        }

        for subview in view.subviews {
            if let tabBar = findTabBarInView(subview) {
                return tabBar
            }
        }

        return nil
    }
}

// MARK: - Extension pour les constantes d'appareil

extension SelectedTabIndicator {

    enum iPhoneModel: CustomStringConvertible {
        // iPhone SE series
        case se1, se2, se3, se4

        // iPhone 6-8 series
        case regular6to8, plus6to8

        // iPhone X series
        case x, xs, xsMax

        // iPhone 11 series
        case xr, regular11, pro11, proMax11

        // iPhone 12 series
        case mini12, regular12, pro12, proMax12

        // iPhone 13 series
        case mini13, regular13, pro13, proMax13

        // iPhone 14 series
        case regular14, plus14, pro14, proMax14

        // iPhone 15 series
        case regular15, plus15, pro15, proMax15

        // iPhone 16 series
        case regular16, plus16, pro16, proMax16

        // iPhone 17 series (futurs)
        case regular17, plus17, pro17, proMax17

        var hasHomeButton: Bool {
            switch self {
            case .se1, .se2, .se3, .se4, .regular6to8, .plus6to8:
                true
            default:
                false
            }
        }

        var tabBarHeight: (portrait: CGFloat, landscape: CGFloat) {
            if hasHomeButton {
                (portrait: 49.0, landscape: 32.0)
            } else {
                (portrait: 83.0, landscape: 53.0)
            }
        }

        var description: String {
            switch self {
            // SE series
            case .se1: "iPhone SE (1st gen)"
            case .se2: "iPhone SE (2nd gen)"
            case .se3: "iPhone SE (3rd gen)"
            case .se4: "iPhone SE (4th gen)"
            // 6-8 series
            case .regular6to8: "iPhone 6/7/8"
            case .plus6to8: "iPhone 6/7/8 Plus"
            // X series
            case .x: "iPhone X"
            case .xs: "iPhone XS"
            case .xsMax: "iPhone XS Max"
            // 11 series
            case .xr: "iPhone XR"
            case .regular11: "iPhone 11"
            case .pro11: "iPhone 11 Pro"
            case .proMax11: "iPhone 11 Pro Max"
            // 12 series
            case .mini12: "iPhone 12 mini"
            case .regular12: "iPhone 12"
            case .pro12: "iPhone 12 Pro"
            case .proMax12: "iPhone 12 Pro Max"
            // 13 series
            case .mini13: "iPhone 13 mini"
            case .regular13: "iPhone 13"
            case .pro13: "iPhone 13 Pro"
            case .proMax13: "iPhone 13 Pro Max"
            // 14 series
            case .regular14: "iPhone 14"
            case .plus14: "iPhone 14 Plus"
            case .pro14: "iPhone 14 Pro"
            case .proMax14: "iPhone 14 Pro Max"
            // 15 series
            case .regular15: "iPhone 15"
            case .plus15: "iPhone 15 Plus"
            case .pro15: "iPhone 15 Pro"
            case .proMax15: "iPhone 15 Pro Max"
            // 16 series
            case .regular16: "iPhone 16"
            case .plus16: "iPhone 16 Plus"
            case .pro16: "iPhone 16 Pro"
            case .proMax16: "iPhone 16 Pro Max"
            // 17 series
            case .regular17: "iPhone 17"
            case .plus17: "iPhone 17 Plus"
            case .pro17: "iPhone 17 Pro"
            case .proMax17: "iPhone 17 Pro Max"
            }
        }
    }

    /// Identifie le modèle d'iPhone actuel
    private func getCurrentiPhoneModel() -> iPhoneModel? {
        let screenBounds = UIScreen.main.nativeBounds
        let maxDimension = max(screenBounds.width, screenBounds.height)

        switch maxDimension {
        case 1_136:
            return .se1
        case 1_334:
            return safeAreaBottom > 0 ? .se2 : .regular6to8
        case 1_920:
            return .plus6to8
        case 2_436:
            // Peut être X, XS, 11 Pro, 12 mini, 13 mini
            return .xs
        case 2_688:
            return .xsMax // iPhone XS Max, 11 Pro Max
        case 1_792:
            return .xr // iPhone XR, 11
        case 2_532:
            return .regular12 // iPhone 12, 12 Pro, 13, 13 Pro, 14
        case 2_778:
            return .proMax12 // iPhone 12 Pro Max, 13 Pro Max, 14 Plus
        case 2_556:
            return .pro14 // iPhone 14 Pro, 15, 15 Pro
        case 2_796:
            return .proMax14 // iPhone 14 Pro Max, 15 Plus, 15 Pro Max
        case 2_622:
            return .regular16 // iPhone 16, 16 Pro (estimation)
        case 2_868:
            return .proMax16 // iPhone 16 Plus, 16 Pro Max (estimation)
        case 2_650:
            return .regular17 // iPhone 17, 17 Pro (estimation future)
        case 2_900:
            return .proMax17 // iPhone 17 Plus, 17 Pro Max (estimation future)
        default:
            return .regular12 // Fallback
        }
    }
}
#endif
