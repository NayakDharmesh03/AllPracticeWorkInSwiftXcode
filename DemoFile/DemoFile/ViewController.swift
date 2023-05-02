//
//  ViewController.swift
//  DemoFile
//
//  Created by Manish's Macbook Pro on 30/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Lodinglbl: UILabel!
    
    
    
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var lblActivityIndicator: UILabel!
    @IBOutlet weak var ActivityInd: UIActivityIndicatorView!
    
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Lodinglbl.isHidden = true
        ActivityInd.isHidden = true
        print("ViewController: viewDidLoad")


        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
       print("ViewController: viewWillAppear")
        
        super.viewWillAppear(animated)
        ActivityInd.isHidden = false
        Lodinglbl.isHidden = false
        ActivityInd.startAnimating()
        
    }
   override func viewDidAppear(_ animated: Bool) {
      print("ViewController: viewDidAppear")
    do{
        sleep(5)
    }
    
    
    super.viewDidAppear(animated)
    ActivityInd.stopAnimating()
    ActivityInd.isHidden = true
    welcomeLbl.isHidden = false
    Lodinglbl.isHidden = true
    lblActivityIndicator.isHidden = true
    
    welcomeLbl.text = "Welcome to Xcode App"
    self.view.backgroundColor = .orange
    
    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("ViewController: viewWillDisappear")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("ViewController: viewDidDisappear")
//
//    }
    

 
    
}

