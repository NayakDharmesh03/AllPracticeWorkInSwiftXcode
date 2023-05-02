//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myCollectionView: UICollectionView!
    @IBOutlet var collectionView2: UICollectionView!
    @IBOutlet var pageControl: UIPageControl!
    
    
    @IBOutlet var movieSearchBar: UISearchBar!
    
    //Colors array
    var mycolors:[UIColor] = [.red,.green,.yellow,.systemPink,.orange,.blue]
    
    //moviews Names array
    var moviesNames = ["Movie1","Pathan","Movie3","Puspa","Movie1","Pathan"]
    
    var searcMovie = [String]()
    var searching = false
    
    var timer : Timer?
    var currentTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(chengeImages), userInfo: nil, repeats: true)
        
        pageControl.numberOfPages = moviesNames.count
      
            }

            @objc func chengeImages(){
                
                if currentTime < moviesNames.count - 1{
                    currentTime = currentTime + 1
                }
                else{
                    currentTime = 0
                }
                
                pageControl.currentPage = currentTime
                myCollectionView.scrollToItem(at: IndexPath(item: currentTime, section: 0),at: .right, animated: true)
            }
   
}

extension ViewController : UICollectionViewDelegateFlowLayout{


//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        if collectionView == self.myCollectionView{
//            let size = (collectionView2.frame.size.width-10)
//            return CGSize(width: size, height: size)
//        }else{
//            let size = (collectionView2.frame.size.width-10)
//            return CGSize(width: size, height: size)
//        }
//    }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
            
        }

}

extension ViewController : UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == self.myCollectionView{
            return 1
        }
        else{
            return 1
        }
}
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.myCollectionView{
            
            return moviesNames.count
           
        }else{
            if searching{
                return searcMovie.count
            }else{
                return moviesNames.count
            }
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == self.myCollectionView {
            
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
            
            cell.moviePhotos.image = UIImage(named: moviesNames[indexPath.row])
            cell.layer.cornerRadius = 15
            return cell
            
        }else{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! SecondCell
            
            if searching{
                
                cell2.moviesName.text = searcMovie[indexPath.row]
                cell2.moviesImage.image = UIImage(named: searcMovie[indexPath.row])
                
            }else{
                
                cell2.moviesName.text = moviesNames[indexPath.row]
                cell2.moviesImage.image = UIImage(named: moviesNames[indexPath.row])
                
            }
            return cell2
        }

    }
    
    
}
extension ViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searcMovie = moviesNames.filter({
            $0.contains(searchText)
        })
        searching = true
        collectionView2.reloadData()
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        collectionView2.reloadData()
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searching = true
        searchBar.text = ""
        collectionView2.reloadData()
    }
}

extension ViewController :UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


            let vc = self.storyboard?.instantiateViewController(withIdentifier: "nextVC") as! NextViewController
            vc.image = moviesNames[indexPath.row]
            vc.name = moviesNames[indexPath.row]
        
            self.navigationController?.pushViewController(vc, animated: false)
    }
    
}
