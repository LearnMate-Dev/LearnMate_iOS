//
//  BaseView.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class BaseView: UIView {
    
    // MARK: Initializer
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureSubviews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configuration
    func configureSubviews() {
        
    }
    
    // MARK: Layout
    func makeConstraints() {
        
    }
}
