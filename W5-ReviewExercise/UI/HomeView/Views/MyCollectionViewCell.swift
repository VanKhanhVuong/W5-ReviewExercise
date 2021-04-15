//
//  MyCollectionViewCell.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit


class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var heartImageLabel: UILabel!
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var cartButton: UIButton!
    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var saleView: UIView!
    @IBOutlet weak var saleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
            // Settings for oldPriceLabel to display underlined.
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: " ")
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        self.oldPriceLabel.attributedText = attributeString
            // Custom Corner Radius for UIView and UIButton
        self.itemView.customCornerRadiusView(degree: 12, border: false)
        self.heartView.customCornerRadiusView(degree: 12, border: false)
        self.saleView.customCornerRadiusView(degree: 12, border: false)
        self.heartView.backgroundColor = UIColor(white: 0, alpha: 0.2)
        self.cartButton.coradiusButton(corner: .defaultShow, degree: 12)
    }
    
    func bildData(fruit: Fruit) {
        self.nameLabel.text = fruit.name
        self.fruitImageView.image = fruit.image
        self.priceLabel.text = "$\(fruit.price)"
        self.oldPriceLabel.text = "$\(fruit.oldPrice)"
        if fruit.saleText == "" {
            self.saleView.isHidden = true
        } else {
            self.saleView.isHidden = false
            if fruit.saleText == "FREE SHIP" {
                self.saleView.backgroundColor = UIColor(red: 63/255, green: 154/255, blue: 246/255, alpha: 1)
            } else {
                self.saleView.backgroundColor = .orange
            }
            self.saleLabel.text = fruit.saleText
        }
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
}
