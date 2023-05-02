//
//  StackViewController.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 31/01/23.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet var stackView:
        UIStackView!
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var emailTF: UITextField!

    @IBOutlet var phoneTF: UITextField!

    @IBOutlet var passwordTF: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.borderWidth = 2
        profileImage.layer.cornerRadius = 25
        profileImage.layer.borderColor = CGColor(gray: 21.2, alpha: 1)
    }
    

    
}
