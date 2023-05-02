//
//  ZoomImageViewController.swift
//  GestureTask
//
//  Created by NT 2 on 02/03/23.
//

import UIKit

class ZoomImageViewController: UIViewController {

    @IBOutlet var pinchGesture: UIPinchGestureRecognizer!
    @IBOutlet var mapImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func zoomImage(_ sender: UIPinchGestureRecognizer) {
        
        
        guard let zoomPinch = pinchGesture.view else {
            return
        }
        zoomPinch.transform = zoomPinch.transform.scaledBy(x: pinchGesture.scale, y: pinchGesture.scale)
        pinchGesture.scale = 1
    }
    
}
