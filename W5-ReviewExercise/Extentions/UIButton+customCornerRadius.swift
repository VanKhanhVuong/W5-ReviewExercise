//
//  UIButton+Extention.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

enum Corner {
    case topLeftbottomLeft
    case topRightBottomRight
    case topLeft
    case topRight
    case defaultShow
}
extension UIButton {
    func customCornerRadius(corner: Corner, degree: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = degree
        switch corner {
        case .topLeftbottomLeft:
            self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        case .topRightBottomRight:
            self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        case .topLeft:
            self.layer.maskedCorners = .layerMinXMinYCorner
        case .topRight:
            self.layer.maskedCorners = .layerMaxXMinYCorner
        case .defaultShow:
            break
        }
    }
}


