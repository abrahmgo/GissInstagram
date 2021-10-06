//
//  LoginCleanViewModel+Dependencies.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 05/10/21.
//

import UIKit
import RxSwift
import RxCocoa

public protocol LoginCleanViewModelOutputs {
    var isLoading: BehaviorRelay<Bool> { get }
    var error: PublishSubject<Error> { get }
}

public protocol LoginCleanViewModelInputs {
    var message: PublishSubject<String> { get }
}

public protocol LoginCleanViewModelType {
    var outputs: LoginCleanViewModelOutputs { get }
    var inputs: LoginCleanViewModelInputs { get }
}

public struct LoginCleanDependencies { }
