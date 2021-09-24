//
//  ProfileUseCase.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import Foundation

//profileInteractor, ProfileViewModel
class ProfileUseCase {
    
    private let titleView: String
    
    init(titleView: String) {
        self.titleView = titleView
    }
    
    private var person: Persona?
    
    func getTitleView() -> String {
        return titleView
    }
    
    func getPerson() -> Persona {
        /*
         Servicios, logica, cosas alomfire
         */
        return Persona(age: 23, gender: .female)
    }
    
    func showError() -> String {
        return "Error"
    }
    
    func cleanPerson() {
        /*
         limpiar, persona, pasas de minusculas a mayusculas
         haces capital letter
         
         */
    }
}
