//
//  ViewController.swift
//  DemoApp
//
//  Created by Manish's Macbook Pro on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LblShow: UILabel!
    @IBOutlet weak var Txtwrite: UITextField!
    
    @IBAction func BtnShow(_ sender: Any) {
        LblShow.text = Txtwrite.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

