//
//  HomeViewController.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var fruitListCollectionView: UICollectionView!
    
    var data = [Fruit(image: #imageLiteral(resourceName: "dudu"), name: "Papaya", description: "Description of Papaya", price: 2.0, oldPrice: 3.1, rating: 4.5, starNumber: 5, voteNumber: 45, ingredientAray: ["Fragrant","Tasty"], saleText: ""),
                Fruit(image: #imageLiteral(resourceName: "ot"), name: "Chili", description: "Description of Chili", price: 3.4, oldPrice: 5.3, rating: 5, starNumber: 5, voteNumber: 23, ingredientAray: ["Poignant","Bitter"], saleText: "SALE 12 %"),
                Fruit(image: #imageLiteral(resourceName: "Dua"), name: "Coconut", description: "Description of Coconut", price: 4.0, oldPrice: 5.0, rating: 4, starNumber: 4, voteNumber: 20, ingredientAray: ["Sweet","Fragrant"], saleText: ""),
                Fruit(image: #imageLiteral(resourceName: "Toi"), name: "Garlic", description: "Description of Garlic", price: 5.3, oldPrice: 6.0, rating: 4, starNumber: 4, voteNumber: 34, ingredientAray: ["Hot","Poignant"], saleText: "FREE SHIP"),
                Fruit(image: #imageLiteral(resourceName: "mangCau"), name: "Annona", description: "Description of Annona", price: 4.2, oldPrice: 5.0, rating: 3, starNumber: 3, voteNumber: 54, ingredientAray: ["Fragrant","Tasty","Sweet"], saleText: ""),
                Fruit(image: #imageLiteral(resourceName: "blueberry"), name: "Blue Berry", description: "Description of Blue Berry", price: 3.0, oldPrice: 4.6, rating: 4, starNumber: 4, voteNumber: 37, ingredientAray: ["Fragrant","Tasty","Sweet"], saleText: "SALE 10 %"),
                Fruit(image: #imageLiteral(resourceName: "bap"), name: "Corn", description: "Description of Corn", price: 2.0, oldPrice: 4.3, rating: 5, starNumber: 5, voteNumber: 25, ingredientAray: ["Fragrant","Tasty","Sweet"], saleText: ""),
                Fruit(image: #imageLiteral(resourceName: "caChua"), name: "Tomato", description: "Description of Tomato", price: 1.2, oldPrice: 3.0, rating: 4.5, starNumber: 5, voteNumber: 50, ingredientAray: ["Fragrant","Tasty","Sweet"], saleText: "FREE SHIP"),
                Fruit(image: #imageLiteral(resourceName: "lemon"), name: "Lemon", description: "Description of Lemon", price: 5.0, oldPrice: 6.0, rating: 3, starNumber: 3, voteNumber: 30, ingredientAray: ["Sour"], saleText: "SALE 5%"),
                Fruit(image: #imageLiteral(resourceName: "CaiBong"), name: "Broccoli", description: "Description of Broccoli", price: 2.0, oldPrice: 3.0, rating: 3, starNumber: 3, voteNumber: 27, ingredientAray: [""], saleText: "SALE 5%"),
                Fruit(image: #imageLiteral(resourceName: "Pear"), name: "White Pumpkin", description: "Description of White Pumpkin", price: 3.0, oldPrice: 4.0, rating: 3, starNumber: 3, voteNumber: 34, ingredientAray: ["Fragrant","Tasty"], saleText: ""),
                Fruit(image: #imageLiteral(resourceName: "organ"), name: "Orange", description: "Description of Orange", price: 7.0, oldPrice: 9.0, rating: 1, starNumber: 1, voteNumber: 24, ingredientAray: ["Fragrant","Sour","Sweet"], saleText: "FREE SHIP")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        fruitListCollectionView.reloadData()
    }
    
    func registerCollectionView(){
        self.fruitListCollectionView.register(MyCollectionViewCell.nib, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        fruitListCollectionView.delegate = self
        fruitListCollectionView.dataSource = self
        
        // Config layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        fruitListCollectionView.collectionViewLayout = layout
    }
}

//MARK: - Extension
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "DetailView", bundle: .main)
        guard let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        detailViewController.fruit = data[indexPath.item]
        detailViewController.modalPresentationStyle = .fullScreen
        present(detailViewController, animated: true, completion: nil)
    }
}
extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        let model = data[indexPath.item]
        item.bildData(fruit: model)
        return item
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var size = CGSize(width: 0.0, height: 0.0)
        if UIDevice.current.orientation.isLandscape {
            size = CGSize(width: (collectionView.frame.width - 60) / 3, height: collectionView.frame.height)
        } else {
            size = CGSize(width: (collectionView.frame.width - 45) / 2, height: collectionView.frame.height / 2.5)
        }
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    }
}
