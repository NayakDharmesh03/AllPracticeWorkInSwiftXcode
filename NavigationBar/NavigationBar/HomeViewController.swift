//
//  HomeViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 22/02/23.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var HomeCollectionView: UICollectionView!
    
    var homePhotos = ["Facebook", "Google","Twiter","Facebook", "Google","Twiter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        HomeCollectionView.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
    


}
extension HomeViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homePhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let homeCell = HomeCollectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! HomeCollectionVCell
        homeCell.homeImages.image = UIImage(named: homePhotos[indexPath.row])
        
        return homeCell
    }
    
    
}
