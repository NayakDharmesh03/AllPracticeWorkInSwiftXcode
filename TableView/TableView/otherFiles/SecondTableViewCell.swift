//
//  SecondTableViewCell.swift
//  TableView
//
//  Created by NT 2 on 08/02/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet var photos: UIImageView!
    @IBOutlet var discriptionLbl: UILabel!
    @IBOutlet var namesLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
