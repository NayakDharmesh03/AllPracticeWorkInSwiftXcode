//
//  ViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 21/02/23.
//

import UIKit

class ViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = ""
            self.navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
            self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            self.navigationController?.navigationBar.layer.shadowRadius = 10
            self.navigationController?.navigationBar.layer.shadowOpacity = 5.0
            self.navigationController?.navigationBar.layer.masksToBounds = false
        
        navigationBarConfigeration()
    }
    
    //main View Controller
    
    func  navigationBarConfigeration(){
        
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(barButtonSystemItem: .add,
                            target: self,
                            action: #selector(didTapAddButton)),
                                              
           UIBarButtonItem(image: UIImage(systemName: "person.circle.fill"), style: .done, target: self, action: #selector(didTapProfileButton))
        
        ]
    
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(systemName: "gearshape" ), style: .done, target: self, action:  #selector(didTapSetingButton))
    }
    
    @objc func didTapSetingButton(){
        
        let settingVC = self.storyboard?.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
        settingVC.title = "Setting"

        self.navigationController?.pushViewController(settingVC, animated: true)
    }
    
   @objc func didTapAddButton(){
    
    //second view Controller
    
    let newVC = UIViewController()
    newVC.title = "SecondView"
    newVC.view.backgroundColor = .green
    newVC.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target:self, action: nil)
    
    navigationController?.pushViewController(newVC, animated:true)
    
    }

  @objc func didTapProfileButton(){
        
    //contactBar button third view controller

    let contectVC = self.storyboard?.instantiateViewController(withIdentifier: "ContactsViewController") as! ContactsViewController
    contectVC.title = "Contacts"
    self.navigationController?.pushViewController(contectVC, animated: true)
    
    }
    
}


