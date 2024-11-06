//
//  SplashView.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class SplashView: BaseView {

    // MARK: UI Components
    private let splashImageView = UIImageView().then {
        $0.image = LMImage.splash
        $0.contentMode = .scaleAspectFit
    }

    // MARK: Configuration
    override func configureSubviews() {
        backgroundColor = .white
        addSubview(splashImageView)
    }

    // MARK: Layout
    override func makeConstraints() {
        splashImageView.snp.makeConstraints {
            $0.top.equalToSuperview().inset(273)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(282)
        }
    }
}
