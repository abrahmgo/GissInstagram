//
//  
//  LoginViperInteractor.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import UIKit

class LoginViperInteractor: LoginViperInteractorType {
    
    var presenter: LoginViperPresenterType?
    let dependencies: LoginViperInteractorDependenciesType
    
    init(dependencies: LoginViperInteractorDependenciesType) {
        self.dependencies = dependencies
    }
}

// MARK: - Interactor - Public Methods (Through Type)
extension LoginViperInteractor {
    
    func setup() {
        print("estoy en interactor")
        
        presenter?.showMessage(message: "mensaje desde interactor")
    }
}
