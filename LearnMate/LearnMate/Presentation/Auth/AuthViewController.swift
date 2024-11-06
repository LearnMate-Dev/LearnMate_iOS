//
//  AuthViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class AuthViewController: BaseViewController {

    // MARK: UI Components
    private let authView = AuthView()
    
    // MARK: Environment
    private let router = BaseRouter()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        router.viewController = self
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(authView)
    }

    // MARK: Layout
    override func makeConstraints() {
        authView.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(20)
        }
    }

    // MARK: View Transition
    override func viewTransition() {
        authView.tapSignIn = { [weak self] in
            guard let self else { return }
            router.presentSignInViewController()
        }

        authView.tapSignUp = { [weak self] in
            guard let self else { return }
            router.presentSignUpViewController()
        }
    }
}
