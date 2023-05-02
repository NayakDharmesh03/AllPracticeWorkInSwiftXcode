//
//  TextFieldValidation.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 20/01/23.
//

import UIKit

class TextFieldValidation: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var UsernameMsg: UILabel!
    @IBOutlet weak var emailMsg: UILabel!
    @IBOutlet weak var PasswordMsg: UILabel!
    
    @IBOutlet weak var tfusername:UITextField!
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var tfPassword:UITextField!
    @IBOutlet weak var validationMsg:UILabel!
    @IBOutlet weak var BtnLogin:UIButton!
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        tfusername.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self

        validationMsg.isHidden = true
        UsernameMsg.isHidden = true
        emailMsg.isHidden = true
        PasswordMsg.isHidden = true

    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    func textField(_: UITextField, shouldChangeCharactersIn: NSRange, replacementString: String) -> Bool{
        print(#function)
        return true
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    @IBAction func Username(_ sender: UITextField) {
        if (tfusername.text?.isValidName())!{
            UsernameMsg.text = ""
        }else{
            UsernameMsg.isHidden = false
            UsernameMsg.text = "username Not valid..!"
        }
    }
    @IBAction func Email(_ sender: UITextField) {
        if (tfEmail.text?.isValidEmail())!{
            emailMsg.text = ""
        }else{
            emailMsg.isHidden = false
            emailMsg.text = "Email Not valid..!"
        }
    }
    @IBAction func password(_ sender: UITextField) {
        
        if (tfPassword.text?.isValidPassword())!{
            PasswordMsg.text = ""
        }else{
            PasswordMsg.isHidden = false
            PasswordMsg.text = "Password Not valid..!"
        }
    }
    @IBAction func login_Action(_ sender: UIButton) {
        validationMsg.isHidden = false

        if tfusername.text?.count == 0{
            validationMsg.text = "Please enter data...!"
        }else if tfEmail.text?.count == 0{
            validationMsg.text = "Please enter data...!"
        }else if tfPassword.text?.count == 0{
            validationMsg.text = "Please enter data...!"
        }else{
            validationMsg.text = ""
        }
    
    }
    
    
    
   
}

extension String {
        func isValidName() -> Bool {
            let inputRegEx = "^[a-zA-Z\\_]{2,25}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidEmail() -> Bool {
            let inputRegEx = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[A-Za-z]{2,64}"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidPhone() -> Bool {
            let inputRegEx = "^((\\+)|(00))[0-9]{6,14}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidPassword() -> Bool {
            let inputRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()-_+={}?>.<,:;~`']{8,}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        
        public func filterPhoneNumber() -> String {
            return String(self.filter {!" ()._-\n\t\r".contains($0)})
        }
    }
