
//  PickerViewController.swift
//  PickerView
//  Created by NT 2 on 06/02/23.

import UIKit

class PickerViewController: UIViewController {

    @IBOutlet var resultlable: UILabel!
    @IBOutlet var resultTf: UITextField!
    @IBOutlet var pickerView: UIPickerView!
    
    let dataString = ["Rita","Vikash","Vimal","Rohit","Raami","Dhaval"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self

    }
    
}

extension PickerViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return dataString.count
    }
}
extension PickerViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return dataString[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        resultlable.text = dataString[row]
        resultTf.text = dataString[row]

    }

}
