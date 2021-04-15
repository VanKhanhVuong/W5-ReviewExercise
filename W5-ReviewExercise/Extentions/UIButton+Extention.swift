//
//  UIButton+Extention.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

enum CORNER {
    case topLeftbottomLeft
    case topRightBottomRight
    case topLeft
    case topRight
    case defaultShow
}
extension UIButton {
    func coradiusButton(corner: CORNER, degree: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = degree
        switch corner {
        case .topLeftbottomLeft:
            self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
            break
        case .topRightBottomRight:
            self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
            break
        case .topLeft:
            self.layer.maskedCorners = .layerMinXMinYCorner
            break
        case .topRight:
            self.layer.maskedCorners = .layerMaxXMinYCorner
            break
        case .defaultShow:
            break
        }
    }
}


