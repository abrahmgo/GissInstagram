//
//  
//  LoginViperFactory+Dependencies.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import UIKit

protocol LoginViperViewType: UIViewController {
	var viewPresenter: LoginViperPresenterType? { get set }
    
    func showMessage(message: String)
}

protocol LoginViperPresenterType: AnyObject {
    func setup()
    func showMessage(message: String)
    func goToProfile()
    
    var view: LoginViperViewType? { get set }
    var interactor: LoginViperInteractorType { get set }
    var router: LoginViperRouterType { get set }
    var inputs: LoginViperPresenterInputsType { get }
}

protocol LoginViperPresenterInputsType {
}

protocol LoginViperPresenterOutputsType {
}

protocol LoginViperInteractorType: AnyObject {
    func setup()
    
    var presenter: LoginViperPresenterType? { get set }
    var dependencies: LoginViperInteractorDependenciesType { get }
}

protocol LoginViperRouterType: AnyObject {
    var view: LoginViperViewType? { get set }
    
    func goToDashboard()
}

protocol LoginViperInteractorDependenciesType { }
