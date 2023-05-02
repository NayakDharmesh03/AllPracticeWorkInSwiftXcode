//
//  ThirdDatePickerViewController.swift
//  PickerView
//
//  Created by NT 2 on 03/02/23.
//

import UIKit

class ThirdDatePickerViewController: UIViewController {
    @IBOutlet var inputTF: UITextField!
    @IBOutlet var image: UIImageView!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openDatePicker()
        
    }
    
    
   

}
extension ThirdDatePickerViewController{
    
    func openDatePicker(){
        datePicker.preferredDatePickerStyle = .wheels

        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneBtnClicked))
        
        let cancelBtn = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBtnClicked))
        
        let flexibleBtn = UIBarButtonItem (barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.items = [cancelBtn,flexibleBtn,doneBtn]
        inputTF.inputAccessoryView = toolBar
        inputTF.inputView = datePicker
        datePicker.datePickerMode = .time
    }
    
    @objc func doneBtnClicked(){
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"

        formatter.dateStyle = .medium
        inputTF.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    @objc func cancelBtnClicked(){
        self.view.endEditing(true)
    }
}
