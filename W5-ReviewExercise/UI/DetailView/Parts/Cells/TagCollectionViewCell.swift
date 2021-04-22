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
        tagView.customShadowAndRadius(degree: 20, width: 5, height: 5)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
