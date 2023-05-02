//
//  Table1ViewCell.swift
//  TableView
//
//  Created by NT 2 on 23/02/23.
//

import UIKit

class Table1ViewCell: UITableViewCell {

    @IBOutlet var myTextLabel: UILabel!
    @IBOutlet var checkButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
