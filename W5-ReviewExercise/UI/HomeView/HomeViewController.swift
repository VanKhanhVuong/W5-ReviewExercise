//
//  HomeViewController.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 12/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var fruitListCollectionView: UICollectionView!
    var fruits: [Fruit] = []
    var homeViewModel = HomeViewModel()
    
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
        
        // Get data form viewModel
        fruits = homeViewModel.getData()
        
        // Config layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        fruitListCollectionView.collectionViewLayout = layout
    }
}
extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "DetailView", bundle: .main)
        guard let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        detailViewController.fruit = fruits[indexPath.item]
        detailViewController.modalPresentationStyle = .fullScreen
        present(detailViewController, animated: true, completion: nil)
    }
}
extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruits.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell else { return UICollectionViewCell() }
        let model = fruits[indexPath.item]
        item.bildData(viewModel: MyCollectionViewCellModel(name: model.name, image: model.image, price: model.price, oldPrice: model.oldPrice, saleText: model.saleText))
        return item
    }
    func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]){
        
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
