//
//  
//  LoginViperRouter.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import UIKit

class LoginViperRouter: LoginViperRouterType {
    
	weak var view: LoginViperViewType?

	// MARK: - Router - Private Methods
}

// MARK: - Router - Public Methods (Through Type)
extension LoginViperRouter {
    
    func goToDashboard() {
        let dashboardViewController = ProfileFactory.build()
        view?.navigationController?.pushViewController(dashboardViewController, animated: true)
    }
}
