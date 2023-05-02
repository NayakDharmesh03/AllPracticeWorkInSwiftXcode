//
//  ProgressView.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 30/01/23.
//

import UIKit

class ProgressView: UIViewController {
    
    @IBOutlet var progressView2: UIProgressView!
    @IBOutlet var progressView: UIProgressView!
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 10)
        progressView2.transform = progressView2.transform.scaledBy(x: 1, y: 30)

        UIView.animate(withDuration: 5.0) {
            self.progressView2.setProgress(2.0, animated: true)
        }


    timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(ProgressView.go), userInfo: nil, repeats: true)
    }
    @objc func  go(){
        progressView.progress += 0.005
    }
    
    
    
}
