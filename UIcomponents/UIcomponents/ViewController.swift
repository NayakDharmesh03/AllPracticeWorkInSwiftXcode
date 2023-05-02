//
//  ViewController.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 29/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    
    
    @IBOutlet weak var LabelShow: UILabel!
    @IBOutlet weak var FirstNextBtn: UIButton!
    @IBOutlet weak var lable1: UILabel!
    
    @IBOutlet weak var lblOnOf: UILabel!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBOutlet weak var imgLight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgLight.isHidden = true
    }
    //switch operation
    @IBAction func switchOnOff(_ sender: UISwitch) {
        if(switchOutlet.isOn){
            imgLight.isHidden = false
            imgLight.tintColor = .yellow
            
        }else{
            imgLight.tintColor = .lightGray
                
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        
    }
    
    @IBAction func Button(_ sender: UIButton) {
        
        LabelShow.text = "Touche.."
    }
    
}

