//
//  MyTableViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 23/02/23.
//

import UIKit

class MyTableViewController: UIViewController {
 var arrData = ["1","2","3","4","5"]
    
    
    @IBOutlet var mytableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension MyTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        
        cell.myLabel.text = arrData[indexPath.row]
        return cell
    }
    
    
}
