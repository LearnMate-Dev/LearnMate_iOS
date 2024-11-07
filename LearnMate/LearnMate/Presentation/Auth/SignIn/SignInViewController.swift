//
//  SignInViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class SignInViewController: BaseViewController {

    // MARK: UI Components
    private let signInView = SignInView()

    private let closeButton = BaseButton().then {
        $0.setImage(LMButton.closeButton, for: .normal)
    }

    // MARK: Environment
    private let router = BaseRouter()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        router.viewController = self
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(signInView)
        view.addSubview(closeButton)
    }

    // MARK: Layout
    override func makeConstraints() {
        signInView.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(20)
        }

        closeButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(60)
            $0.trailing.equalToSuperview().inset(20)
        }
    }

    // MARK: View Transition
    override func viewTransition() {
        closeButton.tap = { [weak self] in
            guard let self else { return }
            router.dismissViewController()
        }

        signInView.tapSignIn = { [weak self] in
            guard let self else { return }
            let isValid: (Bool, String?) = signInView.checkValidInput()
            print(isValid)
            if isValid.0 {
                postSignIn(auth: signInView.getSignInInput())
            } else {
                showEmptyAlert(errorCase: isValid.1 ?? "")
            }
        }
    }
}

extension SignInViewController {
    private func postSignIn(auth: Auth) {
        print("id: " + auth.id)
        print("password: " + auth.password)

//        if success {
//           router.presentHomeViewController()
//        } else {
            showErrorAlert()
//        }
    }

    private func showEmptyAlert(errorCase: String) {
        let successAlertViewController = UIAlertController(title: "로그인 실패", message: errorCase + "를 입력해주세요.", preferredStyle: .alert)

        let confirmAction = UIAlertAction(title: "확인", style: .default) { _ in
            self.router.presentAuthViewController()
        }

        successAlertViewController.addAction(confirmAction)
        present(successAlertViewController, animated: true)
    }

    private func showErrorAlert() {
        let successAlertViewController = UIAlertController(title: "로그인 실패", message: "아이디 또는 비밀번호가 일치하지 않습니다.", preferredStyle: .alert)

        let confirmAction = UIAlertAction(title: "확인", style: .default) { _ in
            self.router.presentAuthViewController()
        }

        successAlertViewController.addAction(confirmAction)
        present(successAlertViewController, animated: true)
    }
}
