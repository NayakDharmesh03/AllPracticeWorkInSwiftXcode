//
//  SecondViewController.swift
//  ScrollView1
//
//  Created by Manish's Macbook Pro on 17/01/23.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate{
    @IBOutlet var scrollView1: UIScrollView!
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!

    @IBOutlet var stackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView1.delegate = self
    }
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool{
        print(#function)
            return true
    } // return a yes if you want to scroll to the top. if not defined, assumes YES
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView){
        print(#function)

    } //
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            
        }
    }
   
}
