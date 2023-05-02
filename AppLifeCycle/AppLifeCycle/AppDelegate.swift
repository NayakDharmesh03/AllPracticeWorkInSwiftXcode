//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by Manish's Macbook Pro on 12/12/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        print(#function)
        
        return true
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        print(#function)

        // Override point for customization after application launch.
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
//        print(#function)

        //
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
//        print(#function)

    }
    func applicationWillResignActive(_ application: UIApplication) {
//        print(#function)
//
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
//        print(#function)
//
    }
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
//        print(#function)

        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }


    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print(#function)

        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    

}

