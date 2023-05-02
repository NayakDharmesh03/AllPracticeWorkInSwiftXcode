//
//  SecondTableVC.swift
//  TableView
//
//  Created by NT 2 on 08/02/23.
//

import UIKit

class SecondTableVC: UIViewController {

    var names = ["Dharmik","Vishal","Vimal","Rohit","Raami","Rita"]
    var discription = ["Developer","Manager","Programer","Developer","CEO","Tester"]

    @IBOutlet var Mytable: UITableView!
    
    var photos = ["Dhaval","Vikash","Vimal","Rohit","Raami","Rita"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
extension SecondTableVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:SecondTableViewCell = Mytable.dequeueReusableCell(withIdentifier: "cell") as! SecondTableViewCell
        
        cell.namesLbl.text = names[indexPath.row]
        cell.discriptionLbl.text = discription[indexPath.row]
        cell.photos.image = UIImage(named: photos[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detail.stringDetailLbl = discription[indexPath.row]
        detail.stringNameLbl = names[indexPath.row]
        detail.stringImage = UIImage(named: photos[indexPath.row])
        
        self.navigationController?.pushViewController(detail, animated: true)
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            names.remove(at: indexPath.row)
            photos.remove(at: indexPath.row)
            discription.remove(at: indexPath.row)
            Mytable.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
}
