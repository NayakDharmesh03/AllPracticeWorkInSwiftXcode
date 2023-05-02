//
//  CustomTableViewController.swift
//  TableView
//
//  Created by NT 2 on 07/02/23.
//

import UIKit

class CustomTableViewController: UIViewController {


    @IBOutlet var myTable: UITableView!
    
    var playerDataList = [PlayerData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.largeContentTitle = "Top Player Name"

        let player1 = PlayerData(pName: "Dhaval", cName: "India", pRating: 900, pPhoto: "Dhaval")
        playerDataList.append(player1)
        
        let player2 = PlayerData(pName: "Vikash", cName: "India", pRating: 820, pPhoto: "Vikash")
        playerDataList.append(player2)
        
        let player3 = PlayerData(pName: "Vimal", cName: "India", pRating: 750, pPhoto: "Vimal")
        playerDataList.append(player3)

        let player4 = PlayerData(pName: "Rohit", cName: "India", pRating: 610, pPhoto: "Rohit")
        playerDataList.append(player4)

        let player5 = PlayerData(pName: "Raami", cName: "India", pRating: 600, pPhoto: "Raami")
        playerDataList.append(player5)

        let player6 = PlayerData(pName: "Rita", cName: "India", pRating: 500, pPhoto: "Rita")
        playerDataList.append(player6)


    }
    

}
extension CustomTableViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        playerDataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.NameLable.text = playerDataList[indexPath.row].playerName
        cell.rankLable.text = "\(indexPath.row+1)"
        cell.countryLable.text = playerDataList[indexPath.row].country
        cell.photo.image = UIImage(named: playerDataList[indexPath.row].playerPhoto)
        cell.ratingLable.text = String(playerDataList[indexPath.row].rating)
        
        return cell
    }
    
    
}
