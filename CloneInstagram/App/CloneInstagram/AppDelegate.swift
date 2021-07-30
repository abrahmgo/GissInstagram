//
//  AppDelegate.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 26/07/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /*
         //decir a la app cargar el xib
         */
        
        let parentUINavigation = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = parentUINavigation
        
        return true
    }
}
