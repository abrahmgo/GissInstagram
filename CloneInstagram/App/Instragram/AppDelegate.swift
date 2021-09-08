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
        
        var viewController: UIViewController?
        
        if !DefaultLocalViews.isFirstView {
            DefaultLocalViews.isFirstView = true
            viewController = LoginViewController()
        } else {
            viewController = TableViewController()
        }

        guard let rootViewController = viewController else {
            return false
        }
        
        window = UIWindow()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
