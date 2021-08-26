//
//  AppDelegate.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 04/08/21.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if !UserDefaults.standard.bool(forKey: "firstView"){
            UserDefaults.standard.setValue(true, forKey: "firstView")
            
            window = UIWindow()
            let navigationController = UINavigationController(rootViewController: LoginViewController())
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
            
            return true
            
        } else {
            window = UIWindow()
            let navigationController = UINavigationController(rootViewController: TableViewController())
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
            
            return true
        }
    }
}
