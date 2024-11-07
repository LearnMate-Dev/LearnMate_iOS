//
//  UITextField+Extension.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit.UITextField

extension UITextField {
    func setDefaultTextField(placeholder: String) {
        addLeftPadding()
        setBorder()

        snp.makeConstraints {
            $0.height.equalTo(59)
        }

        self.placeholder = placeholder
    }

    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }

    func setBorder() {
        layer.cornerRadius = 12
        layer.borderColor = UIColor.lmGray.cgColor
        layer.borderWidth = 1
    }
}
