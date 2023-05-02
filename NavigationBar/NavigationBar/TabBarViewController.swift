//
//  TabBarViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 22/02/23.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet var goToButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()        
        goToButton.layer.cornerRadius = 10
    }
    
    @IBAction func goTonext(_ sender: UIButton) {
        let nextVC = UIViewController()
        nextVC.view.backgroundColor = .blue
        
        self.navigationController?.pushViewController(nextVC, animated:true)
    }
}
 
