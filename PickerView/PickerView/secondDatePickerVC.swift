//
//  secondDatePickerVC.swift
//  PickerView
//
//  Created by NT 2 on 03/02/23.
//

import UIKit

class secondDatePickerVC: UIViewController{

    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var inputDateTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputDateTF.delegate = self
        
    }
    
}
extension secondDatePickerVC : UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.openDatePicker()
    }
}

extension secondDatePickerVC {
    func openDatePicker(){
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        inputDateTF.inputView = datePicker
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        
        let cancelBtn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelBtnClick))
        
        let doneBtn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneBtnClick))
        
        let flexibleBtn = UIBarButtonItem (barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolBar.setItems([cancelBtn,flexibleBtn,doneBtn], animated: false)
        inputDateTF.inputAccessoryView = toolBar
    }
    
    @objc func cancelBtnClick(){
        inputDateTF.resignFirstResponder()
    }
    @objc func doneBtnClick(){
        if let datePicker = inputDateTF.inputView as? UIDatePicker{
            let dateFormet = DateFormatter()
            dateFormet.dateStyle = .medium
            dateFormet.timeStyle = .none
            inputDateTF.text = dateFormet.string(for: datePicker.date)
            
            print("Done",datePicker.date)
        }
        inputDateTF.resignFirstResponder()

    }

}
