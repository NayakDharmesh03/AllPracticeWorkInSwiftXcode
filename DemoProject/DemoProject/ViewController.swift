//
//  ViewController.swift
//  DemoProject
//
//  Created by NT 2 on 09/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var emailTf: UITextField!
    @IBOutlet var passTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func saveBtnClicked(_ sender: UIButton) {
        DatabaseManager.shared.insertPlayer(strName: nameTF.text!, stremail: emailTf.text!, strpassword: passTf.text!) { success, msg in
            if success == true{
                print("Data Added Sucessfully")
            }
            else{
                print("Error")
            }
        }
    }
    
}

