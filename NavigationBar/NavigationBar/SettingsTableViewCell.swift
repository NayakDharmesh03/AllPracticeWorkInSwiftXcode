//
//  SettingsTableViewCell.swift
//  NavigationBar
//
//  Created by NT 2 on 21/02/23.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
   
    @IBOutlet var settingIconImages: UIImageView!
    
    @IBOutlet var settingTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
