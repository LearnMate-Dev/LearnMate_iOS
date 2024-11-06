//
//  AppDependency.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

import Then
import SnapKit

struct AppDependency {
    // MARK: Properties
    let windowCreator: (UIWindowScene) -> UIWindow
}

struct CompositionRoot {
    static func resolve() -> AppDependency {
        return AppDependency { scene in
            UIWindow(windowScene: scene).then {
                $0.rootViewController = UINavigationController(rootViewController: SplashViewController())
            }
        }
    }
}
