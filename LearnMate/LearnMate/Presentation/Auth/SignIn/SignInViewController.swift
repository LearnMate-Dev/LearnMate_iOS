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
    }
}
