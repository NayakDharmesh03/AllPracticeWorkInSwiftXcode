//
//  SegmentsVC.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 20/01/23.
//

import UIKit

class SegmentsVC: UIViewController {

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var Images: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        button = UIButton(frame: CGRect(x: 100, y: 400, width: 200, height: 50))
//           button.backgroundColor = .green
//           button.setTitle("Submit", for: .normal)
//           button.setTitleColor(.black, for: .normal)
//           view.addSubview(button)
        
        segmentControl.selectedSegmentIndex = 2
    }
    
    
    @IBAction func ChangeSegmentedControl(_ sender: UISegmentedControl) {
        
        if(segmentControl.selectedSegmentIndex == 0){
            Images.image = #imageLiteral(resourceName: "Raami")
            segmentControl.setBackgroundImage(UIImage(named: "Google"), for:.normal, barMetrics:.default )
            
            segmentControl.selectedSegmentTintColor = .red
        }else if(segmentControl.selectedSegmentIndex == 1){
            Images.image = #imageLiteral(resourceName: "Dhaval")
            segmentControl.selectedSegmentTintColor = .yellow

        }else{
            Images.image = #imageLiteral(resourceName: "Kavya")
            segmentControl.selectedSegmentTintColor = .blue

        }
        
    }

   
    
}
