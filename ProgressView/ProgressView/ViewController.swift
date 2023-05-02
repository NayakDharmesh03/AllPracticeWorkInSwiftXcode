//
//  ViewController.swift
//  ProgressView
//
//  Created by Manish's Macbook Pro on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressV: UIProgressView!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(ViewController.go), userInfo: nil, repeats: true)
        self.view.backgroundColor = .yellow

    }

    @objc func go() {
        progressV.progress += 0.005
    }

}

