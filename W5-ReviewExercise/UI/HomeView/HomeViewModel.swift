//
//  HomeViewModel.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 19/04/2021.
//

import UIKit

class HomeViewModel {
        let fruits = [Fruit(image: #imageLiteral(resourceName: "dudu"), name: "Papaya", description: "Description of Papaya", saleText: "", price: 2.0, oldPrice: 3.1, rating: 4.5, starNumber: 5, voteNumber: 45, ingredientArray: ["Fragrant","Tasty"]),
                      Fruit(image: #imageLiteral(resourceName: "ot"), name: "Chili", description: "Description of Chili", saleText: "SALE 12 %", price: 3.4, oldPrice: 5.3, rating: 5, starNumber: 5, voteNumber: 23, ingredientArray: ["Poignant","Bitter"]),
                      Fruit(image: #imageLiteral(resourceName: "Dua"), name: "Coconut", description: "Description of Coconut", saleText: "", price: 4.0, oldPrice: 5.0, rating: 4, starNumber: 4, voteNumber: 20, ingredientArray: ["Sweet","Fragrant"]),
                      Fruit(image: #imageLiteral(resourceName: "Toi"), name: "Garlic", description: "Description of Garlic", saleText: "FREE SHIP", price: 5.3, oldPrice: 6.0, rating: 4, starNumber: 4, voteNumber: 34, ingredientArray: ["Hot","Poignant"]),
                      Fruit(image: #imageLiteral(resourceName: "mangCau"), name: "Annona", description: "Description of Annona", saleText: "", price: 4.2, oldPrice: 5.0, rating: 3, starNumber: 3, voteNumber: 54, ingredientArray: ["Fragrant","Tasty","Sweet"]),
                      Fruit(image: #imageLiteral(resourceName: "blueberry"), name: "Blue Berry", description: "Description of Blue Berry", saleText: "SALE 10 %", price: 3.0, oldPrice: 4.6, rating: 4, starNumber: 4, voteNumber: 37, ingredientArray: ["Fragrant","Tasty","Sweet"]),
                      Fruit(image: #imageLiteral(resourceName: "bap"), name: "Corn", description: "Description of Corn", saleText: "", price: 2.0, oldPrice: 4.3, rating: 5, starNumber: 5, voteNumber: 25, ingredientArray: ["Fragrant","Tasty","Sweet"]),
                      Fruit(image: #imageLiteral(resourceName: "caChua"), name: "Tomato", description: "Description of Tomato", saleText: "FREE SHIP", price: 1.2, oldPrice: 3.0, rating: 4.5, starNumber: 5, voteNumber: 50, ingredientArray: ["Fragrant","Tasty","Sweet"]),
                      Fruit(image: #imageLiteral(resourceName: "lemon"), name: "Lemon", description: "Description of Lemon", saleText: "SALE 5%", price: 5.0, oldPrice: 6.0, rating: 3, starNumber: 3, voteNumber: 30, ingredientArray: ["Sour"]),
                      Fruit(image: #imageLiteral(resourceName: "CaiBong"), name: "Broccoli", description: "Description of Broccoli", saleText: "SALE 5%", price: 2.0, oldPrice: 3.0, rating: 3, starNumber: 3, voteNumber: 27, ingredientArray: ["Tasty"]),
                      Fruit(image: #imageLiteral(resourceName: "Pear"), name: "White Pumpkin", description: "Description of White Pumpkin", saleText: "", price: 3.0, oldPrice: 4.0, rating: 3, starNumber: 3, voteNumber: 34, ingredientArray: ["Fragrant","Tasty"]),
                      Fruit(image: #imageLiteral(resourceName: "organ"), name: "Orange", description: "Description of Orange", saleText: "FREE SHIP", price: 7.0, oldPrice: 9.0, rating: 1, starNumber: 1, voteNumber: 24, ingredientArray: ["Fragrant","Sour","Sweet"])
        ]
    func getData() -> [Fruit] {
        return fruits
    }
}



