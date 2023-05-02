//
//  SettingViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 21/02/23.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var settingTableview: UITableView!
    
    var settingIconsName:[String] = ["gearshape.fill","airplane","wifi","cross.case.fill","camera.fill"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 
}

extension SettingViewController : UITableViewDelegate{
    
    
}
extension SettingViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settingIconsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let settingCell = settingTableview.dequeueReusableCell(withIdentifier: "SettingTBcell", for: indexPath) as! SettingsTableViewCell
        
        settingCell.layer.cornerRadius = 15
        settingCell.settingTitleLabel.text = settingIconsName[indexPath.row]
        
        settingCell.settingIconImages.image = UIImage(systemName: settingIconsName[indexPath.row])
        
        return settingCell
        
    }
    
    
    
}


