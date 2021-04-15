//
//  FruitViewModel.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 15/04/2021.
//

import UIKit
import Foundation

class FruitViewModel {
    private var fruit: Fruit
    //  image : UIImage
    var image: UIImage {
        return fruit.image
    }
    //  name: String
    var nameText: String {
        return fruit.name
    }
    //  description: String
    var descriptionText: String {
        return fruit.description
    }
    //  saleText: String
    var saleTextText: String {
        return fruit.saleText
    }
    //  price : Float
    var price: Float {
        return fruit.price
    }
    //  oldPrice : Float
    var oldPrice: Float {
        return fruit.oldPrice
    }
    //  rating : Float
    var rating: Float {
        return fruit.rating
    }
    //  starNumber: Int
    var starNumber: Int {
        return fruit.starNumber
    }
    //  voteNumber: Int
    var voteNumber: Int {
        return fruit.voteNumber
    }
    //   ingredientArray: [String]
    var ingredientArray: [String] {
        return fruit.ingredientArray
    }
    
//    self.oldPriceLabel.text = "$\(fruit.oldPrice)"
//    if fruit.saleText == "" {
//        self.saleView.isHidden = true
//    } else {
//        self.saleView.isHidden = false
//        if fruit.saleText == "FREE SHIP" {
//            self.saleView.backgroundColor = UIColor(red: 63/255, green: 154/255, blue: 246/255, alpha: 1)
//        } else {
//            self.saleView.backgroundColor = .orange
//        }
//        self.saleLabel.text = fruit.saleText
//    }
    
    
    init(fruit: Fruit) {
        self.fruit = fruit
    }
}
