//
//  UserData.swift
//  WeeklyTest
//
//  Created by NT 2 on 01/03/23.
//

import Foundation

class UserData {
    var uFirstName: String
    var uLastName : String
    var uDateOfBirth:String
    var uMail:String
    var uMobile: String
    var uPassword:String
    var uAge:String
    var uAddress:String
    
    init(fname:String,lname:String,dob:String,mail:String,mobile:String,password:String,age:String,address:String)
    {
        uFirstName = fname
        uLastName = lname
        uDateOfBirth = dob
        uMail = mail
        uMobile = mobile
        uPassword = password
        uAge = age
        uAddress = address
    }
}

