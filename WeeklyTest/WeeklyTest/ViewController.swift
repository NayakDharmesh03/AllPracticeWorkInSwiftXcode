//
//  ViewController.swift
//  WeeklyTest
//
//  Created by NT 2 on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTableview: UITableView!
    
    var userData = [String]()
    var data = ["1","1","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addDataButtonClick(_ sender: UIButton) {
        let nextvc = self.storyboard?.instantiateViewController(identifier: "nextVC") as! DataEditViewController
        
        self.navigationController?.pushViewController(nextvc, animated: true)
    }
    
}
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = userTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UserTableViewCell
        
        cell.firstNameLbl.text = data[indexPath.row]
        return cell
    }
    
    
}

