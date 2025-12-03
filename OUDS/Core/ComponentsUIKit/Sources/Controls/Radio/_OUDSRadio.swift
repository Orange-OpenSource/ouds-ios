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

// MARK: - OUDS Radio View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSRadio`
/// Helps to manage the states and values of the `OUDSRadio` and tries to expose a UIKit-like API for actions.
public final class OUDSRadioViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI radio button
    private var hostingController: UIHostingController<OUDSRadioWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the radio button SwiftUI state
    private let radioViewModel: OUDSRadioViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the radio button checked state (`OUDSRadio/isOn`)
    public var isOn: Bool {
        get { radioViewModel.isOn }
        set {
            let oldValue = radioViewModel.isOn
            radioViewModel.isOn = newValue
            if oldValue != newValue {
                sendActions(for: .valueChanged)
            }
        }
    }

    // MARK: Initialization

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSRadio`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///    - isOn: If the radio button is checked or not
    ///    - accessibilityLabel: The accessibility label to vocalise for the radio button
    ///    - isError: If the radio button is in error state or not
    ///    - isReadOnly: If the radio button is in read only state or not
    init(isOn: Bool, accessibilityLabel: String, isError: Bool, isReadOnly: Bool) {
        radioViewModel = OUDSRadioViewModel(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel,
            isError: isError,
            isReadOnly: isReadOnly)
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
        let swiftUIWrapperView = OUDSRadioWrapper(model: radioViewModel)
        hostingController = UIHostingController(rootView: swiftUIWrapperView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false // Autolayout
    }

    private func setupInternalCallback() {
        radioViewModel.onInternalValueChanged = { [weak self] _ in
            guard let self else { return }
            DispatchQueue.main.async {
                self.sendActions(for: .valueChanged)
            }
        }
    }
}

// MARK: - OUDS Radio Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSRadio` and exposes bindings
/// and view model.
struct OUDSRadioWrapper: View {

    @ObservedObject var model: OUDSRadioViewModel

    private var radioButtonBinding: Binding<Bool> {
        Binding(
            get: { model.isOn },
            set: { newValue in
                model.isOn = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSRadio(
            isOn: radioButtonBinding,
            accessibilityLabel: model.accessibilityLabel,
            isError: model.isError,
            isReadOnly: model.isReadOnly)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDS Radio View Model

/// The `SwiftUI` view model used inside the `OUDSRadioWrapper` to manage the state of the embeded `OUDSRadio`
@MainActor final class OUDSRadioViewModel: ObservableObject {

    /// For `OUDSRadio/isOn`
    @Published var isOn: Bool
    /// For `OUDSRadio/isError`
    var isError: Bool
    /// For `OUDSRadio/isReadOnly`
    var isReadOnly: Bool
    /// For `OUDSRadio/accessibilityLabel`
    var accessibilityLabel: String

    var onInternalValueChanged: ((Bool) -> Void)?

    init(isOn: Bool,
         accessibilityLabel: String,
         isError: Bool,
         isReadOnly: Bool)
    {
        self.isOn = isOn
        self.accessibilityLabel = accessibilityLabel
        self.isError = isError
        self.isReadOnly = isReadOnly
    }

    deinit {}
}

// MARK: - OUDS SwiftUI Bridge

extension OUDSUIKitBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSRadio` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func radioChanged(_ sender: OUDSRadioViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSRadio inside your UIViewController
    ///     OUDSUIKit.createRadio(isOn: true,
    ///                           accessibilityLabel: "Meaningfull accessibility label",
    ///                           isError: true,
    ///                           target: self, // Where self is the UIViewController
    ///                           action: #selector(radioChanged(_:)))
    /// ```
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - isOn: True if radio is selected, false otherwise
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if the look and feel of the component must reflect an read only state, default set to `false`
    ///    - target: Reference to the `UIViewController` hosting the component to create
    ///    - action: The action to trigger defined in the `target` when the value of the `OUDSRadio` has changed
    @MainActor public static func createRadio(isOn: Bool,
                                              accessibilityLabel: String,
                                              isError: Bool = false,
                                              isReadOnly: Bool = false,
                                              target: Any?,
                                              action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSRadio(isOn:accessibilityLabel:)")

        let uikitRadioViewController = OUDSRadioViewController(
            isOn: isOn,
            accessibilityLabel: accessibilityLabel,
            isError: isError,
            isReadOnly: isReadOnly)
        uikitRadioViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitRadioViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
#endif
