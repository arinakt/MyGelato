//
//  BascetTableViewCell.swift
//  myGelato
//
//  Created by Арина on 31.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class BascetTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var nameGelatoLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func getData(item: Gelato) {
        nameGelatoLabel.text = item.name
        weightLabel.text = "\(item.weight ?? 0)г"
        priceLabel.text = "\(item.price ?? 0)₽"
        imageName?.image = UIImage(named: String(item.name ?? " "))
        imageName.layer.cornerRadius = 20
        imageName.layer.masksToBounds = true
    }
    

}
