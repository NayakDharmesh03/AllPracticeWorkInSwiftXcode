//
//  FirstTableViewCell.swift
//  CollectionViewApp
//
//  Created by NT 2 on 23/02/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    
    @IBOutlet var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
