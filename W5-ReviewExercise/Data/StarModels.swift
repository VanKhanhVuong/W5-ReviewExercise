//
//  StarModels.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 15/04/2021.
//
import UIKit
import Foundation

struct Star {
    var endNumber : Int
    var starNumber: Int
    var fontName: String
    var fontSize: Float
    
    init(endNumber : Int, starNumber: Int, fontName: String, fontSize: Float) {
        self.endNumber = endNumber
        self.starNumber = starNumber
        self.fontName = fontName
        self.fontSize = fontSize
    }
}
