//
//  FirstTableViewCell.swift
//  WeeklyTest
//
//  Created by NT 2 on 01/03/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet var inputTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    func placeholderConfi(placehoder:String){
        inputTextField.placeholder = placehoder
    }
   
}
