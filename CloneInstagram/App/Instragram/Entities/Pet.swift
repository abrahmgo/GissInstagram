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
    let dog: Dog
    
    init(name: String,race: RacePets,age: Int,owner: OwnerPets, dog: Dog = Dog(age: 15, size: "Medium")) {
        self.name = name
        self.race = race
        self.age = age
        self.owner = owner
        //self.dog = Dog(age: 15, size: "Little")
        self.dog = dog
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
