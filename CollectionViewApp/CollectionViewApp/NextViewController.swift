//
//  NextViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 24/02/23.
//

import UIKit

class NextViewController: UIViewController {

    var image : String = ""
    var name : String = ""
    @IBOutlet var moviePhoto: UIImageView!
    @IBOutlet var moviename: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        moviePhoto.image = UIImage(named: image)
        moviename.text = name
    }
    


}
