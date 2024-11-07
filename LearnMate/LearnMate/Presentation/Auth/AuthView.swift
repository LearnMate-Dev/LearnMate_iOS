//
//  AuthView.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class AuthView: BaseView {

    // MARK: UI Components
    private let logoImageView = UIImageView().then {
        $0.image = LMImage.splash
        $0.contentMode = .scaleAspectFit
    }

    private let signInButton = BaseButton().then {
        $0.setDefaultButton(title: "로그인", titleColor: .black, backgroundColor: .lmMain)
    }

    private let signUpButton = BaseButton().then {
        $0.setDefaultButton(title: "회원가입", titleColor: .white, backgroundColor: .black)
    }

    // MARK: Properties
    var tapSignIn: (() -> Void)?
    var tapSignUp: (() -> Void)?

    // MARK: Configuration
    override func configureSubviews() {
        addButtonEvent()
        backgroundColor = .white

        addSubview(logoImageView)
        addSubview(signInButton)
        addSubview(signUpButton)
    }

    // MARK: Layout
    override func makeConstraints() {
        logoImageView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(273)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(282)
        }

        signInButton.snp.makeConstraints {
            $0.bottom.equalTo(signUpButton.snp.top).offset(-22)
            $0.horizontalEdges.width.equalToSuperview()
        }

        signUpButton.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide).inset(30)
            $0.horizontalEdges.width.equalToSuperview()
        }
    }

    // MARK: Event
    private func addButtonEvent() {
        signInButton.addTarget(self, action: #selector(handleSignInButton), for: .touchUpInside)
        signUpButton.addTarget(self, action: #selector(handleSignUpButton), for: .touchUpInside)
    }

    @objc
    private func handleSignInButton() {
        tapSignIn?()
    }

    @objc
    private func handleSignUpButton() {
        tapSignUp?()
    }
}
