//
//  Pet.swift
//  CloneInstagram
//
//  Created by Gissel Santiago on 7/29/21.
//

import Foundation
struct Pet {
    
    let name: String
    let race: RacePets
    let age: Int
    let owner: OwnerPets
    
    init(name: String,race: RacePets,age: Int,owner: OwnerPets ) {
        self.name = name
        self.race = race
        self.age = age
        self.owner = owner
    }
    
}

enum RacePets {
    case chihuahua
    case cocker
    case dalmata
    case frenchPoodle
}

enum OwnerPets {
    case gissel
    case jocelyn
    case fernanda
}
