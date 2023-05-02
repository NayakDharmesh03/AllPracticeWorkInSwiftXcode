//
//  SliderViewController.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 23/01/23.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet var sliderValuess: UILabel!
    
    @IBOutlet weak var setAge: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var slider1: UISlider!

    @IBOutlet weak var slider2: UISlider!

    @IBOutlet weak var slider3: UISlider!

    @IBOutlet weak var resultLbl2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAge.text = "Set your Age"
        resultLbl2.isHidden = true
        
//        slider.transform = CGAffineTransform(rotationAngle: CGFloat(360))
                                             
        slider1.thumbTintColor = UIColor.red
        slider1.tintColor = UIColor.red
        slider2.thumbTintColor = UIColor.green
        slider2.tintColor = UIColor.green
        slider3.thumbTintColor = UIColor.blue
        slider3.tintColor = UIColor.blue

        slider.setThumbImage(UIImage(named: "smiley.fill"), for: .normal)
        
    }
    
    @IBAction func sliderVali(_ sender: UISlider) {
        
        var value = sender.value
        sliderValuess.text = String(value)
    }
    //slider change colors
    @IBAction func sliderChangeColor(_ sender: UISlider) {
                
        slider2.thumbTintColor = UIColor.green
        
        slider3.thumbTintColor = UIColor.blue

        view.self.backgroundColor = UIColor(red: CGFloat(slider1.value)/255, green: CGFloat(slider1.value)/255, blue: CGFloat(slider1.value)/255, alpha: 1)
        
    }
    //slider change Value
    @IBAction func sliderValueChange(_ sender: UISlider) {
        
        resultLbl2.isHidden = false
        resultLbl2.text = "Your Age: \(String(Int(slider.value)))"
        
    }
    
}
