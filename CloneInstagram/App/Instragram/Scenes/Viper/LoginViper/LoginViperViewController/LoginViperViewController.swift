//
//  
//  LoginViperViewController.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//
//

import UIKit

class LoginViperViewController: UIViewController {

    weak var viewPresenter: LoginViperPresenterType?
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(presenter: LoginViperPresenterType) {
        self.viewPresenter = presenter
        super.init(nibName: "LoginViperViewController", bundle: Bundle(for: type(of: self)))
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()
        
        print("estoy en view")
        viewPresenter?.setup()
        customizeUI()
    }	
	
    private func customizeUI() {
        // do UI customizing
    }
}

extension LoginViperViewController: LoginViperViewType {
    
    func showMessage(message: String) {
        print(message)
        print("llego desde interactor")
        
        viewPresenter?.goToProfile()
    }
}
