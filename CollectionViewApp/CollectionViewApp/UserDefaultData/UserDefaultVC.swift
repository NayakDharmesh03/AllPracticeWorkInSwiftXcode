//
//  UserDefaultVC.swift
//  CollectionViewApp
//
//  Created by NT 2 on 27/02/23.
//

import UIKit

class UserDefaultVC: UIViewController {

    @IBOutlet var saveButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var inputText: UITextField!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var myTableView: UITableView!
    
    var toDoData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.cornerRadius = 5
        defaultData()
        
    }
    
    func defaultData(){
        
        if  let data = UserDefaults.standard.object(forKey: "toDoList") as? [String]{
            toDoData = data
            statusLabel.text = "\(toDoData.count) Tasks panding in To do List"
        }else{
            statusLabel.text = "No Task panding"
        }
    }

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        
        if  inputText.text != ""{
            
            toDoData.append(inputText.text!)
            UserDefaults.standard.setValue(toDoData, forKey: "toDoList")
            myTableView.reloadData()
            statusLabel.text = "New Task added in to Do List"
            inputText.text = ""
        }
        
        
        
    }
    
}
extension UserDefaultVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoData[indexPath.row]
        return cell
    }
    
    
}
extension UserDefaultVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{           
            toDoData.remove(at: indexPath.row)
            UserDefaults.standard.set(toDoData, forKey: "toDoList")
            myTableView.reloadData()
        }
    }
}
