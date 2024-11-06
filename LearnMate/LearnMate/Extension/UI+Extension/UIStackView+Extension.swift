//
//  UIStackView+Extension.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit.UIStackView

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { addArrangedSubview($0) }
    }
}
