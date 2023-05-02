//
//  PageScrollViewController.swift
//  ScrollView1
//
//  Created by NT 2 on 01/02/23.
//

import UIKit

class PageScrollViewController: UIViewController, UIScrollViewDelegate  {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageViewZoom: UIImageView!
    
    @IBOutlet var image1: UIImageView!

    @IBOutlet var image2: UIImageView!

    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        image1.layer.cornerRadius = 10
        image1.layer.borderWidth = 5
        image1.layer.borderColor = .init(gray: 5, alpha: 1)
        
        image2.layer.cornerRadius = 10
        image2.layer.borderWidth = 5
        image2.layer.borderColor = .init(gray: 5, alpha: 1)
        
        image3.layer.cornerRadius = 10
        image3.layer.borderWidth = 5
        image3.layer.borderColor = .init(gray: 5, alpha: 1)
        
        image4.layer.cornerRadius = 10
        image4.layer.borderWidth = 5
        image4.layer.borderColor = .init(gray: 5, alpha: 1)
        
        image5.layer.cornerRadius = 10
        image5.layer.borderWidth = 5
        image5.layer.borderColor = .init(gray: 5, alpha: 1)
        // Do any additional setup after loading the view.
    }
    func scrollViewDidZoom(_ scrollView: UIScrollView){
        print(#function)
        
        if scrollView.zoomScale > 1 {

            if let image = self.imageViewZoom.image {

                let ratioW = self.imageViewZoom.frame.width / image.size.width
                let ratioH = self.imageViewZoom.frame.height / image.size.height

                let ratio = ratioW < ratioH ? ratioW:ratioH

                let newWidth = image.size.width*ratio
                let newHeight = image.size.height*ratio

                let left = 0.5 * (newWidth * scrollView.zoomScale > self.imageViewZoom.frame.width ? (newWidth - self.imageViewZoom.frame.width) : (scrollView.frame.width - scrollView.contentSize.width))
                let top = 0.5 * (newHeight * scrollView.zoomScale > self.imageViewZoom.frame.height ? (newHeight - self.imageViewZoom.frame.height) : (scrollView.frame.height - scrollView.contentSize.height))

                scrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
            }
        } else {
            scrollView.contentInset = UIEdgeInsets.zero
        }


    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return imageViewZoom
    } // return a view that will be scaled. if delegate returns nil, nothing happens

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {

        return self.imageViewZoom

    }


}
