//
//  Table1ViewController.swift
//  TableView
//
//  Created by NT 2 on 23/02/23.
//

import UIKit

class Table1ViewController: UIViewController {

//    @IBOutlet var checkButton: UIButton!
    var arrayData = ["1","2","3","4","5","6","7","8","9","10"]
    @IBOutlet var myTableView: UITableView!
    
    var buttonImage = ["checkmark.rectangle.fill"]
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func PassDataButtonCliked(_ sender: UIButton) {
    
        let nextVC = self.storyboard?.instantiateViewController(identifier: "Table2ViewController") as! Table2ViewController

//        favorite.favouriteList = favouriteCricketer

        self.navigationController?.pushViewController(nextVC, animated: true)

        
    }
    @IBAction func checkButtonPressed(_ sender: Any) {
    
        
    }
    

}

extension Table1ViewController : UITableViewDelegate{
    
}

extension Table1ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  myTableView.dequeueReusableCell(withIdentifier: "table1Cell", for: indexPath) as! Table1ViewCell
        
        cell.textLabel?.text = arrayData[indexPath.row]
        
        return cell
    }
    
    
}
