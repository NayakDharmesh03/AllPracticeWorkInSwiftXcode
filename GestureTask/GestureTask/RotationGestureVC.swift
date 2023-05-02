//
//  RotationGestureVC.swift
//  GestureTask
//
//  Created by NT 2 on 02/03/23.
//

import UIKit

class RotationGestureVC: UIViewController {

    @IBOutlet var rotationGesture: UIRotationGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func rotateImage(_ sender: UIRotationGestureRecognizer) {
        
        guard let rotateGesture = rotationGesture.view else {
            return
        }
         
        rotateGesture.transform = rotateGesture.transform.rotated(by: rotationGesture.rotation)
        
        rotationGesture.rotation = 0
        
    }
    
}
