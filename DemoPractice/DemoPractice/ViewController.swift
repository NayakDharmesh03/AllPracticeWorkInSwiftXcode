//
//  ViewController.swift
//  DemoPractice
//
//  Created by Manish's Macbook Pro on 05/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateChoose: UIDatePicker!
    @IBOutlet weak var resultfield: UITextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
//    let dateFormate = Da
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        clsr()

        // Do any additional setup after loading the view.
    
        resultLbl.text = "Result:  \(stepper.value.description)"
        
//        resultfield.text = dateChoose.
    }

    @IBAction func changeValues(_ sender: UIStepper) {
        resultLbl.text = "Result:  \(stepper.value.description)"

    }
    

    @IBAction func dateChange(_ sender: UIDatePicker) {
        
        
    }
    
    
    var clsr = {() in
        var i = 1, n = 10
        while(i < n){
            guard i % 2 == 0 else{
                print(i)
                i += 1
                return
             }
            print(i)
            i += 1
        }
    }
    
    
    
   
}

