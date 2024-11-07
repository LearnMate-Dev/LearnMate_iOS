//
//  TodoGuideViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class TodoGuideViewController: BaseViewController {

    // MARK: UI Components
    private let todoGuideView = TodoGuideView()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(todoGuideView)
    }

    // MARK: Layout
    override func makeConstraints() {
        todoGuideView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
