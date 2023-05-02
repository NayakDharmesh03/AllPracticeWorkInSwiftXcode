//
//  ActivityIndicatorViewController.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 23/01/23.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {
    
    @IBOutlet weak var lodinglbl: UILabel!
    @IBOutlet weak var activityInd2: UIActivityIndicatorView!
    let lable = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        activityInd2.startAnimating()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        do{
            sleep(5)
        }
        lodinglbl.isHidden = true
        activityInd2.isHidden = true
        activityInd2.stopAnimating()
        
        self.view.backgroundColor = .orange
        lable.text = "Welcome to my App"
        lable.textAlignment = .center
        view.addSubview(lable)
        lable.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
    

    }

}
