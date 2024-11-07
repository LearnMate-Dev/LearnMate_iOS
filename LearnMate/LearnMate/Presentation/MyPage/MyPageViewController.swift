//
//  MyPageViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class MyPageViewController: BaseViewController {

    // MARK: UI Components
    private let myPageView = MyPageView()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(myPageView)
    }

    // MARK: Layout
    override func makeConstraints() {
        myPageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
