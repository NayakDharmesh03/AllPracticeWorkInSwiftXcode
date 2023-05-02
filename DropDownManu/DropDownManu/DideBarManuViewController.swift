//
//  DideBarManuViewController.swift
//  DropDownManu
//
//  Created by NT 2 on 28/02/23.
//

import UIKit

class DideBarManuViewController: UIViewController {
    
    @IBOutlet var logoutbtn: UIButton!
    @IBOutlet var DashboardBtn: UIButton!
    @IBOutlet var userBtn: UIButton!
    @IBOutlet var massageBtn: UIButton!
    @IBOutlet var analyticBtn: UIButton!
    @IBOutlet var fileManagerBtn: UIButton!
    @IBOutlet var savedBtn: UIButton!
    @IBOutlet var SettingBtn: UIButton!
    @IBOutlet var orderbtn: UIButton!
    
    
    @IBOutlet var sideBarManu: UIView!
    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    var manuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        barButtonsDesigns()
     
        leadingConstraint.constant = -200
        sideBarManu.layer.shadowOpacity = 1

    }
    func barButtonsDesigns(){

        
        DashboardBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        DashboardBtn.layer.cornerRadius = 5
        DashboardBtn.layer.borderWidth = 1
        
        userBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        userBtn.layer.cornerRadius = 5
        userBtn.layer.borderWidth = 1


        massageBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        massageBtn.layer.cornerRadius = 5
        massageBtn.layer.borderWidth = 1


        analyticBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        analyticBtn.layer.cornerRadius = 5
        analyticBtn.layer.borderWidth = 1


        fileManagerBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        fileManagerBtn.layer.cornerRadius = 5
        fileManagerBtn.layer.borderWidth = 1


        savedBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        savedBtn.layer.cornerRadius = 5
        savedBtn.layer.borderWidth = 1


        SettingBtn.layer.borderColor = .init(gray: 1, alpha: 1)
        SettingBtn.layer.cornerRadius = 5
        SettingBtn.layer.borderWidth = 1


        orderbtn.layer.borderColor = .init(gray: 1, alpha: 1)
        orderbtn.layer.cornerRadius = 5
        orderbtn.layer.borderWidth = 1
        
        logoutbtn.layer.borderColor = .init(gray: 1, alpha: 1)
        logoutbtn.layer.cornerRadius = 5
        logoutbtn.layer.borderWidth = 1
    }
    

}
extension DideBarManuViewController{
    
    @IBAction func showSideManuButtonClicked(_ sender: UIBarButtonItem) {
        if manuShowing{
            leadingConstraint.constant = -200
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })

        }
        
        manuShowing = !manuShowing
    }
    
}
