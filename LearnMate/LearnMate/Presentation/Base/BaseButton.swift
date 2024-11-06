//
//  BaseButton.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class BaseButton: UIButton {
    
    // MARK: Properties
    var tap: (() -> Void)?
    
    // MARK: Initializer
    init() {
        super.init(frame: .zero)
        configureTap()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configuration
    private func configureTap() {
        addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
    }
    
    // MARK: Event
    @objc private func handleEvent() {
        tap?()
    }
}
