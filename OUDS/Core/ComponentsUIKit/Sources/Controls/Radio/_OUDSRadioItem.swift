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

// MARK: - OUDS Radio Item View Controller

/// UIKit `UIViewController`  hosting view controllers so as to expose the SwiftUI `OUDSRadioItem`
/// Helps to manage the states and values of the `OUDSRadioItem` and tries to expose a UIKit-like API for actions.
public final class OUDSRadioItemViewController: UIViewController {

    // MARK: Properties

    // swiftlint:disable implicitly_unwrapped_optional
    /// To host the SwiftUI radio
    private var hostingController: UIHostingController<OUDSRadioItemWrapper>!
    // swiftlint:enable implicitly_unwrapped_optional
    /// To manage the radio SwiftUI state
    private let radioViewModel: OUDSRadioItemViewModel
    /// To have an action to trigger for a target
    private var targets: [ComponentInteraction]

    /// To expose the radio checked state (`OUDSRadioItem/isOn`)
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

    /// Prepares a new `UIViewController` with configuration details for the SwiftUI `OUDSRadioItem`
    /// hosted inside it.
    ///
    /// - Parameters:
    ///   - isOn: A property that determines wether the indicator is ticked (selected) or not (unselected)
    ///   - label: The main label text of the radio.
    ///   - helper: An additonal helper text, should not be empty
    ///   - icon: An optional icon
    ///   - flipIcon: Set to true to reverse the image (i.e. flip vertically)
    ///   - isReversed: `true` if the radio indicator must be in trailing position,` false` otherwise.
    ///   - isError: `true` if the look and feel of the component must reflect an error state
    ///   - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet
    ///   - hasDivider: If `true` a divider is added at the bottom of the view
    ///   - action: An additional action to trigger when the radio has been pressed
    init(isOn: Bool,
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
        radioViewModel = OUDSRadioItemViewModel(isOn: isOn,
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
        let swiftUIWrapperView = OUDSRadioItemWrapper(model: radioViewModel)
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

/// A SwiftUI `View` which embeds the SwiftUI `OUDSRadioItem` and exposes bindings
/// and view model.
struct OUDSRadioItemWrapper: View {

    @ObservedObject var model: OUDSRadioItemViewModel

    private var radioBinding: Binding<Bool> {
        Binding(
            get: { model.isOn },
            set: { newValue in
                model.isOn = newValue
                model.onInternalValueChanged?(newValue)
            })
    }

    var body: some View {
        OUDSRadioItem(
            isOn: radioBinding,
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

// MARK: - OUDS Radio View Model

/// The `SwiftUI` view model used inside the `OUDSRadioItemWrapper` to manage the state of the embeded `OUDSRadioItem`
@MainActor final class OUDSRadioItemViewModel: ObservableObject {

    /// For `OUDSRadioItem/isOn`
    @Published var isOn: Bool
    /// For `OUDSRadioItem/label`
    var label: String
    /// For `OUDSRadioItem/helper`
    var helper: String?
    /// For `OUDSRadioItem/icon`
    var icon: Image?
    /// For `OUDSRadioItem/flipIcon`
    var flipIcon: Bool
    /// For `OUDSRadioItem/isReversed`
    var isReversed: Bool
    /// For `OUDSRadioItem/isError`
    var isError: Bool
    /// For `OUDSRadioItem/isReadOnly`
    var isReadOnly: Bool
    /// For `OUDSRadioItem/hasDivider`
    var hasDivider: Bool
    /// For `OUDSRadioItem/action`
    var action: (() -> Void)?

    var onInternalValueChanged: ((Bool) -> Void)?

    init(isOn: Bool,
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
        self.isOn = isOn
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

// MARK: - OUDS SwiftUI Bridge

extension OUDSUIKitBrige {

    // swiftlint:disable function_default_parameter_at_end
    /// Creates SwiftUI `OUDSRadioItem` with only an indicator.
    ///
    /// ```swift
    ///     // Define the selector for the action
    ///      @objc private func radioChanged(_ sender: OUDSRadioItemViewController) {
    ///         // Do something
    ///         // sender.isOn: flag for the component value
    ///     }
    ///
    ///     // Then create the OUDSRadioItem inside your UIViewController
    ///     OUDSUIKit.createRadioItem(isOn: true,
    ///                               label: "An awesome label"
    ///                               helper: "A smaller text",
    ///                               icon: Image("ic_heart"),
    ///                               action: #selector(radioChanged(_:)))
    /// ```
    ///
    /// **This is an experimental feature, feedback and support is appreciated**
    ///
    /// - Parameters:
    ///    - isOn: A flag indicating wether or not the radio is selected
    ///    - label: The main label text of the radio.
    ///    - helper: An additonal helper text, should not be empty, default set to `nil`
    ///    - icon: An optional icon,  default set to `nil`
    ///    - flipIcon: Default set to `false`, set to `true` to reverse the image (i.e. flip vertically)
    ///    - isReversed: `true` if the radio indicator must be in trailing position,` false` otherwise. Default to `false`
    ///    - isError: `true` if the look and feel of the component must reflect an error state, default set to `false`
    ///    - isReadOnly: True if component is in read only, i.e. not really disabled but user cannot interact with it yet, default set to `false`
    ///    - hasDivider: If `true` a divider is added at the bottom of the view, by default set to `false`
    ///    - _action: An additional action to trigger when the radio has been pressed
    ///    - target: Reference to the UIKIt `UIViewController` hosting the view
    ///    - action: The `Selector` called when the radio value changed
    @MainActor public static func createRadioItem(isOn: Bool,
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
        OL.warning("Avoid UIKit wrapper and prefer SwiftUI component instead OUDSRadioItem(isOn:label)")

        let uikitRadioItemViewController = OUDSRadioItemViewController(isOn: isOn,
                                                                       label: label,
                                                                       helper: helper,
                                                                       icon: icon,
                                                                       flipIcon: flipIcon,
                                                                       isReversed: isReversed,
                                                                       isError: isError,
                                                                       isReadOnly: isReadOnly,
                                                                       hasDivider: hasDivider,
                                                                       action: _action)
        uikitRadioItemViewController.addTarget(target, action: action, for: .valueChanged)
        return uikitRadioItemViewController
    }
    // swiftlint:enable function_default_parameter_at_end
}
#endif
