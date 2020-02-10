//
//  ViewController.swift
//  collectionView
//
//  Created by Sridatta Nallamilli on 23/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var name = ["Image1","Image2","Image3","Image4","Image5","Image6","Image7","Image8","Image9","Image10","Image11","Image12","Image13","Image14","Image15","Image16","Image17","Image18","Image19","Image20"]
    
//    var name = ["Image 1","Image 2","Image 3","Image 4","Image 5","Image 6","Image 7","Image 8","Image 9","Image 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionItem", for: indexPath) as! CollectionViewCell
        cell.imgItem.image = UIImage(named: name[indexPath.row])
        cell.nameLbl.text = name[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell:CollectionDetailsViewController = self.storyboard?.instantiateViewController(identifier: "CollectionDetailsViewController") as! CollectionDetailsViewController
        cell.img = UIImage(named: name[indexPath.row])
        cell.lbl = name[indexPath.row]
        self.navigationController?.pushViewController(cell, animated: true)
        
    }
    
    
}

