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

// MARK: - OUDSThemesContract Checkbox Indetermiante View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSCheckboxIndeterminate`
/// Helps to manage the states and values of the `OUDSCheckboxIndeterminate` and tries to expose a UIKit-like API for actions.
public final class OUDSCheckboxIndeterminateViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI checkbox
    private var hostingController: UIHostingController<OUDSCheckboxIndeterminateWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the checkbox SwiftUI state
    private let checkboxViewModel: OUDSCheckboxIndeterminateViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the checkbox checked state (`OUDSCheckboxIndeterminate/selection`)
    public var selection: OUDSCheckboxIndicatorState {
        get { checkboxViewModel.selection }
        set {
            let oldValue = checkboxViewModel.selection
            checkboxViewModel.selection = newValue
            if oldValue != newValue {
                sendActions(for: .valueChanged)
            }
        }
    }

    // MARK: Initialization

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSCheckboxIndeterminate`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///    - selection: A binding to a property that determines wether the indicator is ticked, unticked or preticked.
    ///    - accessibilityLabel: The accessibility label to vocalise for the checkbox
    ///    - isError: If the checkbox is in error state or not
    init(selection: OUDSCheckboxIndicatorState, accessibilityLabel: String, isError: Bool) {
        checkboxViewModel = OUDSCheckboxIndeterminateViewModel(
            selection: selection,
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
        let swiftUIWrapperView = OUDSCheckboxIndeterminateWrapper(model: checkboxViewModel)
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

// MARK: - OUDSThemesContract Checkbox Indeterminate Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSCheckboxIndeterminate` and exposes bindings
/// and view model.
struct OUDSCheckboxIndeterminateWrapper: View {

    @ObservedObject var model: OUDSCheckboxIndeterminateViewModel

    private var checkboxBinding: Binding<OUDSCheckboxIndicatorState> {
        Binding(
            get: { model.selection },
            set: { newValue in
                model.selection = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSCheckboxIndeterminate(
            selection: checkboxBinding,
            accessibilityLabel: model.accessibilityLabel,
            isError: model.isError)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDSThemesContract Checkbox View Model

/// The `SwiftUI` view model used inside the `OUDSCheckboxIndeterminateWrapper` to manage the state of the embeded `OUDSCheckboxIndeterminate`
@MainActor final class OUDSCheckboxIndeterminateViewModel: ObservableObject {

    /// For `OUDSCheckboxIndeterminate/selection`
    @Published var selection: OUDSCheckboxIndicatorState
    /// For `OUDSCheckboxIndeterminate/isError`
    var isError: Bool
    /// For `OUDSCheckboxIndeterminate/accessibilityLabel`
    var accessibilityLabel: String

    var onInternalValueChanged: ((OUDSCheckboxIndicatorState) -> Void)?

    init(selection: OUDSCheckboxIndicatorState,
         accessibilityLabel: String,
         isError: Bool)
    {
        self.selection = selection
        self.accessibilityLabel = accessibilityLabel
        self.isError = isError
    }

    deinit {}
}

// MARK: - OUDSThemesContract SwiftUI Bridge

extension OUDSUIKitBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSCheckboxIndeterminate` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func checkboxChanged(_ sender: OUDSCheckboxIndeterminateViewController) {
    ///         // Do something
    ///         // sender.selection: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSCheckboxIndeterminate inside your UIViewController
    ///     OUDSUIKit.createCheckboxIndeterminate(selection: .indeterminate,
    ///                                           accessibilityLabel: "Meaningfull accessibility label",
    ///                                           isError: true,
    ///                                           target: self, // Where self is the UIViewController
    ///                                           action: #selector(checkboxChanged(_:)))
    /// ```
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - selection: The state of the checkbox (selected, unselected or indeterminate)
    ///    - accessibilityLabel: The accessibility label the component must have
    ///    - isError: True if the look and feel of the component must reflect an error state, default set to `false`
    ///    - target: Reference to the `UIViewController` hosting the component to create
    ///    - action: The action to trigger defined in the `target` when the value of the `OUDSCheckboxIndeterminate` has changed
    @MainActor public static func createCheckboxIndeterminate(selection: OUDSCheckboxIndicatorState,
                                                              accessibilityLabel: String,
                                                              isError: Bool = false,
                                                              target: Any?,
                                                              action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSCheckboxIndeterminate(selection:accessibilityLabel:isError)")

        let uikitCheckboxIndeterminateViewController = OUDSCheckboxIndeterminateViewController(
            selection: selection,
            accessibilityLabel: accessibilityLabel,
            isError: isError)
        uikitCheckboxIndeterminateViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitCheckboxIndeterminateViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
#endif
