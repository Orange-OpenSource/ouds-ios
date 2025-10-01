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

// MARK: - OUDS Switch View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSSwitch`
/// Helps to manage the states and values of the `OUDSSwitch` and tries to expose a UIKit-like API for actions.
public final class OUDSSwitchViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI switch
    private var hostingController: UIHostingController<OUDSSwitchWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the switch SwiftUI state
    private let switchViewModel: OUDSSwitchViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the switch  checked state (`OUDSSwitch/isOn`)
    public var isOn: Bool {
        get { switchViewModel.isOn }
        set {
            let oldValue = switchViewModel.isOn
            switchViewModel.isOn = newValue
            if oldValue != newValue {
                sendActions(for: .valueChanged)
            }
        }
    }

    // MARK: Initialization

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSSwitch`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///    - isOn: If the switch button is checked or not
    ///    - accessibilityLabel: The accessibility label to vocalise for the switch
    init(isOn: Bool, accessibilityLabel: String) {
        switchViewModel = OUDSSwitchViewModel(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel)
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
        let swiftUIWrapperView = OUDSSwitchWrapper(model: switchViewModel)
        hostingController = UIHostingController(rootView: swiftUIWrapperView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false // Autolayout
    }

    private func setupInternalCallback() {
        switchViewModel.onInternalValueChanged = { [weak self] _ in
            guard let self else { return }
            DispatchQueue.main.async {
                self.sendActions(for: .valueChanged)
            }
        }
    }
}

// MARK: - OUDS Switch Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSSwitch` and exposes bindings
/// and view model.
struct OUDSSwitchWrapper: View {

    @ObservedObject var model: OUDSSwitchViewModel

    private var switchButtonBinding: Binding<Bool> {
        Binding(
            get: { model.isOn },
            set: { newValue in
                model.isOn = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSSwitch(
            isOn: switchButtonBinding,
            accessibilityLabel: model.accessibilityLabel)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDS Switch View Model

/// The `SwiftUI` view model used inside the `OUDSSwitchWrapper` to manage the state of the embeded `OUDSSwitch`
@MainActor final class OUDSSwitchViewModel: ObservableObject {

    /// For `OUDSSwitch/isOn`
    @Published var isOn: Bool
    /// For `OUDSSwitch/accessibilityLabel`
    var accessibilityLabel: String

    var onInternalValueChanged: ((Bool) -> Void)?

    init(isOn: Bool,
         accessibilityLabel: String)
    {
        self.isOn = isOn
        self.accessibilityLabel = accessibilityLabel
    }

    deinit {}
}

// MARK: - OUDS SwiftUI Bridge

extension OUDSSwiftUIBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSSwitch` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func switchChanged(_ sender: OUDSSwitchViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSSwitch inside your UIViewController
    ///     OUDSUIKit.createSwitch(isOn: true,
    ///                            accessibilityLabel: "Meaningfull accessibility label",
    ///                            target: self, // Where self is the UIViewController
    ///                            action: #selector(switchChanged(_:)))
    /// ```
    ///
    /// - Parameters:
    ///    - isOn: True if switch is selected, false otherwise
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - target: Reference to the `UIViewController` hosting the component to create
    ///    - action: The action to trigger defined in the `target` when the value of the `OUDSSwitch` has changed
    @MainActor public static func createSwitch(isOn: Bool,
                                               accessibilityLabel: String,
                                               target: Any?,
                                               action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSSwitch(isOn:accessibilityLabel)")

        let uikitSwitchViewController = OUDSSwitchViewController(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel)
        uikitSwitchViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitSwitchViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
