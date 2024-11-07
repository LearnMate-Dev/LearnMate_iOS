//
//  TabBarViewController.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    // MARK: Constants
    private enum Metric {
        static let tabBarHeight: CGFloat = 90.0
        static let titleFontSize: CGFloat = 11.0
        static let imageTopInset: CGFloat = 0.0
        static let imageBottomInset: CGFloat = -4.0
        static let titleVerticalOffset: CGFloat = 3.0
    }

    // MARK: UI Components
    let homeViewController = HomeViewController()
    let diaryViewController = DiaryViewController()
    let todoGuideViewController = TodoGuideViewController()
    let myPageViewController = MyPageViewController()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBarViewController()
        setupTabBarUI()
    }

    // MARK: viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        var tabFrame = tabBar.frame
        tabFrame.size.height = Metric.tabBarHeight
        tabFrame.origin.y = view.frame.size.height - Metric.tabBarHeight
        tabBar.frame = tabFrame
    }

    // MARK: TabBar
    private func setupTabBarViewController() {
        homeViewController.title = "홈"
        diaryViewController.title = "일기"
        todoGuideViewController.title = "투두 가이드"
        myPageViewController.title = "마이페이지"
        
        setupTabBarItem(for: homeViewController,
                        image: LMButton.home.withRenderingMode(.alwaysOriginal),
                        selectedImage: LMButton.homeFilled.withRenderingMode(.alwaysOriginal))
        setupTabBarItem(for: diaryViewController,
                        image: LMButton.diary.withRenderingMode(.alwaysOriginal),
                        selectedImage: LMButton.diaryFilled.withRenderingMode(.alwaysOriginal))
        setupTabBarItem(for: todoGuideViewController,
                        image: LMButton.todoGuide.withRenderingMode(.alwaysOriginal),
                        selectedImage: LMButton.todoGuideFilled.withRenderingMode(.alwaysOriginal))
        setupTabBarItem(for: myPageViewController,
                        image: LMButton.myPage.withRenderingMode(.alwaysOriginal),
                        selectedImage: LMButton.myPageFilled.withRenderingMode(.alwaysOriginal))

        let navigationHome = UINavigationController(rootViewController: homeViewController)
        let navigationDiary = UINavigationController(rootViewController: diaryViewController)
        let navigationTodoGuide = UINavigationController(rootViewController: todoGuideViewController)
        let navigationMyPage = UINavigationController(rootViewController: myPageViewController)

        setViewControllers([navigationHome,
                            navigationDiary,
                            navigationTodoGuide,
                            navigationMyPage], animated: false)
    }

    private func setupTabBarItem(for viewController: UIViewController, image: UIImage, selectedImage: UIImage) {
        let tabBarItem = UITabBarItem(title: viewController.title, image: image, selectedImage: selectedImage)

        tabBarItem.setTitleTextAttributes([
            .font: UIFont.systemFont(ofSize: Metric.titleFontSize),
            .foregroundColor: UIColor.lmGray70
        ], for: .normal)
        
        tabBarItem.setTitleTextAttributes([
            .font: UIFont.systemFont(ofSize: Metric.titleFontSize),
            .foregroundColor: UIColor.lmDarkgray
        ], for: .selected)

        tabBarItem.imageInsets = UIEdgeInsets(top: Metric.imageTopInset, left: 0, bottom: Metric.imageBottomInset, right: 0)
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: Metric.titleVerticalOffset)
        viewController.tabBarItem = tabBarItem
    }

    private func setupTabBarUI() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .lmDarkgray
        tabBar.unselectedItemTintColor = .lmGray70

        tabBar.layer.borderColor = UIColor.black.withAlphaComponent(0.08).cgColor
        tabBar.layer.borderWidth = 1

        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.clipsToBounds = true
    }
}
