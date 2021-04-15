//
//  UIView+Extention.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

extension UIView {
    func customCornerRadiusView(degree: Int, border: Bool)  {
        self.clipsToBounds = true
        self.layer.cornerRadius = CGFloat(degree)
        
        if (border) {
            self.layer.borderWidth = 4.0
            self.layer.borderColor = UIColor.white.cgColor
        }
    }
}


