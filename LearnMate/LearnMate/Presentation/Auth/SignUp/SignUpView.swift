//
//  SignUpView.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class SignUpView: BaseView {

    // MARK: UI Components
    private let scrollView = UIScrollView().then {
        $0.showsVerticalScrollIndicator = false
    }

    private let signUpEntireView = UIView()

    private let signUpStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 18
        $0.distribution = .fillEqually
    }

    private let nameView = UIView()
    private let idView = UIView()
    private let passwordView = UIView()
    private let passwordCheckView = UIView()

    private let nameLabel = UILabel().then {
        $0.setDefaultLabel(text: "이름")
    }

    private let nameTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "이름을 입력해주세요")
    }

    private let nameEmptyLabel = UILabel().then {
        $0.setEmptyLabel(text: "이름은 필수입니다")
    }

    private let idLabel = UILabel().then {
        $0.setDefaultLabel(text: "아이디")
    }

    private let idTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "아이디를 입력해주세요")
    }

    private let idEmptyLabel = UILabel().then {
        $0.setEmptyLabel(text: "아이디는 필수입니다")
    }

    private let passwordLabel = UILabel().then {
        $0.setDefaultLabel(text: "비밀번호")
    }

    private let passwordTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "비밀번호를 입력해주세요")
    }

    private let passwordEmptyLabel = UILabel().then {
        $0.setEmptyLabel(text: "비밀번호는 필수입니다")
    }

    private let passwordCheckLabel = UILabel().then {
        $0.setDefaultLabel(text: "비밀번호 확인")
    }

    private let passwordCheckTextField = UITextField().then {
        $0.setDefaultTextField(placeholder: "비밀번호를 한번 더 입력해주세요")
    }

    private let passwordCheckInvalidLabel = UILabel().then {
        $0.setEmptyLabel(text: "비밀번호가 일치하지 않습니다")
    }

    private let nonScrollView = UIView()

    private let signUpButton = BaseButton().then {
        $0.setDefaultButton(title: "회원가입하기", titleColor: .black, backgroundColor: .lmMain)
    }

    // MARK: Configuration
    override func configureSubviews() {
        backgroundColor = .white

        addSubview(scrollView)
        scrollView.addSubview(signUpEntireView)
        signUpEntireView.addSubview(signUpStackView)
        signUpStackView.addArrangedSubviews(nameView,
                                            idView,
                                            passwordView,
                                            passwordCheckView)

        nameView.addSubview(nameLabel)
        nameView.addSubview(nameTextField)
        nameView.addSubview(nameEmptyLabel)

        idView.addSubview(idLabel)
        idView.addSubview(idTextField)
        idView.addSubview(idEmptyLabel)

        passwordView.addSubview(passwordLabel)
        passwordView.addSubview(passwordTextField)
        passwordView.addSubview(passwordEmptyLabel)

        passwordCheckView.addSubview(passwordCheckLabel)
        passwordCheckView.addSubview(passwordCheckTextField)
        passwordCheckView.addSubview(passwordCheckInvalidLabel)

        addSubview(nonScrollView)
        nonScrollView.addSubview(signUpButton)
    }

    // MARK: Layout
    override func makeConstraints() {
        scrollView.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().inset(121)
        }

        let screenWidth = UIScreen.main.bounds.width

        signUpEntireView.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(580)
            $0.width.equalTo(screenWidth - 40)
        }

        signUpStackView.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(20)
            $0.height.equalTo(540)
            $0.width.equalTo(screenWidth - 40)
            $0.horizontalEdges.equalToSuperview()
        }

        nameView.snp.makeConstraints {
            $0.height.equalTo(121)
            $0.width.horizontalEdges.equalToSuperview()
        }

        nameLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }

        nameTextField.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(8)
            $0.horizontalEdges.width.equalToSuperview()
        }

        nameEmptyLabel.snp.makeConstraints {
            $0.top.equalTo(nameTextField.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(8)
        }

        idView.snp.makeConstraints {
            $0.height.equalTo(121)
            $0.horizontalEdges.width.equalToSuperview()
        }

        idLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }

        idTextField.snp.makeConstraints {
            $0.top.equalTo(idLabel.snp.bottom).offset(8)
            $0.horizontalEdges.width.equalToSuperview()
        }

        idEmptyLabel.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(8)
        }

        passwordView.snp.makeConstraints {
            $0.height.equalTo(121)
            $0.horizontalEdges.width.equalToSuperview()
        }

        passwordLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }

        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(passwordLabel.snp.bottom).offset(8)
            $0.horizontalEdges.width.equalToSuperview()
        }

        passwordEmptyLabel.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(8)
        }

        passwordCheckView.snp.makeConstraints {
            $0.height.equalTo(121)
            $0.horizontalEdges.width.equalToSuperview()
        }

        passwordCheckLabel.snp.makeConstraints {
            $0.top.leading.equalToSuperview()
        }

        passwordCheckTextField.snp.makeConstraints {
            $0.top.equalTo(passwordCheckLabel.snp.bottom).offset(8)
            $0.horizontalEdges.width.equalToSuperview()
        }

        passwordCheckInvalidLabel.snp.makeConstraints {
            $0.top.equalTo(passwordCheckTextField.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(8)
        }

        nonScrollView.snp.makeConstraints {
            $0.top.equalTo(scrollView.snp.bottom)
            $0.width.bottom.equalToSuperview()
        }

        signUpButton.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview().inset(20)
        }
    }
}
