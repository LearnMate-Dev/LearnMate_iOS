//
//  BaseRouter.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

final class BaseRouter {
    // MARK: Properties
    weak var viewController: UIViewController?
    
    // MARK: Routing
    func presentSampleViewController() {
        let sampleViewController = UIViewController()
        viewController?.navigationController?.pushViewController(sampleViewController, animated: true)
    }
}
