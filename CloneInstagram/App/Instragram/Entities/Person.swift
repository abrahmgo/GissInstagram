//
//  Persona.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 26/07/21.
//

import Foundation

struct Person {
    
    let age: Int
    let gender: Gender
    
    init(age: Int, gender: Gender) {
        self.age = age
        self.gender = gender
    }
    
    func getAge() -> Int {
        return age
    }
}

enum Gender: CaseIterable {
    static var allCases: [Gender] {
            return [.female, .men, .other]
        }
    case female
    case men
    case other
}

class Dog {
    
    let name: String
    let age: Int
    let size: String
    
    init(name: String = "Luigi", age: Int, size: String) {
        self.name = name
        self.age = age
        self.size = size
    }
}
