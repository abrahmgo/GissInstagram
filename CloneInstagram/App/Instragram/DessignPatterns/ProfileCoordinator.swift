//
//  ProfileCoordinator.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import UIKit

// Coordinator o Router
class ProfileCoordinator {
    
    let viewController: UIViewController
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func goToTableViewController() {
        let tableViewController = TableViewController()
        viewController.navigationController?.pushViewController(tableViewController, animated: true)
    }
}
