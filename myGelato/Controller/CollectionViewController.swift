//
//  CollectionViewController.swift
//  myGelato
//
//  Created by Арина on 29.05.2020.
//  Copyright © 2020 Арина. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let itemsPerRow: CGFloat = 2
    let sectionInserts = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    var myGelatoArray = Gelato.getGelato()


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return myGelatoArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell {
            
            cell.gelato = myGelatoArray[indexPath.row]
        
            return cell
        }
        return UICollectionViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            let detailVC = segue.destination as! DetailViewController
            let gelato = sender as? Gelato
            //print(gelato ?? nil)
            detailVC.gelato = gelato
        }
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionInserts.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: 260)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInserts.left
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let gelato = myGelatoArray[indexPath.row]
        self.performSegue(withIdentifier: "detail", sender: gelato)
    }
}
