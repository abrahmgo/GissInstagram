//
//  
//  LoginViperPresenter.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import UIKit

class LoginViperPresenter: LoginViperPresenterType, LoginViperPresenterInputsType {
    
    var inputs: LoginViperPresenterInputsType { return self }
    var view: LoginViperViewType?
    var interactor: LoginViperInteractorType
    var router: LoginViperRouterType

    init(interactor: LoginViperInteractorType,
         router: LoginViperRouterType) {
        self.router = router
        self.interactor = interactor
    }

	// MARK: - Presenter - Private Methods
}

extension LoginViperPresenter {
    
    func setup() {
        print("estoy en presenter")
        interactor.setup()
    }
    
    func showMessage(message: String) {
        view?.showMessage(message: message)
    }
    
    func goToProfile() {
        router.goToDashboard()
    }
}
