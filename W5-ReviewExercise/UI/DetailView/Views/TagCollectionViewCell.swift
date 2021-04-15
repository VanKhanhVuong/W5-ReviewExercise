//
//  TagCollectionViewCell.swift
//  W5-ReviewExercise
//
//  Created by Văn Khánh Vương on 13/04/2021.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var tagView: UIView!
    @IBOutlet weak var tagTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpTagView()
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setUpTagView() {
        tagView.layer.cornerRadius = 20
        tagView.layer.borderWidth = 3.0
        tagView.layer.borderColor = UIColor.white.cgColor
        tagView.layer.shadowRadius = 20
        tagView.layer.shadowOffset = CGSize(width: 2, height: 2)
        tagView.layer.shadowOpacity = 0.3
        tagView.layer.shadowColor = UIColor.gray.cgColor
    }
}
