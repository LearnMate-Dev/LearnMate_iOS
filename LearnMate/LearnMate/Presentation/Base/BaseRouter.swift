//
//  BaseRouter.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class BaseRouter {
    // MARK: Properties
    weak var viewController: UIViewController?
    
    // MARK: Routing
    func presentSignInViewController() {
        let signInViewController = SignInViewController()
        signInViewController.modalPresentationStyle = .fullScreen
        viewController?.present(signInViewController, animated: true)
    }

    func presentSignUpViewController() {
        let signUpViewController = SignUpViewController()
        viewController?.navigationController?.pushViewController(signUpViewController, animated: true)
    }

    func popViewController() {
        viewController?.navigationController?.popViewController(animated: true)
    }

    func dismissViewController() {
        viewController?.dismiss(animated: true)
    }
}
