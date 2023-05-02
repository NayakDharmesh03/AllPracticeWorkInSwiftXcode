//
//  ViewController2.swift
//  UIcomponents
//
//  Created by Manish's Macbook Pro on 12/01/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var SliderButton: UIButton!
    @IBOutlet weak var ImageNameLable: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var images: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images.isHidden = true
        ImageNameLable.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        
        if(segmentControl.selectedSegmentIndex == 0){
            ImageNameLable.isHidden = false
            ImageNameLable.text = "Google"
            images.isHidden = false
            images.image = #imageLiteral(resourceName: "Google")
        }else if(segmentControl.selectedSegmentIndex == 1){
            ImageNameLable.isHidden = false
            ImageNameLable.text = "Facebook"
            images.isHidden = false
            images.image = #imageLiteral(resourceName: "Facebook")
        }else{
            ImageNameLable.isHidden = false
            ImageNameLable.text = "Twitter"
            images.isHidden = false
            images.image = #imageLiteral(resourceName: "Twiter")
        }
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
