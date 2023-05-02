//
//  MyTableViewCell.swift
//  TableView
//
//  Created by NT 2 on 07/02/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet var rankLable: UILabel!
    @IBOutlet var NameLable: UILabel!
    
    @IBOutlet var countryLable: UILabel!
    @IBOutlet var photo: UIImageView!
    @IBOutlet var ratingLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
