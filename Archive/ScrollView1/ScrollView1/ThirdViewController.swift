//
//  ThirdViewController.swift
//  ScrollView1
//
//  Created by NT 2 on 01/02/23.
//

import UIKit

class ThirdViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageViewZoom: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView){
        print("1. ",#function)

    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("2. ",#function)
    }// any offset changes
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>){
        print("3. ",#function)
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool){
        print("4. ",#function)

    }
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView){
        print("5. ",#function)

    } // called on finger up as we are moving
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        print("6. ",#function)

    } // called when scroll view grinds to a halt
    func scrollViewDidZoom(_ scrollView: UIScrollView){
        print(#function)
        

    } // any zoom scale changes
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView){
        print(#function)

    } // called when setContentOffset/scrollRectVisible:animated: finishes. not called if not animating
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return view
    } // return a view that will be scaled. if delegate returns nil, nothing happens
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?){
        print(#function)

    } // called before the scroll view begins zooming its content
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat){
        print(#function)

    } // scale between minimum and maximum. called after any 'bounce' animations
    
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool{
            return true
    } // return a yes if you want to scroll to the top. if not defined, assumes YES
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView){
        print(#function)

    } // called when scrolling animation finished. may be called immediately if already at top



}
