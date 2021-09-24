//
//  PersonalData.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import Foundation

class PersonalData {
    
    static let shared = PersonalData()
    
    private var person: Persona?
    
    func getPerson() -> Persona? {
        return person
    }
    
    func setPerson(person: Persona) {
        self.person = person
    }
}
