//
//  InfoViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 27/02/23.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var userName: UILabel!
    var Selectedname : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = Selectedname
       
        
        
        profileImage.layer.cornerRadius = 10
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openGallary(tapGestureRecognizer:)))
        profileImage.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        
        self.navigationController?.popViewController(animated: true)
    }

}

extension InfoViewController : UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @objc func openGallary(tapGestureRecognizer: UITapGestureRecognizer){

        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            
            let pickerview = UIImagePickerController()
            pickerview.delegate = self
            pickerview.sourceType = .savedPhotosAlbum
            present(pickerview, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let img = info[.originalImage] as? UIImage{
            profileImage.image = img
        }
        
        dismiss(animated: true)
    }
        
    
}
