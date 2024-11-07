//
//  DiaryViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class DiaryViewController: BaseViewController {

    // MARK: UI Components
    private let diaryView = DiaryView()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Configuration
    override func configureSubviews() {
        view.addSubview(diaryView)
    }

    // MARK: Layout
    override func makeConstraints() {
        diaryView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
