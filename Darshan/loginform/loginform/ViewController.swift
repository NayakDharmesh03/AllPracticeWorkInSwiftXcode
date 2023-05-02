//
//  ViewController.swift
//  loginform
//
//  Created by NT 2 on 26/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var btnlogin: UIButton!
    @IBOutlet var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pass.layer.masksToBounds = true
        pass.layer.cornerRadius = 20
        username.layer.masksToBounds = true
        username.layer.cornerRadius = 20
        btnlogin.layer.masksToBounds = true
        btnlogin.layer.cornerRadius = 20
        btnlogin.layer.borderColor = UIColor.black.cgColor
        btnlogin.layer.borderWidth = 3
    }


}

