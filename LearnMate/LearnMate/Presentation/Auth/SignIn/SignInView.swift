//
//  SignInView.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class SignInView: BaseView {

    // MARK: UI Components
    private let logoImageView = UIImageView().then {
        $0.image = LMImage.splash
        $0.contentMode = .scaleAspectFit
    }

    private let idTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "아이디를 입력해주세요")
    }

    private let passwordTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "비밀번호를 입력해주세요")
    }

    private let signInButton = BaseButton().then {
        $0.setDefaultButton(title: "로그인", titleColor: .black, backgroundColor: .lmMain)
    }

    // MARK: Properties
    var tapSignIn: (() -> Void)?

    // MARK: Configuration
    override func configureSubviews() {
        backgroundColor = .white
        addButtonEvent()
        
        addSubview(logoImageView)
        addSubview(idTextField)
        addSubview(passwordTextField)
        addSubview(signInButton)
    }

    // MARK: Layout
    override func makeConstraints() {
        logoImageView.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).inset(182)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(282)
        }

        idTextField.snp.makeConstraints {
            $0.top.equalTo(logoImageView.snp.bottom).offset(117)
            $0.horizontalEdges.width.equalToSuperview()
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(20)
            $0.horizontalEdges.width.equalToSuperview()
        }

        signInButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(26)
            $0.horizontalEdges.width.equalToSuperview()
        }
    }

    // MARK: Event
    private func addButtonEvent() {
        signInButton.addTarget(self, action: #selector(handleSignInButton), for: .touchUpInside)
    }

    @objc
    private func handleSignInButton() {
        tapSignIn?()
    }

    func checkValidInput() -> (Bool, errorCase: String?) {
        guard let id = idTextField.text else { return (false, "아이디") }
        guard let password = passwordTextField.text else { return (false, "비밀번호") }

        if id.isEmpty { return (false, "아이디") }
        if password.isEmpty { return (false, "비밀번호") }

        return (true, nil)
    }

    func getSignInInput() -> Auth {
        var auth = Auth(id: "", password: "")
        
        guard let id = idTextField.text,
              let password = passwordTextField.text else { return auth }

        auth.id = id
        auth.password = password

        return auth
    }
}
