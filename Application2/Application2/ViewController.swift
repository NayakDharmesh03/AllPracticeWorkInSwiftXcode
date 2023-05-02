//
//  ViewController.swift
//  Application2
//
//  Created by Manish's Macbook Pro on 27/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SunriseImage: UIImageView!
    @IBOutlet weak var TextField: UITextField!
    let tap = false
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var ButtonClickHere: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lable1.layer.cornerRadius = 50
        ButtonClickHere.layer.cornerRadius = 25
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func textFieldAction(_ sender: Any) {
        
    }
    
    @IBAction func onclickButton(_ sender: UIButton) {
        let result = TextField.text!
        
        let countStr = result.count
        
        lable1.text = String(countStr)
    
//        if(tap){
//            view.backgroundColor = UIColor.systemRed
//
//        }else{
//            lable1.backgroundColor = UIColor.systemPink
//        }
    }
    
    

}

