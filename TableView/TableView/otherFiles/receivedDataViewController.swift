//
//  receivedDataViewController.swift
//  TableView
//
//  Created by NT 2 on 08/02/23.
//

import UIKit

class receivedDataViewController: UIViewController {

    @IBOutlet var descriptionLbl: UILabel!
    @IBOutlet var CountryLbl: UILabel!
    
    var strCountry: String!
    var strDescription:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLbl.text = strDescription
        CountryLbl.text = strCountry
    }
    

}
