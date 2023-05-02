//
//  SecondViewController.swift
//  GestureTask
//
//  Created by NT 2 on 02/03/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipRight = UISwipeGestureRecognizer(target: self, action: #selector(swipToRight(swip:)))
        swipRight.direction = UISwipeGestureRecognizer.Direction.right
        
        self.view.addGestureRecognizer(swipRight)
    }
    
    @objc func swipToRight(swip: UISwipeGestureRecognizer){
        
        performSegue(withIdentifier: "goLeft", sender: self)
        
    }

}
