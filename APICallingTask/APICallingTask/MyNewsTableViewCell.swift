//
//  MyNewsTableViewCell.swift
//  APICallingTask
//
//  Created by NT 2 on 03/03/23.
//

import UIKit

class MyNewsTableViewCell: UITableViewCell {
    

    @IBOutlet var userIdLbl: UITextField!
    @IBOutlet var IdLbl: UILabel!
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var completedLbl: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
