//
//  HomeViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/7/24.
//

import UIKit

class HomeViewController: BaseViewController {

    // MARK: UI Components
    private let homeView = HomeView()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(homeView)
    }

    // MARK: Layout
    override func makeConstraints() {
        homeView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
