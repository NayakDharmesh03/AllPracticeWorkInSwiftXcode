//
//  ViewController.swift
//  PHPickerViewController
//
//  Created by NT 2 on 17/02/23.
//

import PhotosUI
import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionview: UICollectionView!
    var photoCollection = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addPhotoButtonTapped(_ sender: UIBarButtonItem) {
        
        var config = PHPickerConfiguration()
        config.selectionLimit = 5
        
        let pHPickerVC = PHPickerViewController(configuration: config)
        pHPickerVC.delegate = self
        self.present(pHPickerVC, animated: true)
    }
}

extension ViewController : PHPickerViewControllerDelegate{
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true)
        
        for result in results {
            result.itemProvider.loadObject(ofClass: UIImage.self){ object,error  in
                if let image = object as? UIImage{
                    self.photoCollection.append(image)
                }
                
                DispatchQueue.main.async {
                    self.collectionview.reloadData()
                }
                
            }
        }
    }
    
    
}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photoCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PhotoCell else{
            return UICollectionViewCell()
        }
        cell.myPhotoes.image = photoCollection[indexPath.row]
        
        return cell
        
    
    }
    
    
}
