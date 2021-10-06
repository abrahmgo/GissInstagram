//
//  LoginCleanViewModel.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//

import RxSwift
import RxCocoa

public class LoginCleanViewModel: LoginCleanViewModelType, LoginCleanViewModelInputs, LoginCleanViewModelOutputs {
    
    // MARK: Properties
    public var outputs: LoginCleanViewModelOutputs { return self }
    public var inputs: LoginCleanViewModelInputs { return self }
    
    // MARK: Inputs
    public let message = PublishSubject<String>()
    
    // MARK: Outputs
    public let isLoading = BehaviorRelay<Bool>(value: false)
    public let error = PublishSubject<Error>()
    
    // MARK: Private
    private let dependencies: LoginCleanDependencies
    private let disposeBag = DisposeBag()
    
    public init(dependencies: LoginCleanDependencies) {
        self.dependencies = dependencies
        
        message.subscribe { message in
            print(message)
            print("enviado desde vista")
        }.disposed(by: disposeBag)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.error.onNext("error")
        }
    }
}

extension String: LocalizedError {
    
    public var errorDescription: String? {
        return self
    }
}
