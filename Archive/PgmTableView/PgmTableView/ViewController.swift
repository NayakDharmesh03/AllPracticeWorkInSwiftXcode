//
//  ViewController.swift
//  PgmTableView
//
//  Created by NT 2 on 14/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate{
    
    

    @IBOutlet var tableview: UITableView!

    var FriendaName:[String] = ["1","2","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    



}
extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FriendaName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = self.tableview.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        let cell2 = self.tableview.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
    
        let cell3 = self.tableview.dequeueReusableCell(withIdentifier: "cell3", for: indexPath)
        
        let cell4 = self.tableview.dequeueReusableCell(withIdentifier: "cell4", for: indexPath)
    
        return cell1
    }
}

