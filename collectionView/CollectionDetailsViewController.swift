//
//  CollectionDetailsViewController.swift
//  collectionView
//
//  Created by Sridatta Nallamilli on 23/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class CollectionDetailsViewController: UIViewController {

    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var detailLbl: UILabel!
    
    var img:UIImage!
    var lbl:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        detailImg.image = img
        detailLbl.text = lbl
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
