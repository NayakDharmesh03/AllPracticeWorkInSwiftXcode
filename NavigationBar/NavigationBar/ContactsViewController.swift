//
//  ContactsViewController.swift
//  NavigationBar
//
//  Created by NT 2 on 21/02/23.
//

import UIKit

class ContactsViewController: UIViewController {
    @IBOutlet var contactsTableview: UITableView!
    
    var contacts:[String] = ["Raam","Sita","Hanuman","Laxman","Bharat","Dashrath"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }
    
}
extension ContactsViewController :UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableview.dequeueReusableCell(withIdentifier: "ContectTBcell", for: indexPath)
        
        cell.textLabel?.text = contacts[indexPath.row]
        
    return cell
    }
    
    
}
