//
//  ViewController.swift
//  ButtonDisign
//
//  Created by Manish's Macbook Pro on 20/12/22.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var button1: UIButton!
//
//    @IBOutlet weak var button2: UIButton!
//
//    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet var mainView: UIView!
    
    var didTap = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func changeBgColor(_ sender: Any) {
            if(didTap){
                mainView.backgroundColor = .orange
            }
            else{
                mainView
            }
        }
        
//        button1.layer.cornerRadius = 50
//
//
//        button2.layer.borderWidth = 2
//        button2.layer.borderColor = UIColor.systemBlue.cgColor
//        button2.layer.cornerRadius = 10
//
//
//        let gradient = CAGradientLayer()
//        gradient.colors = [UIColor.systemGreen.cgColor,UIColor.systemYellow.cgColor]
//        gradient.frame = button3.bounds
//
//        button3.layer.insertSublayer(gradient, at: 4)
        
    }


}

