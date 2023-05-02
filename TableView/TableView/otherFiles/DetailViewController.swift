//
//  DetailViewController.swift
//  TableView
//
//  Created by NT 2 on 08/02/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var images: UIImageView!
    @IBOutlet var namesLbl: UILabel!
    @IBOutlet var detailLbl: UILabel!
    
    var stringNameLbl:String!
    var stringDetailLbl:String!
    var stringImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesLbl.text = stringNameLbl
        detailLbl.text = stringDetailLbl
        images.image = stringImage
    
    }
    
}
