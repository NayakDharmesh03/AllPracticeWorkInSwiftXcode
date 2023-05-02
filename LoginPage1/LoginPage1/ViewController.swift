//
//  ViewController.swift
//  LoginPage1
//
//  Created by Manish's Macbook Pro on 21/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var faceBookButton: UIButton!
    @IBOutlet weak var twiterButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        faceBookButton.layer.cornerRadius = 25
        twiterButton.layer.cornerRadius = 25
        googleButton.layer.cornerRadius = 25

        loginButton.layer.cornerRadius = 25.5
        
        let gradiantColor = CAGradientLayer()
        gradiantColor.colors = [UIColor.systemPurple.cgColor,UIColor.systemBlue.cgColor]
        gradiantColor.frame = loginButton.bounds
        
        loginButton.layer.insertSublayer(gradiantColor, at: 0)
    }


}

