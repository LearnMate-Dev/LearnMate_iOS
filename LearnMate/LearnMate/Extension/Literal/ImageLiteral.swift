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
    public static var backButton: UIImage { .load(name: "ic_back")}
    public static var closeButton: UIImage { .load(name: "ic_close")}
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
