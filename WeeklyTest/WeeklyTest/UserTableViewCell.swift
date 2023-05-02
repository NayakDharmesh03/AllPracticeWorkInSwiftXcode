//
//  UserTableViewCell.swift
//  WeeklyTest
//
//  Created by NT 2 on 01/03/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    @IBOutlet var firstNameLbl: UILabel!
    @IBOutlet var lastNameLbl: UILabel!
    @IBOutlet var mobileLbl: UILabel!
    @IBOutlet var dobLbl: UILabel!
    @IBOutlet var ageLbl: UILabel!
    @IBOutlet var emailLbl: UILabel!
    @IBOutlet var genderLbl: UILabel!
    @IBOutlet var addressLbl: UILabel!
    
    @IBOutlet var editButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
