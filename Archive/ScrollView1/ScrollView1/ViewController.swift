//
//  ViewController.swift
//  ScrollView1
//
//  Created by Manish's Macbook Pro on 17/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.layer.cornerRadius = 20
        scrollView.layer.borderWidth = 5
        scrollView.layer.borderColor = .init(gray: 20.1, alpha: 1)
        // Do any additional setup after loading the view.
    }


}

