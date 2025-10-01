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

import OUDSComponents
import OUDSFoundations
import SwiftUI
import UIKit

// MARK: - OUDS Switch Item View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSSwitchItem`
/// Helps to manage the states and values of the `OUDSSwitchItem` and tries to expose a UIKit-like API for actions.
public final class OUDSSwitchItemViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI switch
    private var hostingController: UIHostingController<OUDSSwitchItemWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the switch item SwiftUI state
    private let switchItemViewModel: OUDSSwitchItemViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the switch item checked state (`OUDSSwitchItem/isOn`)
    public var isOn: Bool {
        get { switchItemViewModel.isOn }
        set {
            let oldValue = switchItemViewModel.isOn
            switchItemViewModel.isOn = newValue
            if oldValue != newValue {
                sendActions(for: .valueChanged)
            }
        }
    }

    // MARK: Initialization

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSSwitchItem`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///   - label: The main label text of the switch.
    ///   - isOn: A property that determines wether the indicator is ticked (selected) or not (unselected)
    ///   - helper: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - flipIcon: Set to true to reverse the image (i.e. flip vertically)
    ///   - isReversed: `true` if the switch indicator must be in trailing position,` false` otherwise.
    ///   - isError: `true` if the look and feel of the component must reflect an error state
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet
    ///   - hasDivider: If `true` a divider is added at the bottom of the view
    init(label: String,
         isOn: Bool,
         helper: String?,
         icon: Image?,
         flipIcon: Bool,
         isReversed: Bool,
         isError: Bool,
         isReadOnly: Bool,
         hasDivider: Bool)
    {
        switchItemViewModel = OUDSSwitchItemViewModel(label: label,
                                                      isOn: isOn,
                                                      helper: helper,
                                                      icon: icon,
                                                      flipIcon: flipIcon,
                                                      isReversed: isReversed,
                                                      isError: isError,
                                                      isReadOnly: isReadOnly,
                                                      hasDivider: hasDivider)
        targets = []
        super.init(nibName: nil, bundle: nil)
        setupInternalCallback()
        setupHostingController()
    }

    required init?(coder: NSCoder) {
        OL.fatal("init(coder:) has not been implemented")
    }

    deinit {}

    // MARK: Target-Action methods

    /// Adds a target for the component
    ///
    /// - Parameters:
    ///    - target: Some view controller able to make an action
    ///    - action: The action to process
    ///    - controlEvents: Some event for the component
    public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        guard let target = target as? AnyObject else { return }
        targets.append((target: target, action: action, events: controlEvents))
    }

    /// Removes a target for the component
    ///
    /// - Parameters:
    ///    - target: Some view controller able to make an action
    ///    - action: The action to process
    ///    - controlEvents: Some event for the component
    public func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event) {
        guard let target = target as? AnyObject else { return }
        targets.removeAll { targetAction in
            targetAction.target === target &&
                (action == nil || targetAction.action == action) &&
                targetAction.events == controlEvents
        }
    }

    /// Removes all the defined targets
    public func removeAllTargets() {
        targets.removeAll()
    }

    /// If there are targets able to manage the given event, perform their action
    /// - Parameter controlEvents: The even to process if managed
    private func sendActions(for controlEvents: UIControl.Event) {
        targets
            .filter { $0.events == controlEvents }
            .forEach { targetAction in
                _ = targetAction.target.perform(targetAction.action, with: self)
            }
    }

    // MARK: Set up

    private func setupHostingController() {
        let swiftUIWrapperView = OUDSSwitchItemWrapper(model: switchItemViewModel)
        hostingController = UIHostingController(rootView: swiftUIWrapperView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false // Autolayout
    }

    private func setupInternalCallback() {
        switchItemViewModel.onInternalValueChanged = { [weak self] _ in
            guard let self else { return }
            DispatchQueue.main.async {
                self.sendActions(for: .valueChanged)
            }
        }
    }
}

// MARK: - OUDS Switch Item Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSSwitchItem` and exposes bindings
/// and view model.
struct OUDSSwitchItemWrapper: View {

    @ObservedObject var model: OUDSSwitchItemViewModel

    private var switchItemBinding: Binding<Bool> {
        Binding(
            get: { model.isOn },
            set: { newValue in
                model.isOn = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSSwitchItem(model.label,
                       isOn: switchItemBinding,
                       helper: model.helper,
                       icon: model.icon,
                       flipIcon: model.flipIcon,
                       isReversed: model.isReversed,
                       isError: model.isError,
                       isReadOnly: model.isReadOnly,
                       hasDivider: model.hasDivider)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDS Switch View Model

/// The `SwiftUI` view model used inside the `OUDSSwitchItemWrapper` to manage the state of the embeded `OUDSSwitchItem`
@MainActor final class OUDSSwitchItemViewModel: ObservableObject {

    /// For `OUDSSwitchItem/label`
    var label: String
    /// For `OUDSSwitchItem/isOn`
    @Published var isOn: Bool
    /// For `OUDSSwitchItem/helper`
    var helper: String?
    /// For `OUDSSwitchItem/icon`
    var icon: Image?
    /// For `OUDSSwitchItem/flipIcon`
    var flipIcon: Bool
    /// For `OUDSSwitchItem/isReversed`
    var isReversed: Bool
    /// For `OUDSSwitchItem/isError`
    var isError: Bool
    /// For `OUDSSwitchItem/isReadOnly`
    var isReadOnly: Bool
    /// For `OUDSSwitchItem/hasDivider`
    var hasDivider: Bool

    var onInternalValueChanged: ((Bool) -> Void)?

    init(label: String,
         isOn: Bool,
         helper: String?,
         icon: Image?,
         flipIcon: Bool,
         isReversed: Bool,
         isError: Bool,
         isReadOnly: Bool,
         hasDivider: Bool)
    {
        self.label = label
        self.isOn = isOn
        self.helper = helper
        self.icon = icon
        self.flipIcon = flipIcon
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
    }

    deinit {}
}

// MARK: - OUDS SwiftUI Bridge

extension OUDSSwiftUIBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSSwitchItem` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func switchChanged(_ sender: OUDSSwitchItemViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSSwitchItem inside your UIViewController
    ///     OUDSUIKit.createSwitchItem(isOn: true,
    ///                                label: "An awesome label"
    ///                                helper: "A smaller text",
    ///                                icon: Image("ic_heart"),
    ///                                action: #selector(switchChanged(_:)))
    /// ```
    ///
    /// - Parameters:
    ///    - label: The main label text of the switch.
    ///    - isOn: A flag indicating wether or not the switch is selected
    ///    - helper: An additonal helper text, should not be empty, default set to `nil`
    ///    - icon: An optional icon,  default set to `nil`
    ///    - flipIcon: Default set to `false`, set to `true` to reverse the image (i.e. flip vertically)
    ///    - isReversed: `true` if the switch indicator must be in trailing position,` false` otherwise. Default to `false`
    ///    - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///    - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///    - target: Reference to the UIKIt `UIViewController` hosting the view
    ///    - action: The `Selector` called when the switch value changed
    @MainActor public static func createSwitchItem(_ label: String,
                                                   isOn: Bool,
                                                   helper: String? = nil,
                                                   icon: Image? = nil,
                                                   flipIcon: Bool = false,
                                                   isReversed: Bool = false,
                                                   isError: Bool = false,
                                                   isReadOnly: Bool = false,
                                                   hasDivider: Bool = false,
                                                   target: Any?,
                                                   action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSSwitchItem(label:isOn:)")

        let uikitSwitchItemViewController = OUDSSwitchItemViewController(label: label,
                                                                         isOn: isOn,
                                                                         helper: helper,
                                                                         icon: icon,
                                                                         flipIcon: flipIcon,
                                                                         isReversed: isReversed,
                                                                         isError: isError,
                                                                         isReadOnly: isReadOnly,
                                                                         hasDivider: hasDivider)
        uikitSwitchItemViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitSwitchItemViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
