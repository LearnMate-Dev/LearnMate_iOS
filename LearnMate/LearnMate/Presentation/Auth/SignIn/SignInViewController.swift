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

    private let backButton = BaseButton().then {
        $0.setImage(LMButton.backButton, for: .normal)
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
    }

    // MARK: Layout
    override func makeConstraints() {
        signInView.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview()
            $0.horizontalEdges.equalToSuperview().inset(20)
        }
    }

    // MARK: View Transition
    override func viewTransition() {
        backButton.tap = { [weak self] in
            guard let self else { return }
            router.popViewController()
        }
    }

    // MARK: Set Navigation Item
    override func setNavigationItem() {
        setDefaultNavigationItem(title: "로그인",
                                 leftBarButton: backButton,
                                 rightBarButton: nil)
        navigationItem.hidesBackButton = true
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
