//
//  MoreViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 22/02/23.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet var MoreTableView: UITableView!
    var MoreDataText = ["Dharmesh", "Facebook" ,"flower1" ,"flower2" ,"flower3","pexels1","Google","Rohit","pexels2","Raami","pexels3","Twiter","Vikash","Vimal","wallpaperr",]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension MoreViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MoreDataText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let tCell = MoreTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! MoreTableViewCell
        
        tCell.textLabel?.text = MoreDataText[indexPath.row]
        
        return tCell
    }
    
    
    
}
