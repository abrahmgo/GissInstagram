//
//  LoginCleanCoordinator.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//

import UIKit
import Utils

public class LoginCleanCoordinator: Coordinator {
    
    private var loginCleanViewController: LoginCleanViewController?
    private var window: UIWindow?
    
    public init() {
        self.loginCleanViewController = LoginCleanFactory.makeLoginClean(coordinator: self)
    }
    
    public func start() {
        
        guard let loginCleanViewController = loginCleanViewController else {
            return
        }
        
        setRootViewController(loginCleanViewController)
    }
    
    func goToLoginViper() {
        let loginViper = LoginViperFactory.build()
        loginCleanViewController?.navigationController?.pushViewController(loginViper, animated: true)
    }
}

public protocol Coordinator {
    func start()
}

extension Coordinator {
        
    func setRootViewController(_ viewController: UIViewController?) {
        
        guard let window = (UIApplication.shared.delegate as? AppDelegate)?.window else {
            return
        }
        
        let navigation = UINavigationController(rootViewController: viewController ?? UIViewController())
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
}
