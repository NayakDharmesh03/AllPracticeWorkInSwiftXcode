//
//  ZoomScrollViewController.swift
//  ScrollView1
//
//  Created by NT 2 on 02/02/23.
//

import UIKit

class ZoomScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var zoomScrollView: UIScrollView!
    @IBOutlet var zoomImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        zoomScrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        print(#function)
        return zoomImage
    }

    func scrollViewDidZoom(_ scrollView: UIScrollView){
        print(#function)

    } // any zoom scale changes
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView){
        print(#function)

    } // called when setContentOffset/scrollRectVisible:animated: finishes. not called if not animating
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?){
        print(#function)

    } // called before the scroll view begins zooming its content
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat){
        print(#function)

    } // scale between minimum and maximum. called after any 'bounce' animations
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print(#function)

    }
    func scrollViewDidBeginDragging(_ scrollView: UIScrollView) {
        print(#function)

    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView) {
        print(#function)

    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView) {
        print(#function)

    }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView){
        print(#function)

    } // called on finger up as we are moving
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        print(#function)

    } // called when scroll view grinds to a halt

    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool{
            return true
    } // return a yes if you want to scroll to the top. if not defined, assumes YES
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView){
        print(#function)

    } // called when scrolling animation finished. may be called immediately if already at top

}
