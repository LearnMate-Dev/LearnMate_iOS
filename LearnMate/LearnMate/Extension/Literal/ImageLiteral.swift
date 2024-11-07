//
//  ImageLiteral.swift
//  LearnMate
//
//  Created by 박지윤 on 11/6/24.
//

import UIKit

public enum LMImage {
    public static var splash: UIImage { .load(name: "Splash")}
}

public enum LMButton {
    public static var back: UIImage { .load(name: "ic_back")}
    public static var close: UIImage { .load(name: "ic_close")}
    public static var home: UIImage { .load(name: "tab_home")}
    public static var homeFilled: UIImage { .load(name: "tab_homeFilled")}
    public static var diary: UIImage { .load(name: "tab_diary")}
    public static var diaryFilled: UIImage { .load(name: "tab_diaryFilled")}
    public static var todoGuide: UIImage { .load(name: "tab_todoGuide")}
    public static var todoGuideFilled: UIImage { .load(name: "tab_todoGuideFilled")}
    public static var myPage: UIImage { .load(name: "tab_myPage")}
    public static var myPageFilled: UIImage { .load(name: "tab_myPageFilled")}
}

extension UIImage {
    static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: nil, compatibleWith: nil) else {
            return UIImage()
        }
        image.accessibilityIdentifier = name
        return image
    }
}
