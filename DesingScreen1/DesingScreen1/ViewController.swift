//
//  ViewController.swift
//  DesingScreen1
//
//  Created by Manish's Macbook Pro on 22/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var SignUp: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var ProfileImage: UIImageView!
    @IBOutlet weak var CornerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SignUp.layer.cornerRadius = 25
        NextButton.layer.cornerRadius = 25
        ProfileImage.layer.cornerRadius = 60
        
        CornerView.layer.cornerRadius = 160
        CornerView.clipsToBounds = true
        txtEmail.leftViewMode = .always
            let nameimage = UIImageView()
            nameimage.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
            let anam = UIImage(systemName: "square.and.arrow.up.fill")
            nameimage.image = anam
            txtEmail.leftView = nameimage
        
        
        // Top Left Corner: .layerMinXMinYCorner
        // Top Right Corner: .layerMaxXMinYCorner
        // Bottom Left Corner: .layerMinXMaxYCorner
        // Bottom Right Corner: .layerMaxXMaxYCorner
        CornerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        
        
        
        //Image Border
        ProfileImage.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0).cgColor
        ProfileImage.layer.masksToBounds = true
        ProfileImage.layer.borderWidth = 5

        
    }

    @IBAction func BtnSignUp(_ sender: Any) {
        SignUp.backgroundColor = .blue
    }
    
    @IBAction func btnsignupCancel(_ sender: Any) {
        print("tap cancel")
    }
    
    @IBAction func dfesdf(_ sender: Any) {
        print("tap outside")
    }
    
}

