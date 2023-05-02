//
//  GalleryScollingViewController.swift
//  ScrollView1
//
//  Created by NT 2 on 02/02/23.
//

import UIKit

class GalleryScollingViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet var superScrollView: UIScrollView!
    
    @IBOutlet var mapImage: UIImageView!




    override func viewDidLoad() {
        super.viewDidLoad()
        superScrollView.delegate = self

    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        print(#function)
        return mapImage
    }


}
