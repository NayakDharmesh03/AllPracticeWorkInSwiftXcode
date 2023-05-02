//
//  NewVC.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 18/01/23.
//

import UIKit

class NewVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var TextField2: UITextField!
    
    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        TextField.delegate = self
        TextField2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
    @available(iOS 2.0, *)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("1.",#function)
        // return NO to disallow editing.
        return true
    }
    @available(iOS 2.0, *)
    func textFieldDidBeginEditing(_ textField: UITextField){
        print("5.",#function)

        // became first responder
    }

    @available(iOS 2.0, *)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        print(#function)

        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        
        return true
    }

    @available(iOS 10.0, *)
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason){
        // if implemented, called in place of textFieldDidEndEditing:
        print(#function)

        
    }

    
    @available(iOS 2.0, *)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // return NO to not change text
        print("6.",#function)
        
        if textField == TextField{
            if range.location < 10 {
                return true
            }
            else{
                return false
            }
            
        }else{
            return true
        }

    }

    
    @available(iOS 13.0, *)
    func textFieldDidChangeSelection(_ textField: UITextField){
        print("2.",#function)

        
    }

    
    @available(iOS 2.0, *)
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // called when clear button pressed. return NO to ignore (no notifications)
        print("3.",#function)

        return true

    }

    @available(iOS 2.0, *)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print(#function)

        return true
    }

    
    
//    @IBAction func btnaction(_ sender: UIButton) {
//        if sender.tag == 1 {
//            print("Hi its one ")
//        }else {
//            print("Hi its two ")
//        }
//    }
//
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
