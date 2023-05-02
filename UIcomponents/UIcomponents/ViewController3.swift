//
//  ViewController3.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 12/01/23.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var sliderName: UILabel!
    
    @IBOutlet weak var NextScrollViewBtn: UIButton!
    @IBOutlet weak var sliderValueLable1: UILabel!
    @IBOutlet weak var sliderValueLable2: UILabel!
    
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider1: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.modalPresentationStyle = .fullScreen
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sliderValueChange(_ sender: UISlider) {
        sliderValueLable1.text = String(Int(slider1.value))
        
        sliderValueLable2.text = String(Int(slider2.value))
        
        
        self.view.backgroundColor  = UIColor(red: CGFloat(slider2.value/60), green: CGFloat(slider2.value/50), blue: CGFloat(slider2.value/55), alpha: 1)
        
//        view.self.backgroundColor = UIColor(red:CGFloat(sliderOutlet1.value/255), green: CGFloat(sliderOutlet2.value/255), blue: CGFloat(sliderOutlet3.value/255), alpha: 1)
        
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
