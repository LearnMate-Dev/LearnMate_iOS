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
        viewController?.navigationController?.pushViewController(signInViewController, animated: true)
    }
    
    func popViewController() {
        let signInViewController = SignInViewController()
        viewController?.navigationController?.popViewController(animated: true)
    }
}
