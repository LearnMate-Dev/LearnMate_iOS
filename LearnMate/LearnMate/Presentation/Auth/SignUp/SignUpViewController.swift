//
//  SignUpViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class SignUpViewController: BaseViewController {

    // MARK: UI Components
    private let signUpView = SignUpView()

    private let backButton = BaseButton().then {
        $0.setImage(LMButton.backButton, for: .normal)
    }

    // MARK: Environment
    private let router = BaseRouter()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpView.setEmptyLabelHidden()
        router.viewController = self
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(signUpView)
    }

    // MARK: Layout
    override func makeConstraints() {
        signUpView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // MARK: View Transition
    override func viewTransition() {
        backButton.tap = { [weak self] in
            guard let self else { return }
            router.popViewController()
        }

        signUpView.tapSignUp = { [weak self] in
            guard let self else { return }
            let isValid = signUpView.checkValidInput()
            if isValid {
                postSignUp(auth: signUpView.getSignUpInput())
            }
        }
    }

    // MARK: Set Navigation Item
    override func setNavigationItem() {
        setDefaultNavigationItem(title: "회원가입",
                                 leftBarButton: backButton,
                                 rightBarButton: nil)
        navigationItem.hidesBackButton = true
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}

extension SignUpViewController {
    private func postSignUp(auth: Auth) {
        print("name: " + (auth.name ?? ""))
        print("id: " + auth.id)
        print("password: " + auth.password)

//        if success {
            showAlert()
//        }
    }

    private func showAlert() {
        let successAlertViewController = UIAlertController(title: "회원가입 완료", message: "회원가입에 성공했습니다.", preferredStyle: .alert)

        let confirmAction = UIAlertAction(title: "확인", style: .default) { _ in
            self.router.presentAuthViewController()
        }

        successAlertViewController.addAction(confirmAction)
        present(successAlertViewController, animated: true)
    }
}
