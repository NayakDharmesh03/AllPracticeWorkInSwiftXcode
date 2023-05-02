//
//  TableViewController.swift
//  CollectionViewApp
//
//  Created by NT 2 on 23/02/23.
//

import UIKit

class TableViewController: UIViewController{
    
    
    @IBOutlet var mySearchBar: UISearchBar!
    
    
    @IBOutlet var myTable: UITableView!
    
    var studentsNames:[String] = ["Dharmesh","Mahesh","Maulik","Vikash","Bhautik","Rakesh","Vitthal","Ganapt","Rohit","Jaypal","Rahul","Darshan","Shailesh","Maahi","Vipul","Bharat","Ravina","Kailash","Minaxi","Krunal","Pankaj","Arjun"]
  
    var searchNames = [String]()
    var searching = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
extension TableViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching{
            return searchNames.count
        }else{
            return studentsNames.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if searching{
            cell.textLabel?.text = searchNames[indexPath.row]
        }
        else{
            cell.textLabel?.text = studentsNames[indexPath.row]

        }
        return cell
    
    }
}

extension TableViewController : UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let data = self.storyboard?.instantiateViewController(identifier: "InfoVC") as! InfoViewController
        
        if searching {
            data.Selectedname = searchNames[indexPath.row]
        }else{
            data.Selectedname = studentsNames[indexPath.row]
        }
        
        self.navigationController?.pushViewController(data, animated: true)
    }
}
extension TableViewController :UISearchBarDelegate {
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
             
           if(searchText.isEmpty){
            searchNames = studentsNames
           }else{
            searchNames = studentsNames.filter{$0.contains(searchText)}
           }
           searching = true
           myTable.reloadData()
    }
    

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        myTable.reloadData()
    }
}


