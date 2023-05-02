//
//  SwitchViewController.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 23/01/23.
//

import UIKit

class SwitchViewController: UIViewController {
    @IBOutlet weak var OnOffLbl: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var lightBulbimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OnOffLbl.isHidden = true
        
        
    }
    

    @IBAction func switchOnOff(_ sender: UISwitch) {
            if(switch1.isOn){
                switch1.thumbTintColor = .yellow
                lightBulbimg.tintColor = .yellow
                OnOffLbl.isHidden = false
                OnOffLbl.text = "ON"
                
            }else{
                switch1.thumbTintColor = .white
                lightBulbimg.tintColor = .lightGray
                OnOffLbl.isHidden = false
                OnOffLbl.text = "OFF"
            }
        
        
        if(switch2.isOn){
            view.self.backgroundColor = .white
        }else{
    view.self.backgroundColor = .lightGray


        }
    }
    
}
