//
//  ViewController.swift
//  LoginPage2
//
//  Created by Manish's Macbook Pro on 21/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outerView: UIView!
    @IBOutlet weak var inerView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
//    @IBOutlet weak var FirstViewControler: UIView!
    @IBOutlet weak var LoginButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
//        inerView.layer.cornerRadius = 50
        inerView.layer.cornerRadius = 50
        
        profileImage.layer.cornerRadius = 47
        
        LoginButton.layer.cornerRadius = 25.5
        
        //OuterView
        let gradient3 = CAGradientLayer()
        
        gradient3.colors = [UIColor.systemPink.cgColor,UIColor.white.cgColor,UIColor.systemPink]
        gradient3.frame = outerView.bounds
        
        outerView.layer.insertSublayer(gradient3, at:0)
        
        
        //inerView
        let gradient = CAGradientLayer()
        
        gradient.colors = [UIColor.white.cgColor,UIColor.systemPink.cgColor]
        gradient.frame = inerView.bounds
        
        inerView.layer.insertSublayer(gradient, at:0)
        
        //LoginButton
        let gradient2 = CAGradientLayer()
        gradient2.colors = [UIColor.systemBlue.cgColor,UIColor.systemTeal.cgColor]
        
        gradient2.frame = LoginButton.bounds
        LoginButton.layer.insertSublayer(gradient2, at:0)
    }


}

