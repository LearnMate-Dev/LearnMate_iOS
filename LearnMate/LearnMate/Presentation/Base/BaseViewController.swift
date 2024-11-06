//
//  BaseViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class BaseViewController: UIViewController, UIGestureRecognizerDelegate {
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubviews()
        makeConstraints()
        viewTransition()
        setNavigationItem()
        view.backgroundColor = .white
    }
    
    // MARK: Configuration
    func configureSubviews() {
    }
    
    // MARK: Layout
    func makeConstraints() {
    }

    // MARK: View Transition
    func viewTransition() {
    }

    // MARK: Navigation Item
    func setNavigationItem() {
    }
}
