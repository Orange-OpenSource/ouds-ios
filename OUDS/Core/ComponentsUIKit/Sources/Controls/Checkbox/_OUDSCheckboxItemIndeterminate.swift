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

// MARK: - OUDSThemesContract Checkbox Item Indeterminate View Controller

// swiftlint:disable type_name

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSCheckboxItemIndeterminate`
/// Helps to manage the states and values of the `OUDSCheckboxItemIndeterminate` and tries to expose a UIKit-like API for actions.
public final class OUDSCheckboxItemIndeterminateViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI checkbox
    private var hostingController: UIHostingController<OUDSCheckboxItemIndeterminateWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the checkbox SwiftUI state
    private let checkboxViewModel: OUDSCheckboxItemIndeterminateViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the checkbox checked state (`OUDSCheckboxItemIndeterminate/isOn`)
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

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSCheckboxItemIndeterminate`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///   - selection:A property that determines wether the indicator is ticked (selected) or not (unselected)
    ///   - label: The main label text of the checkbox.
    ///   - helper: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - flipIcon: Set to true to reverse the image (i.e. flip vertically)
    ///   - isReversed: `true` if the checkbox indicator must be in trailing position,` false` otherwise.
    ///   - isError: `true` if the look and feel of the component must reflect an error state
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet
    ///   - hasDivider: If `true` a divider is added at the bottom of the view
    ///   - action: An additional action to trigger when the checkbox has been pressed
    init(selection: OUDSCheckboxIndicatorState,
         label: String,
         helper: String?,
         icon: Image?,
         flipIcon: Bool,
         isReversed: Bool,
         isError: Bool,
         isReadOnly: Bool,
         hasDivider: Bool,
         action: (() -> Void)?)
    {
        checkboxViewModel = OUDSCheckboxItemIndeterminateViewModel(selection: selection,
                                                                   label: label,
                                                                   helper: helper,
                                                                   icon: icon,
                                                                   flipIcon: flipIcon,
                                                                   isReversed: isReversed,
                                                                   isError: isError,
                                                                   isReadOnly: isReadOnly,
                                                                   hasDivider: hasDivider,
                                                                   action: action)
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
        let swiftUIWrapperView = OUDSCheckboxItemIndeterminateWrapper(model: checkboxViewModel)
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

// swiftlint:enable type_name

// MARK: - OUDSThemesContract Checkbox Wrapper

/// A SwiftUI `View` which embeds the SwiftUI `OUDSCheckboxIndeterminateItem` and exposes bindings
/// and view model.
struct OUDSCheckboxItemIndeterminateWrapper: View {

    @ObservedObject var model: OUDSCheckboxItemIndeterminateViewModel

    private var checkboxBinding: Binding<OUDSCheckboxIndicatorState> {
        Binding(
            get: { model.selection },
            set: { newValue in
                model.selection = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSCheckboxItemIndeterminate(
            selection: checkboxBinding,
            label: model.label,
            helper: model.helper,
            icon: model.icon,
            flipIcon: model.flipIcon,
            isReversed: model.isReversed,
            isError: model.isError,
            isReadOnly: model.isReadOnly,
            hasDivider: model.hasDivider,
            action: model.action)
            .environment(\._theme, OUDSUIKit.theme)
    }
}

// MARK: - OUDSThemesContract Checkbox View Indeterminate Model

/// The `SwiftUI` view model used inside the `OUDSCheckboxItemIndeterminateWrapper` to manage the state of the embeded `OUDSCheckboxItemIndeterminate`
@MainActor final class OUDSCheckboxItemIndeterminateViewModel: ObservableObject {

    /// For `OUDSCheckboxItemIndeterminate/isOn`
    @Published var selection: OUDSCheckboxIndicatorState
    /// For `OUDSCheckboxItemIndeterminate/label`
    var label: String
    /// For `OUDSCheckboxItemIndeterminate/helper`
    var helper: String?
    /// For `OUDSCheckboxItemIndeterminate/icon`
    var icon: Image?
    /// For `OUDSCheckboxItemIndeterminate/flipIcon`
    var flipIcon: Bool
    /// For `OUDSCheckboxItemIndeterminate/isReversed`
    var isReversed: Bool
    /// For `OUDSCheckboxItemIndeterminate/isError`
    var isError: Bool
    /// For `OUDSCheckboxItemIndeterminate/isReadOnly`
    var isReadOnly: Bool
    /// For `OUDSCheckboxItemIndeterminate/hasDivider`
    var hasDivider: Bool
    /// For `OUDSCheckboxItemIndeterminate/action`
    var action: (() -> Void)?

    var onInternalValueChanged: ((OUDSCheckboxIndicatorState) -> Void)?

    init(selection: OUDSCheckboxIndicatorState,
         label: String,
         helper: String?,
         icon: Image?,
         flipIcon: Bool,
         isReversed: Bool,
         isError: Bool,
         isReadOnly: Bool,
         hasDivider: Bool,
         action: (() -> Void)?)
    {
        self.selection = selection
        self.label = label
        self.helper = helper
        self.icon = icon
        self.flipIcon = flipIcon
        self.isReversed = isReversed
        self.isError = isError
        self.isReadOnly = isReadOnly
        self.hasDivider = hasDivider
        self.action = action
    }

    deinit {}
}

// MARK: - OUDSThemesContract SwiftUI Bridge

extension OUDSUIKitBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSCheckboxItemIndeterminate` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func checkboxChanged(_ sender: OUDSCheckboxItemIndeterminateViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSCheckboxItemIndeterminate inside your UIViewController
    ///     OUDSUIKit.createCheckboxItemIndeterminate(selection: .indeterminate,
    ///                                               label: "An awesome label"
    ///                                               helper: "A smaller text",
    ///                                               icon: Image("ic_heart"),
    ///                                               action: #selector(checkboxChanged(_:)))
    /// ```
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - selection: A property indicating wether or not the checkbox is selected or in indeterminate state
    ///    - label: The main label text of the checkbox.
    ///    - helper: An additonal helper text, should not be empty, default set to `nil`
    ///    - icon: An optional icon,  default set to `nil`
    ///    - flipIcon: Default set to `false`, set to `true` to reverse the image (i.e. flip vertically)
    ///    - isReversed: `true` if the checkbox indicator must be in trailing position,` false` otherwise. Default to `false`
    ///    - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///    - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///    - _action: An additional action to trigger when the checkbox has been pressed
    ///    - target: Reference to the UIKIt `UIViewController` hosting the view
    ///    - action: The `Selector` called when the checkbox value changed
    @MainActor public static func createCheckboxItemIndeterminate(selection: OUDSCheckboxIndicatorState,
                                                                  label: String,
                                                                  helper: String? = nil,
                                                                  icon: Image? = nil,
                                                                  flipIcon: Bool = false,
                                                                  isReversed: Bool = false,
                                                                  isError: Bool = false,
                                                                  isReadOnly: Bool = false,
                                                                  hasDivider: Bool = false,
                                                                  _action: (() -> Void)? = nil,
                                                                  target: Any?,
                                                                  action: Selector) -> UIViewController
    {
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSCheckboxItem(selection:label)")

        let uikitViewController = OUDSCheckboxItemIndeterminateViewController(selection: selection,
                                                                              label: label,
                                                                              helper: helper,
                                                                              icon: icon,
                                                                              flipIcon: flipIcon,
                                                                              isReversed: isReversed,
                                                                              isError: isError,
                                                                              isReadOnly: isReadOnly,
                                                                              hasDivider: hasDivider,
                                                                              action: _action)
        uikitViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
#endif
