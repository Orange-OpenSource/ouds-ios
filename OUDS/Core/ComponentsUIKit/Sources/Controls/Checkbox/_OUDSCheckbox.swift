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

#if canImport(UIKit)
import OUDSComponents // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import OUDSFoundations // NOTE: "unused" false positive by periphery (https://github.com/peripheryapp/periphery/issues/908)
import SwiftUI
import UIKit

// MARK: - OUDSThemesContract Checkbox View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSCheckbox`
/// Helps to manage the states and values of the `OUDSCheckbox` and tries to expose a UIKit-like API for actions.
public final class OUDSCheckboxViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI checkbox
    private var hostingController: UIHostingController<OUDSCheckboxWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the checkbox SwiftUI state
    private let checkboxViewModel: OUDSCheckboxViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the checkbox checked state (`OUDSCheckbox/isOn`)
    public var isOn: Bool {
        get { checkboxViewModel.isOn }
        set {
            let oldValue = checkboxViewModel.isOn
            checkboxViewModel.isOn = newValue
            if oldValue != newValue {
                sendActions(for: .valueChanged)
            }
        }
    }

    // MARK: Initialization

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSCheckbox`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///    - isOn: If the checkbox is checked or not
    ///    - accessibilityLabel: The accessibility label to vocalise for the checkbox
    ///    - isError: If the checkbox is in error state or not
    init(isOn: Bool, accessibilityLabel: String, isError: Bool) {
        checkboxViewModel = OUDSCheckboxViewModel(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel,
            isError: isError)
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
        let swiftUIWrapperView = OUDSCheckboxWrapper(model: checkboxViewModel)
        hostingController = UIHostingController(rootView: swiftUIWrapperView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false // Autolayout
    }

    private func setupInternalCallback() {
        checkboxViewModel.onInternalValueChanged = { [weak self] _ in
            guard let self else { return }
            DispatchQueue.main.async {
                self.sendActions(for: .valueChanged)
            }
        }
    }
}

// MARK: - OUDSThemesContract Checkbox Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSCheckbox` and exposes bindings
/// and view model.
struct OUDSCheckboxWrapper: View {

    @ObservedObject var model: OUDSCheckboxViewModel

    private var checkboxBinding: Binding<Bool> {
        Binding(
            get: { model.isOn },
            set: { newValue in
                model.isOn = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSCheckbox(
            isOn: checkboxBinding,
            accessibilityLabel: model.accessibilityLabel,
            isError: model.isError)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDSThemesContract Checkbox View Model

/// The `SwiftUI` view model used inside the `OUDSCheckboxWrapper` to manage the state of the embeded `OUDSCheckbox`
@MainActor final class OUDSCheckboxViewModel: ObservableObject {

    /// For `OUDSCheckbox/isOn`
    @Published var isOn: Bool
    /// For `OUDSCheckbox/isError`
    var isError: Bool
    /// For `OUDSCheckbox/accessibilityLabel`
    var accessibilityLabel: String

    var onInternalValueChanged: ((Bool) -> Void)?

    init(isOn: Bool,
         accessibilityLabel: String,
         isError: Bool)
    {
        self.isOn = isOn
        self.accessibilityLabel = accessibilityLabel
        self.isError = isError
    }

    deinit {}
}

// MARK: - OUDSThemesContract SwiftUI Bridge

extension OUDSUIKitBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSCheckbox` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func checkboxChanged(_ sender: OUDSCheckboxViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSCheckbox inside your UIViewController
    ///     OUDSUIKit.createCheckbox(isOn: true,
    ///                              accessibilityLabel: "Meaningfull accessibility label",
    ///                              isError: true,
    ///                              target: self, // Where self is the UIViewController
    ///                              action: #selector(checkboxChanged(_:)))
    /// ```
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - isOn: True if checkbox is selected, false otherwise
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - target: Reference to the `UIViewController` hosting the component to create
    ///    - action: The action to trigger defined in the `target` when the value of the `OUDSCheckbox` has changed
    @MainActor public static func createCheckbox(isOn: Bool,
                                                 accessibilityLabel: String,
                                                 isError: Bool = false,
                                                 target: Any?,
                                                 action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSCheckbox(isOn:accessibilityLabel:isError)")

        let uikitCheckboxViewController = OUDSCheckboxViewController(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel,
            isError: isError)
        uikitCheckboxViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitCheckboxViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
#endif
