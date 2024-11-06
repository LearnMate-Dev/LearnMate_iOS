//
//  UIButton+Extension.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit.UIButton

extension UIButton {
    func setDefaultButton(title: String, titleColor: UIColor, backgroundColor: UIColor) {
        layer.cornerRadius = 12
        snp.makeConstraints {
            $0.height.equalTo(59)
        }

        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        self.backgroundColor = backgroundColor
    }
}
