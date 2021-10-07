//
//  LoginCleanFactory.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//

struct LoginCleanFactory {
    
    static func makeLoginClean(coordinator: LoginCleanCoordinator) -> LoginCleanViewController {
        
        // MARK: ViewModel
        let dependencies = LoginCleanDependencies()
        let viewModel = LoginCleanViewModel(dependencies: dependencies)
        
        // MARK: ViewController
        let viewController = LoginCleanViewController(coordinator: coordinator, viewModel: viewModel)
        return viewController
    }
}
