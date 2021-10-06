//
//  LoginCleanViewController.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//

import UIKit
import RxSwift

public class LoginCleanViewController: UIViewController {
    
    @IBOutlet weak var lblGreeting: UILabel!
    private let coordinator: LoginCleanCoordinator
    private let viewModel: LoginCleanViewModelType
    private let disposeBag = DisposeBag()

    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public init(coordinator: LoginCleanCoordinator,
                viewModel: LoginCleanViewModelType) {
        self.coordinator = coordinator
        self.viewModel = viewModel
        super.init(nibName: "LoginCleanViewController",
                   bundle: Bundle(for: type(of: self)))
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setupBindings()
        localize()
        print("estoy en login clean")
        viewModel.inputs.message.onNext("hola")
    }
    
    private func setup() { }
    
    private func setupBindings() {
        viewModel.outputs.error.subscribe { error in
            print("enviado desde viewmodel")
            print(error)
        }.disposed(by: disposeBag)
    }
    
    private func localize() {
        lblGreeting.text = "title.login".localized
    }
}

extension String {
    
    var localized: String {
        return NSLocalizedString(self,
                                 tableName: "Idiom",
                                 bundle: Bundle.main,
                                 value: "", comment: "")
    }
}
