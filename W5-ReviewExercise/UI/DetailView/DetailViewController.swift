//
//  DetailViewController.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var nameFruitLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameItemView: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var totalBillLabel: UILabel!
    @IBOutlet weak var imageFruitView: UIView!
    @IBOutlet weak var totalBillView: UIView!
    @IBOutlet weak var amountView: UIView!
    @IBOutlet weak var sloganButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downView: UIView!
    @IBOutlet weak var upView: UIView!
    @IBOutlet weak var tagCollectionView: UICollectionView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var amountLabel: UILabel!
    
    let gradientLayer = CAGradientLayer()
    var fruit = Fruit(image: #imageLiteral(resourceName: "empty"), name: "", description: "", price: 0.0, oldPrice: 0.0, rating: 0.0, starNumber: 0, voteNumber: 0, ingredientAray: [""], saleText: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        registerCollectionView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gradientLayer.frame = view.layer.bounds
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func touchDownButton(_ sender: Any) {
        let amount: String = "\(Int(amountLabel.text!)! - 1)"
        if ((Int(amount))! < 1) {
            amountLabel.text = "0"
            downButton.backgroundColor = .white
            downButton.setTitleColor(.black, for: .normal)
        } else {
            amountLabel.text = amount
        }
    }
    
    @IBAction func touchUpButton(_ sender: Any) {
        if downButton.backgroundColor == .white {
            downButton.backgroundColor = .black
            downButton.setTitleColor(.white, for: .normal)
        }
        amountLabel.text = "\(Int(amountLabel.text!)! + 1)"
    }
    
    func registerCollectionView(){
        tagCollectionView.register(TagCollectionViewCell.nib, forCellWithReuseIdentifier: TagCollectionViewCell.identifier)
        tagCollectionView.delegate = self
        tagCollectionView.dataSource = self
        tagCollectionView.backgroundColor = UIColor.clear
    }
    
    func setUpgradientLayer() {
        // Set up Gradient Layer for UIView
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemBackground.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 5.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setUpView() {
        setUpgradientLayer()
        // Custom Corner Radius for UIView downView
        downView.customCornerRadiusView(degree: 10, border: false)
        // Custom Corner Radius for UIView upView
        upView.customCornerRadiusView(degree: 10, border: false)
        // Custom Corner Radius for UIButton downButton
        downButton.coradiusButton(corner: .topLeftbottomLeft, degree: 25)
        // Custom Corner Radius for UIButton upButton
        upButton.coradiusButton(corner: .topRightBottomRight, degree: 25)
        // Custom Corner Radius for UIView imageFruitView
        imageFruitView.customCornerRadiusView(degree: 30, border: true)
        // Custom Corner Radius for UIView amountView
        
        amountView.layer.cornerRadius = 25
        amountView.layer.borderWidth = 3.0
        amountView.layer.borderColor = UIColor.white.cgColor
        amountView.layer.shadowRadius = 25
        amountView.layer.shadowOffset = CGSize(width: 20, height: 20)
        amountView.layer.shadowOpacity = 0.5
        amountView.layer.shadowColor = UIColor.black.cgColor
        
        // Custom Corner Radius for UIView totalBillView
        totalBillView.layer.cornerRadius = 20
        totalBillView.layer.borderWidth = 3.0
        totalBillView.layer.borderColor = UIColor.white.cgColor
        totalBillView.layer.shadowRadius = 20
        totalBillView.layer.shadowOffset = CGSize(width: 20, height: 20)
        totalBillView.layer.shadowOpacity = 0.5
        totalBillView.layer.shadowColor = UIColor.black.cgColor
        
        // Custom Corner Radius for UIView nameItemView
        nameItemView.layer.cornerRadius = 20
        nameItemView.layer.borderWidth = 3.0
        nameItemView.layer.borderColor = UIColor.white.cgColor
        nameItemView.layer.shadowRadius = 20
        nameItemView.layer.shadowOffset = CGSize(width: 5, height: 5)
        nameItemView.layer.shadowOpacity = 0.5
        nameItemView.layer.shadowColor = UIColor.black.cgColor
        
        // Pour fruit data into the UIs
        fruitImageView.image = fruit.image
        nameFruitLabel.text = fruit.name
        descriptionLabel.text = fruit.description
        ratingLabel.text = "\(fruit.rating)"
        nameLabel.text = fruit.name
        totalBillLabel.text = "$\(fruit.price)"
        starLabel.attributedText = changeColorText(number: fruit.starNumber, myString: "★★★★★", color: .orange)
        voteCountLabel.text = "(\(fruit.voteNumber))"
        sloganButton.setAttributedTitle(changeColorText(number: 0, myString: "Design By Cronum", color: .black), for: .normal)
    }
    
    func changeColorText(number: Int, myString: NSString, color: UIColor) -> NSMutableAttributedString{
        var endNumber: Int = 0
        var starNumber: Int = 0
        var fontName: String = ""
        var fontSize: CGFloat = 0.0
        if (myString == "★★★★★") {
            endNumber = number
            fontName = "Georgia"
            fontSize = 18.0
        } else {
            starNumber = 10
            endNumber = 6
            fontName = "Gill Sans"
            fontSize = 20.0
        }
        var myMutableString = NSMutableAttributedString()
        myMutableString = NSMutableAttributedString(string: myString as String, attributes: [NSAttributedString.Key.font:UIFont(name: fontName, size: fontSize)!])
        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location:starNumber,length:endNumber))
        return myMutableString
    }
}
extension DetailViewController: UICollectionViewDelegate {
}

extension DetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.fruit.ingredientArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: TagCollectionViewCell.identifier,
                                                      for: indexPath) as! TagCollectionViewCell
        item.tagTextLabel.text = self.fruit.ingredientArray[indexPath.item]
        return item
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? TagCollectionViewCell
        cell?.tagView.backgroundColor = .orange
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? TagCollectionViewCell
        cell?.tagView.backgroundColor = .white
    }
}
extension DetailViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 5) / 2, height: collectionView.frame.height)
    }
}


