//
//  
//  LoginViperFactory.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import Foundation
import UIKit

struct LoginViperFactory {
    
    static func build() -> LoginViperViewController {
        
        let dependencies: LoginViperInteractorDependenciesType = LoginViperInteractorDependencies()
        let interactor: LoginViperInteractorType = LoginViperInteractor(dependencies: dependencies)
        let router: LoginViperRouterType = LoginViperRouter()
        let presenter: LoginViperPresenterType = LoginViperPresenter(interactor: interactor, router: router)
        let view: LoginViperViewType = LoginViperViewController(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.view = view
        
        guard let viewController: LoginViperViewController = view as? LoginViperViewController else {
            return LoginViperViewController(presenter: presenter)
        }
        
        return viewController
    }
}

struct LoginViperInteractorDependencies: LoginViperInteractorDependenciesType {}
