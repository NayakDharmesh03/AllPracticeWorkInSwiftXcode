//
//  PageControl.swift
//  ComponentsOfUIApp
//
//  Created by NT 2 on 30/01/23.
//

import UIKit

class PageControl: UIViewController {
    @IBOutlet var images: UIImageView!
    
//    var avatar:[UIImage] = ["Rita","Vikash","Vimal","Rohit","Raami","Kavya","Dhaval"]
    
    var correntPage = 0
    
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func leftButton(_ sender: UIButton) {
        
        if correntPage == 0 {
            
        }else {
            correntPage = correntPage - 1
            
            self.pageControl.currentPage = self.correntPage
        }
    }
    @IBAction func rightButton(_ sender: UIButton) {
        if correntPage == 5 {
            
        }else {
            correntPage = correntPage + 1
            self.pageControl.currentPage = self.correntPage
        }
    }
    
    
}
