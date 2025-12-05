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
        let topOffset = getTopOffset()

        let finalPosition = basePosition + topOffset + (indicatorHeight / 2)

        print("🔍 Top Indicator Position (\(deviceModel)):")
        print("   - Geometry height: \(geometry.size.height)")
        print("   - Tab bar height: \(tabBarHeight)")
        print("   - Safe area bottom: \(safeAreaBottom)")
        print("   - Top offset: \(topOffset)")
        print("   - Final Y position: \(finalPosition)")

        return finalPosition
    }

    /// Retourne l'offset depuis le haut de la tab bar selon l'appareil et l'orientation
    private func getTopOffset() -> CGFloat {
        switch deviceModel {
        case .se1, .se2, .se3, .regular6to8, .plus6to8:
            // Appareils avec Touch ID
            isLandscape ? 1.5 : 2.0

        case .x, .xs, .pro11:
            // iPhone X, XS, 11 Pro (écrans plus petits avec Face ID)
            isLandscape ? 2.0 : 3.0

        case .xr, .regular11:
            // iPhone XR, 11 (écrans moyens avec Face ID)
            isLandscape ? 2.5 : 3.5

        case .xsMax, .proMax11:
            // iPhone XS Max, 11 Pro Max (écrans plus grands - ajustement spécial)
            isLandscape ? 4.0 : 6.0

        case .mini12, .mini13:
            // iPhone 12 mini, 13 mini (écrans compacts avec Face ID)
            isLandscape ? 2.0 : 3.0

        case .regular12, .pro12, .regular13, .pro13, .regular14:
            // iPhone 12/13/14 standard
            isLandscape ? 2.5 : 4.0

        case .proMax12, .proMax13, .plus14:
            // iPhone 12/13 Pro Max, 14 Plus (grands écrans)
            isLandscape ? 4.0 : 6.0

        case .pro14, .regular15, .pro15:
            // iPhone 14 Pro, 15, 15 Pro (avec Dynamic Island)
            isLandscape ? 3.0 : 4.5

        case .proMax14, .plus15, .proMax15:
            // iPhone 14 Pro Max, 15 Plus, 15 Pro Max (très grands écrans)
            isLandscape ? 4.5 : 7.0
        }
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

    /// Modèles d'iPhone avec leurs caractéristiques
    enum iPhoneModel: CustomStringConvertible {
        case se1, se2, se3
        case regular6to8
        case plus6to8
        case x, xs, pro11
        case xr, regular11
        case xsMax, proMax11
        case mini12, mini13
        case regular12, pro12, regular13, pro13, regular14
        case proMax12, proMax13, plus14
        case pro14, regular15, pro15
        case proMax14, plus15, proMax15

        var hasHomeButton: Bool {
            switch self {
            case .se1, .se2, .se3, .regular6to8, .plus6to8:
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
            case .se1: "iPhone SE (1st gen)"
            case .se2: "iPhone SE (2nd gen)"
            case .se3: "iPhone SE (3rd gen)"
            case .regular6to8: "iPhone 6/7/8"
            case .plus6to8: "iPhone 6/7/8 Plus"
            case .x: "iPhone X"
            case .xs: "iPhone XS"
            case .pro11: "iPhone 11 Pro"
            case .xr: "iPhone XR"
            case .regular11: "iPhone 11"
            case .xsMax: "iPhone XS Max"
            case .proMax11: "iPhone 11 Pro Max"
            case .mini12: "iPhone 12 mini"
            case .mini13: "iPhone 13 mini"
            case .regular12: "iPhone 12"
            case .pro12: "iPhone 12 Pro"
            case .regular13: "iPhone 13"
            case .pro13: "iPhone 13 Pro"
            case .regular14: "iPhone 14"
            case .proMax12: "iPhone 12 Pro Max"
            case .proMax13: "iPhone 13 Pro Max"
            case .plus14: "iPhone 14 Plus"
            case .pro14: "iPhone 14 Pro"
            case .regular15: "iPhone 15"
            case .pro15: "iPhone 15 Pro"
            case .proMax14: "iPhone 14 Pro Max"
            case .plus15: "iPhone 15 Plus"
            case .proMax15: "iPhone 15 Pro Max"
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
            // Utiliser d'autres critères pour différencier si nécessaire
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
        default:
            return .regular12 // Fallback
        }
    }
}
#endif
