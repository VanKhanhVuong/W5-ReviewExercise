//
//  UIView+customShadowAndRadius.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 19/04/2021.
//

import UIKit

extension UIView {
    func customShadowAndRadius(degree: CGFloat, width: Int, height: Int) {
        self.layer.cornerRadius = degree
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: width, height: height)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
