//
//  ViewController.swift
//  TableView
//
//  Created by NT 2 on 07/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myTable: UITableView!
    
    var countryName:[String] = ["Albania","Algeria","Andorra","Angola","Antigua","Barbuda","Argentina","Armenia","Australia","Austria",]

    var Cdescription:[String] = ["Albania is a country located in Southeast Europe, on the Adriatic and Ionian seas.",
                        "Algeria is a country in North Africa, located on the Mediterranean coast.",
                        "Andorra is a small, landlocked country located in the eastern Pyrenees mountains, between France and Spain in southwestern Europe.",
                        "Angola is a country in southwestern Africa, located on the Atlantic coast.",
                        "Antigua and Barbuda is a twin-island nation located in the Caribbean, near the border of the Atlantic Ocean and the Caribbean Sea.",
                        "Barbuda is an island nation in the Caribbean and a part of Antigua and Barbuda.",
                        "Argentina is a country located in South America, bordered by Chile to the west.",
                        "Armenia is a country located in the South Caucasus region of Eurasia, at the crossroads.",
                        "Australia is a country and continent located in the Southern Hemisphere. ",
                        "Austria is a landlocked country located in central Europe. "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.largeContentTitle = "countryName"

    }

    @IBAction func addNewData(_ sender: UIButton) {
        
    }
    
}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    //counting the data size and row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryName.count
    }
    
    //This is for Displaying Data on Table row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countryName[indexPath.row]
        return cell
    }
    
    //This is for Set the Title of Table
    func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String?
    {
        let titleForTable = "Country Names"
        myTable.largeContentTitle = titleForTable
      return titleForTable
    }
    
    //This is for selected row Action and passing Data in another VC
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data : receivedDataViewController = self.storyboard?.instantiateViewController(withIdentifier: "receivedDataViewController") as! receivedDataViewController
        
        data.strCountry = countryName[indexPath.row]
        data.strDescription = Cdescription[indexPath.row]
        
        self.navigationController?.pushViewController(data, animated: true)
    }
    
    
}
