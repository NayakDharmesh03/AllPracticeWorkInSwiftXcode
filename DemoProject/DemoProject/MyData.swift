//
//  MyData.swift
//  DemoProject
//
//  Created by NT 2 on 09/03/23.
//

import Foundation
import FMDB

final class DatabaseManager {
    static let databaseFileName = "signup.db"
    static var database:FMDatabase!
    
    static let shared: DatabaseManager = {
        let instance = DatabaseManager()
        return instance
    }()
    
    
    func createDatabse()  {
        
        let bundlePath = Bundle.main.path(forResource: "signup", ofType: ".db")
        print(bundlePath ?? "", "\n") //prints the correct path
        let destPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let fullDestPath = NSURL(fileURLWithPath: destPath).appendingPathComponent("signup.db")
        let fullDestPathString = fullDestPath!.path
        
        if fileManager.fileExists(atPath: fullDestPathString) {
            print("File is available")
            DatabaseManager.database = FMDatabase(path: fullDestPathString)
            openDataBase()
            print(fullDestPathString)
        }
        else{
            do{
                try fileManager.copyItem(atPath: bundlePath!, toPath: fullDestPathString)
                if fileManager.fileExists(atPath: fullDestPathString) {
                    DatabaseManager.database = FMDatabase(path: fullDestPathString)
                    openDataBase()
                    
                    print("File is copy")
                }else {
                    print("File is not copy")
                }
            }catch{
                print("\n")
                print(error)
            }
        }
    }
    func openDataBase() {
          if DatabaseManager.database != nil {
              DatabaseManager.database.open()
              //deleteTran()
          }else {
              DatabaseManager.shared.createDatabse()
          }
      }
      
      func closeDataBase() {
          if DatabaseManager.database != nil {
              DatabaseManager.database.close()
          }else {
              
          }
      }
      func insertPlayer(strName:String,stremail:String,strpassword:String,completion:@escaping (Bool,String)->()) {
          let param = ["name":strName,"email":stremail,"password":strpassword] as [String : Any]

              if DatabaseManager.database != nil {
                  DatabaseManager.database.executeUpdate("INSERT INTO signup (name,email,password) VALUES (:name,:email,:password)", withParameterDictionary: param)
                    completion(true,"Add data")
              }else {
                  completion(false, "Databse close")
              }
          }
      }
