//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 15/02/23.
//

import UIKit

class ViewController: UIViewController {

    var names:[String] = [ "Rita"
                          "Vikash",
                          "Vimal",
                          "Rohit",
                          "Raami",
                          "Gopal",
                          "Dhaval"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController : UICollectionViewDelegateFlowLayout{
    
}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
