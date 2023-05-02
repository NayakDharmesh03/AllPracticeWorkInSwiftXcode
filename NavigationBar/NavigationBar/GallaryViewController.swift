//
//  GallaryViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 22/02/23.
//

import UIKit

class GallaryViewController: UIViewController {
    @IBOutlet var gallaryCollectionView: UICollectionView!
    
    var gallaryPhotos = ["Dhaval", "Facebook" ,"flower1" ,"flower2" ,"flower3","pexels1","Google","Rohit","pexels2","Raami","pexels3","Twiter","Vikash","Vimal","wallpaperr",]
    override func viewDidLoad() {
        super.viewDidLoad()
        
            gallaryCollectionView.backgroundColor = UIColor.clear


    }
    


}
extension GallaryViewController: UICollectionViewDelegate ,UICollectionViewDataSource{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gallaryPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cCell = gallaryCollectionView.dequeueReusableCell(withReuseIdentifier: "gallaryCell", for: indexPath) as! GallaryCollectionVCell
        
        cCell.gallaryImage.image = UIImage(named:gallaryPhotos[indexPath.row])
        
        return cCell
        
        
    }
    
    
}
