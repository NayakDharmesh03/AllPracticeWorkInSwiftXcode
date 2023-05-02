//
//  PickerViewVC.swift
//  PickerView
//
//  Created by NT 2 on 03/02/23.
//

import UIKit

class PickerViewVC: UIViewController, UIPickerViewDelegate {

    @IBOutlet var resulTF: UITextField!
    @IBOutlet var imageView: UIImageView!
    let dataString = ["Rita","Vikash","Vimal","Rohit","Raami","Dhaval"]
    
    let pickerView = UIPickerView()
    let toolBar = UIToolbar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.borderWidth = 2
        imageView.layer.cornerRadius = 25
        imageView.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.showsSelectionIndicator = true
        resulTF.inputView = pickerView
        toolBar.sizeToFit()
        
        let Done = UIBarButtonItem(title:"Done", style: .done, target: self, action: #selector(doneButtonClick))
        let flexibleBtn = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolBar.setItems([flexibleBtn,Done], animated: false)
        resulTF.inputAccessoryView = toolBar
    
        
    }

    @objc func doneButtonClick(){
        let selectedItem = dataString[pickerView.selectedRow(inComponent: 0)]
        resulTF.text = selectedItem
        resulTF.endEditing(true)
    }
}

extension PickerViewVC : UIDocumentPickerDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataString.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return dataString[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        resulTF.text = dataString[row]
        imageView.image = UIImage(named: dataString[row])
    }
}
