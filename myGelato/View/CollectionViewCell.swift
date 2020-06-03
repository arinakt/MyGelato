//
//  CollectionViewCell.swift
//  myGelato
//
//  Created by Арина on 29.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageGelato: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var gelato: Gelato? {
    didSet {
            nameLabel.text = gelato?.name
            detailLabel.text = gelato?.type
            if let image = gelato?.name {
                imageGelato.image = UIImage(named: image)
            }
        }
    }
}
