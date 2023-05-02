//
//  ViewController.swift
//  DropDownManu
//
//  Created by NT 2 on 28/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cities: [UIButton]!

    @IBOutlet var myCollectionCityStack: UIStackView!
    var manuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()

        myCollectionCityStack.isHidden = true
    }

    @IBAction func moreSetting(_ sender: UIBarButtonItem) {
        
        if manuShowing {
            myCollectionCityStack.isHidden = false
            UIStackView.animate(withDuration: 0.3, animations: {
                self.myCollectionCityStack.layoutIfNeeded()
            })
        }else{
            myCollectionCityStack.isHidden = !myCollectionCityStack.isHidden
            UIStackView.animate(withDuration: 0.3, animations: {
                self.myCollectionCityStack.layoutIfNeeded()
            })
        }
    
    }
    
   
}

