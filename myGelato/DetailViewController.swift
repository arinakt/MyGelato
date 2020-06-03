//
//  DetailViewController.swift
//  myGelato
//
//  Created by Арина on 29.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var gelato: Gelato?
    var price: Int = 525
    var weight: Int = 300

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = gelato?.name else { return }
            imageView.image = UIImage(named: image)
        }
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = gelato?.name
        }
    }
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = gelato?.description
        }
    }
    @IBOutlet weak var priceSegment: UISegmentedControl!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.cornerRadius = 15
        imageView.layer.cornerRadius = 40
                
    }
    

    @IBAction func sizeSelectionSegment(_ sender: UISegmentedControl) {
        switch priceSegment.selectedSegmentIndex {
        case 0:
            priceLabel.text = "\(String(gelato?.price300 ?? 0)) ₽"
            price = gelato?.price300 ?? 0
            weight = 300
        case 1:
            priceLabel.text = "\(String(gelato?.price500 ?? 0)) ₽"
            price = gelato?.price500 ?? 0
            weight = 500
        case 2:
            priceLabel.text = "\(String(gelato?.price1000 ?? 0)) ₽"
            price = gelato?.price1000 ?? 0
            weight = 1000
        default:
            priceLabel.text = "\(String(gelato?.price300 ?? 0)) ₽"
        }
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        
        gelato?.price = price
        gelato?.weight = weight
        bascetArray.append(gelato!)
        Order.sharedInstance.sum += price
        print(Order.sharedInstance.sum)
        
        let alert = UIAlertController(title: "Добавлено в корзину", message: "", preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "ok", style: .default) { (actionOK) in
        }
        alert.addAction(actionOK)
        self.present(alert, animated: true)
    }
    
}
