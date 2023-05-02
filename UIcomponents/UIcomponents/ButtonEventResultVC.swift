//
//  ButtonEventResultVC.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 18/01/23.
//

import UIKit

class ButtonEventResultVC: UIViewController {
    @IBOutlet weak var EditingDidBegin: UIButton!
    
    @IBOutlet weak var resultShowlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func EditingDidBegin(_ sender: UIButton) {
        resultShowlbl.text = "EditingDidBegin"
    }
    
    @IBAction func EditingDidEnd(_ sender: UIButton) {
        resultShowlbl.text = "EditingDidEnd"

    }
    @IBAction func PrimaryActionTRiggered(_ sender: UIButton) {
        resultShowlbl.text = "PrimaryActionTRiggered"

    }
    
    @IBAction func TouchDownRepeat(_ sender: UIButton) {
        resultShowlbl.text = "TouchDownRepeat"

    }
    
    @IBAction func DidEndOnExit(_ sender: UIButton) {
        resultShowlbl.text = "DidEndOnExit"

    }
    @IBAction func valueChanged(_ sender: UIButton) {
        resultShowlbl.text = "valueChanged"

    }
    
    @IBAction func EditingChanged(_ sender: UIButton) {
        resultShowlbl.text = "EditingChanged"

    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
