//
//  ViewController.swift
//  PickerView
//
//  Created by NT 2 on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var inputDate: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)

    }
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        
        case 0:datePicker.preferredDatePickerStyle = .wheels
            
        case 1:datePicker.preferredDatePickerStyle = .compact
            
        case 2:datePicker.preferredDatePickerStyle = .inline
            
        default:
            break
        }
    }
    @objc func dateSelected(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        let date = dateFormatter.string(from: datePicker.date)
        inputDate.text = date

    }
}

