//
//  ButtonEventsViewController.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 18/01/23.
//

import UIKit

class ButtonEventsViewController: UIViewController {

    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var TouchUpInside: UIButton!
    @IBOutlet weak var TouchUpOutside: UIButton!
    @IBOutlet weak var TouchDragOutside: UIButton!
    @IBOutlet weak var TouchDragEnter: UIButton!
    @IBOutlet weak var TouchDraginside: UIButton!
    
    @IBOutlet weak var TouchDragExit: UIButton!
    
    @IBOutlet weak var TouchDown: UIButton!
    
    
    @IBOutlet weak var TouchCancel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TouchUpOutside(_ sender: UIButton) {
        resultLbl.text = "TouchUpOutside"
    }
    
    @IBAction func TouchUpInside(_ sender: UIButton) {
        resultLbl.text = "TouchUpInside"

    }
    @IBAction func TouchDragOutside(_ sender: UIButton) {
        resultLbl.text = "TouchDragOutside"

    }
    @IBAction func TouchDragInside(_ sender: UIButton) {
        resultLbl.text = "TouchDragInside"

    }
    @IBAction func TouchDragEnter(_ sender: UIButton) {
        resultLbl.text = "TouchDragEnter"

    }
    @IBAction func TouchDragExit(_ sender: UIButton) {
        resultLbl.text = "TouchDragExit"

    }
    @IBAction func TouchDown(_ sender: UIButton) {
        resultLbl.text = "TouchDown"

        
    }
    @IBAction func TouchCancel(_ sender: UIButton) {
        resultLbl.text = "TouchCancel"

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
