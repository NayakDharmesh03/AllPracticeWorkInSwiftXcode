//
//  DetailedNewsViewController.swift
//  APICallingTask
//
//  Created by NT 2 on 03/03/23.
//

import UIKit

class DetailedNewsViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        print(#function)
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        print(#function)

    }
    
     func textFieldDidChangeSelection(_ textField: UITextField) {
        print(#function)

    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)

    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function)

       return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)

        return true
    }// called when clear button pressed. return NO to ignore (no notifications)

    @available(iOS 2.0, *)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        print(#function)

        return true
    }
}
