//
//  DataEditViewController.swift
//  WeeklyTest
//
//  Created by NT 2 on 01/03/23.
//

import UIKit
protocol MyDataPassing {
    func containData(fname:String,lname:String,dob:String,mail:String,mobile:String,password:String,age:String,address:String)
    
}
class DataEditViewController: UIViewController {

    
    var placehoderTextArray :[String] = ["Enter Name","Enter Surname","Enter City","Enter Mobile No.","Enter Age","Enter Email","Enter Country"]
    
    var userDataArray: [UserData] = []
    
    var delegate : MyDataPassing!
    
    @IBOutlet var dataTableview: UITableView!
    
    
    var strName : String = ""
    var strSurname : String = ""
    var strCity : String = ""
    var strMobile : String = ""
    var strAge : String = ""
    var strEmai : String = ""
    var strCountry : String = ""
    var strAddress : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataTableview.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveDataButtonClick(_ sender: UIButton) {
//
//        if nameTF.text == "" || emailTF.text == "" || mobileTF.text == "" || collageTF.text == "" || rollNoTF.text == ""
//        {
//            self.createAlert(strAlert: "Please Enter Data")
//        }
//        else if isValidEmail(testStr: emailTF.text!) ==  false
//        {
//            self.createAlert(strAlert: "Please Enter Valid email")
//        }else if isValidPhone(testStr: mobileTF.text!) == false{
//
//            self.createAlert(strAlert: "Please Enter Valid phone")
//
//        }else if isValidName(testStr: nameTF.text!) == false{
//
//            self.createAlert(strAlert: "Please Enter Valid name")
//
//        }else if isValidRollNo(testStr: rollNoTF.text!) == false{
//
//            self.createAlert(strAlert: "Please Enter Valid roll")
//
//        }
//
//
//        else
//        {
//            delegate.AddStudent(name: nameTF.text!, email: emailTF.text!, mobile: mobileTF.text!, collage: collageTF.text!, rollNo: rollNoTF.text!,isEdit: self.isEdit,index: self.editIndex)
//
//            print(studentArray.count)
//
//
////            delegate.AddStudent(studentArray: studentArray)
//            self.navigationController?.popViewController(animated: true)
//
//        }
//    }
        .
    
        self.navigationController?.popViewController(animated: true)
    }
    

}
extension DataEditViewController : UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.tag == 0 {
            self.strName = textField.text!
            
        }else{
                print(self.strName) }
    }
}
extension DataEditViewController :UITableViewDataSource,UITableViewDelegate{
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0{
            return placehoderTextArray.count + 1
//        }else{
//            return 1
//        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if indexPath.section == 0{
        
        if indexPath.row < self.placehoderTextArray.count {
            
            let cell = dataTableview.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            
            cell.inputTextField.delegate = self
            cell.inputTextField.tag = indexPath.row
            
            cell.placeholderConfi(placehoder: placehoderTextArray[indexPath.row])
            
            return cell
        }else{
            
            let cell = dataTableview.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            
            return cell
        }
    }
    
    
}
extension DataEditViewController {
    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    func isValidPhone(testStr:String) -> Bool {
        let phoneRegEx = "^[0-9]{10,}$"

        let phoneTest = NSPredicate(format:"SELF MATCHES %@", phoneRegEx)
        return phoneTest.evaluate(with: testStr)
    }
    func isValidName(testStr:String) -> Bool {
        let nameRegEx = "[A-Z0-9a-z._%+-]{2,}"

        let nameTest = NSPredicate(format:"SELF MATCHES %@", nameRegEx)
        return nameTest.evaluate(with: testStr)
    }
    func isValidRollNo(testStr:String) -> Bool {
        let rollRegEx = "[A-Z0-9a-z]{1,}"

        let rollNoTest = NSPredicate(format:"SELF MATCHES %@", rollRegEx)
        return rollNoTest.evaluate(with: testStr)
    }
}
