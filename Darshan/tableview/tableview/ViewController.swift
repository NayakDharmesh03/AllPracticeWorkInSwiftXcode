//
//  ViewController.swift
//  tableview
//
//  Created by NT 2 on 26/02/23.
//

import UIKit

class ViewController: UIViewController {
    var array:[String] = ["1","2","3","4","5","6","7","8","9","10"]
    var tempArray:[String] = []
    var indexArray:[Int] = []
    @IBOutlet var mainview: UITableView!
    @IBOutlet var nextbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func checkbtn(_ sender: Any) {
        if self.indexArray.contains((sender as AnyObject).tag){
            if let index = indexArray.firstIndex(of: (sender as AnyObject).tag){
                indexArray.remove(at: index)
            }
            (sender as AnyObject).setImage(UIImage(named: "uncheck"),for:.normal)
        }else{
            self.indexArray.append((sender as AnyObject).tag)
            (sender as AnyObject).setImage(UIImage(named: "check"),for:.normal)
        }
    }
    
    @IBAction func passbtn(_ sender: Any) {
        let data:secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        for i in self.indexArray{
            self.tempArray.append(self.array[i])
        }
        data.arrData = self.tempArray
        self.navigationController?.pushViewController(data, animated: true)
    }
    


}
extension ViewController:UITableViewDelegate{
    
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainTableViewCell") as! mainTableViewCell
        cell.lblname.text = self.array[indexPath.row]
        cell.checkbtn.tag = indexPath.row
        return cell
    }
    
    
}
