//
//  UILabel+Extension.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit.UILabel

extension UILabel {
    func setDefaultLabel(text: String) {
        self.text = text
        textColor = .black
        font = UIFont.systemFont(ofSize: 18, weight: .medium)
    }

    func setEmptyLabel(text: String) {
        self.text = text
        textColor = .red
        font = UIFont.systemFont(ofSize: 13, weight: .light)
    }
}
