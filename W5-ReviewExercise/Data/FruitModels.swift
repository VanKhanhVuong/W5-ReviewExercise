//
//  File.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit
import Foundation

struct Fruit {
    let image : UIImage
    let name: String
    let description: String
    let saleText: String
    let price : Float
    let oldPrice : Float
    let rating : Float
    let starNumber: Int
    let voteNumber: Int
    let ingredientArray: [String]
    
    init(image :UIImage, name: String, description: String, price: Float, oldPrice: Float, rating: Float, starNumber: Int, voteNumber: Int, ingredientAray: [String], saleText: String) {
        self.image = image
        self.name = name
        self.description = description
        self.price = price
        self.oldPrice = oldPrice
        self.rating = rating
        self.starNumber = starNumber
        self.voteNumber = voteNumber
        self.saleText = saleText
        self.ingredientArray = ingredientAray
    }
}
