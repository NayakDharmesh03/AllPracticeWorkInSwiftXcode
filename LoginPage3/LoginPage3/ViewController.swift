//
//  ViewController.swift
//  LoginPage3
//
//  Created by Manish's Macbook Pro on 22/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roketImage: UIImageView!
    
    @IBOutlet var BaseScreenView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var textBoxPassword: UITextField!
    @IBOutlet weak var textBoxEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Shadow textBoxEmail
        textBoxEmail.layer.cornerRadius = 15
        textBoxEmail.layer.shadowOffset = CGSize(width: 0, height: 5)
        textBoxEmail.layer.shadowColor = UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        textBoxEmail.layer.shadowRadius = 1.7
        textBoxEmail.layer.shadowOpacity = 0.5
        
        //Shadow textBoxPassword
        textBoxPassword.layer.cornerRadius = 15
        textBoxPassword.layer.shadowOffset = CGSize(width: 0, height: 5)
        textBoxPassword.layer.shadowColor = UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        textBoxPassword.layer.shadowRadius = 1.7
        textBoxPassword.layer.shadowOpacity = 0.5
        
        
        
        //shadow Button
        loginButton.layer.cornerRadius = 15
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 5.5)
        loginButton.layer.shadowColor = UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        loginButton.layer.shadowRadius = 3.7
        loginButton.layer.shadowOpacity = 0.5
        
        
        
        //shadow RoketImage
        roketImage.layer.cornerRadius = 110
        roketImage.layer.shadowOffset = CGSize(width: 3, height: 10)
        roketImage.layer.shadowColor = UIColor(red:0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
        roketImage.layer.shadowRadius = 3.7
        roketImage.layer.shadowOpacity = 0.5
        
        //Image Border
        roketImage.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0).cgColor
        roketImage.layer.masksToBounds = true
        roketImage.layer.borderWidth = 5
        
        
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor,UIColor.systemBlue.cgColor]
        
        gradient.frame = BaseScreenView.bounds
        BaseScreenView.layer.insertSublayer(gradient, at: 0)
        
        
    }


}

