//
//  TextViewViewController.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 23/01/23.
//

import UIKit

class TextViewViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate  {

    @IBOutlet weak var formnameLbl: UILabel!
    @IBOutlet weak var clickBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.delegate = self
        self.nameTf.delegate = self
        self.emailTf.delegate = self
        self.phoneTf.delegate = self
        
        textView.backgroundColor = UIColor(patternImage: UIImage(named: "Google") ?? .add)

        
        
        nameTf.layer.shadowOpacity = 1
        nameTf.layer.shadowRadius = 4.0
        nameTf.layer.shadowColor = UIColor.black.cgColor
        
        emailTf.layer.shadowOpacity = 1
        emailTf.layer.shadowRadius = 4.0
        emailTf.layer.shadowColor = UIColor.black.cgColor
        
        phoneTf.layer.shadowOpacity = 1
        phoneTf.layer.shadowRadius = 2.0
        phoneTf.layer.shadowColor = UIColor.black.cgColor
        
        
        textView.layer.cornerRadius = 20
        


    }
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.nameTf:
            self.emailTf.becomeFirstResponder()
        case self.emailTf:
            self.phoneTf.becomeFirstResponder()
        case self.phoneTf:
            self.textView.becomeFirstResponder()
        default:
            self.textView.resignFirstResponder()
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    
    @IBAction func nameTextField(_ sender: UITextField) {
        if(nameTf.text?.isValidName())!{
            
        }else{
            alertMassageBox(massage: "Please enter Valid Name!")
        }
    }
    @IBAction func emailTextField(_ sender: UITextField) {
        if(emailTf.text?.isValidEmail())!{
            
        }else{
            alertMassageBox(massage: "Please enter Valid Email!")
        }

    }
    @IBAction func phoneTextField(_ sender: UITextField) {
        if(phoneTf.text?.isValidPhone())!{
            
        }else{
            alertMassageBox(massage: "Please enter Valid Phone!")
        }

    }
    
    
    func deleteRecord(){
        textView.text = ""
    }
    func alertMassageBox(massage:String){
        let dialogeBox = UIAlertController(title: "Conform massage", message: massage, preferredStyle: .alert)
        
        let Ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
            self.deleteRecord()
            self.showToast(message: "TextView Cleared...", font: .systemFont(ofSize: 12.0))

            print("Yes button tapped")
        })
    
        let  No = UIAlertAction(title: "No", style: .default, handler: { (action) -> Void in
            print("No button tapped")
        })

        dialogeBox.addAction(Ok)
        dialogeBox.addAction(No)
        
        self.present(dialogeBox, animated: true, completion: nil)


    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @available(iOS 2.0, *)
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool{
        print(#function)

        return true
    }

    @available(iOS 2.0, *)
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool{
        print(#function)
        
        return true
    }
    @available(iOS 2.0, *)
    func textViewDidBeginEditing(_ textView: UITextView){
        print(#function)

    }

    @available(iOS 2.0, *)
    func textViewDidEndEditing(_ textView: UITextView){

        print(#function)

    }
    @available(iOS 2.0, *)
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
        print(#function)

        return true
    }

    @available(iOS 2.0, *)
    func textViewDidChange(_ textView: UITextView){
        print(#function)

    }

    
    @available(iOS 2.0, *)
    func textViewDidChangeSelection(_ textView: UITextView){
        print(#function)

    }

    
    @available(iOS 10.0, *)
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool{
        print(#function)

        return true
    }

}
extension UIViewController {

func showToast(message : String, font: UIFont) {

    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.font = font
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 2.0, delay: 0.1, options: .curveEaseOut, animations: {
         toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
        toastLabel.removeFromSuperview()
    })
} }
extension TextViewViewController {
        func isValidName() -> Bool {
            let inputRegEx = "^[a-zA-Z\\_]{2,25}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidEmail() -> Bool {
            let inputRegEx = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{10,64}"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidPhone() -> Bool {
            let inputRegEx = "^[0-9]{10}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
        func isValidPassword() -> Bool {
            let inputRegEx = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()-_+={}?>.<,:;~`']{8,}$"
            let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
            return inputpred.evaluate(with:self)
        }
    
    
    @IBAction func clickButton(_ sender: UIButton) {

        let dialogeBox = UIAlertController(title: "Conform massage", message: "Are you want Clear TextView?", preferredStyle: .alert)
        
        let Yes = UIAlertAction(title: "Yes", style: .default, handler: { (action) -> Void in
            self.deleteRecord()
            self.showToast(message: "TextView Cleared...", font: .systemFont(ofSize: 12.0))

            print("Yes button tapped")
        })
    
        let  No = UIAlertAction(title: "No", style: .default, handler: { (action) -> Void in
            print("No button tapped")
        })

        dialogeBox.addAction(Yes)
        dialogeBox.addAction(No)
        
        self.present(dialogeBox, animated: true, completion: nil)


    }
}
