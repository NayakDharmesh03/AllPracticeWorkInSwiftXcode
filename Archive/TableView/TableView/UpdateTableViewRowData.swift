//
//  UpdateTableViewRowData.swift
//  TableView
//
//  Created by NT 2 on 09/02/23.
//

import UIKit

class UpdateTableViewRowData: UIViewController {

    @IBOutlet var editButton: UIBarButtonItem!
    @IBOutlet var myTable: UITableView!
    @IBOutlet var inputDataTF: UITextField!

    var studentsName:[String] = []
    
    var nameTf:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.tableFooterView = UIView()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func editData(_ sender: UIBarButtonItem) {
        myTable.isEditing = !myTable.isEditing
        
        if myTable.isEditing{
            editButton.title = "Done"
        }
        else{
            editButton.title = "Edit"
        }
    }
    //Update Data
    @IBAction func updateData(_ sender: UIButton) {
        
    }
    
    //Delete Data

    @IBAction func addStudents(_ sender: UIBarButtonItem) {
        
        studentsName.insert("New Students", at: 0)
        myTable.insertRows(at: [IndexPath(row: 0, section: 0)], with: .bottom)
    }
    @IBAction func deleteData(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: myTable)
        guard let indexPath = myTable.indexPathForRow(at: point) else{
            return
        }
        studentsName.remove(at: indexPath.row)
        myTable.deleteRows(at: [indexPath], with: .left)
        
    }
    
    //Insert Data
    @IBAction func addNewData(_ sender: UIButton) {
        guard let data = inputDataTF.text else {
            return
        }
        
        studentsName.append(data)
        myTable.reloadData()
        inputDataTF.text = ""
    }
    
    
}

extension UpdateTableViewRowData : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsName.count
    }
    
    //Show the data in Table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.deqeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = studentsName[indexPath.row] as! UpdateTableViewCell
        
        let cell = self.myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UpdateTableViewCell
        cell.textLabel?.text = studentsName[indexPath.row]
        return cell
    }
    
}
extension UpdateTableViewRowData : UITableViewDelegate{
    
    //Select row and Update Data in table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedSRow = studentsName[indexPath.row]
        
        let alerBox = UIAlertController(title: "Update Data", message: "Update your data here.", preferredStyle: .alert)
        let update = UIAlertAction(title: "Update", style: .default) { (action) in
            let updatedName = self.nameTf?.text!
            self.studentsName[indexPath.row] = updatedName!
            DispatchQueue.main.async {
                self.myTable.reloadData()
                print("Data has been updated")
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Edit option cancel by user")
        }
        
        alerBox.addAction(update)
        alerBox.addAction(cancel)
        alerBox.addTextField { (textfield) in
            self.nameTf = textfield
            self.nameTf?.placeholder = "Edit name here"
            self.nameTf?.text = selectedSRow
        }
        self.present(alerBox, animated: true, completion: nil)
    }
    
    //swipe right to left row and delete row data
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
            studentsName.remove(at: indexPath.row)
            myTable.deleteRows(at: [indexPath], with: .automatic)
            inputDataTF.text = ""
//        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let selectRow = studentsName[sourceIndexPath.row]
        studentsName.remove(at: sourceIndexPath.row)
        studentsName.insert(selectRow, at: destinationIndexPath.row)
    }
    
    
}
