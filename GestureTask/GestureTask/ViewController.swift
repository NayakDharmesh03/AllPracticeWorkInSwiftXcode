//
//  ViewController.swift
//  GestureTask
//
//  Created by NT 2 on 02/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pageViewVC: UIPageControl!

    @IBOutlet var directionLabel: UILabel!
    @IBOutlet var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipRight = UISwipeGestureRecognizer(target: self, action: #selector(swipToRight(swip:)))
        swipRight.direction = UISwipeGestureRecognizer.Direction.left
        
        self.view.addGestureRecognizer(swipRight)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func swipToRight(swip: UISwipeGestureRecognizer){
        
        performSegue(withIdentifier: "goRight", sender: self)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first{
            if myView == touch.view{
                print(#function)

            }
        }
    }

    @IBAction func sipeView(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .up:
            directionLabel.text = "Swip Up"
            self.view.backgroundColor = .blue
            break
        case .down:
            directionLabel.text = "Swip Down"
            self.view.backgroundColor = .red

            break
        case .left:
            directionLabel.text = "Swip Left"
            self.view.backgroundColor = .yellow

            break
        case .right:
            directionLabel.text = "Swip Right"
            self.view.backgroundColor = .orange

            break
        default:
            print("Nothing")
        }

    }
    
}

