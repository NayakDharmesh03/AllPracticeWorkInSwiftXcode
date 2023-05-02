//
//  PlayerData.swift
//  TableView
//
//  Created by NT 2 on 07/02/23.
//

import Foundation

class PlayerData{
    
    var playerName : String
    var country : String
    var rating : Int32
    
    var playerPhoto : String
    
    init(pName:String,cName:String,pRating:Int32,pPhoto:String) {
        playerName = pName
        country = cName
        rating = pRating
        playerPhoto = pPhoto
    }
}
