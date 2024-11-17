//
//  AppDelegate.swift
//  Todo
//
//  Created by Александр Гуркин on 05.11.2024.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        
        do {
            _ = try Realm()
        } catch {
            print("error initilising new realm, \(error)")
        }
        
       
        
        
        return true
    }

}

