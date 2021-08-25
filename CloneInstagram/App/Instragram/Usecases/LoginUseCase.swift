//
//  LoginUseCase.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 24/08/21.
//

import Foundation

protocol LoginUsecaseType {
    func execute() -> Bool
}

struct LoginUsecase: LoginUsecaseType {
    
    func execute() -> Bool {
        print("caso de uso 1")
        if "email" == "asdas@gdfsdf.com" {
            return true
        } else {
            return false
        }
    }
}

struct LoginUsecase2: LoginUsecaseType {
    
    func execute() -> Bool {
        print("caso de uso 2")
        guard "password" == "test" else {
            return false
        }
        
        return true
    }
}
