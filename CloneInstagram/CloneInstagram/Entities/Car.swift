//
//  Car.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 26/07/21.
//

import Foundation

protocol Car {
    var wheels: Int { get set }
    var type: CarType { get }
    var doors: Int { get set }
    
    func getType() -> CarType
}

protocol ManteinenceCar {
    func changeWheels()
}

enum CarType {
    case van
    case sport
}

enum Manteincen: ManteinenceCar {
    
    case mazda
    case volvo
    case audi
    
    func changeWheels() {
        switch self {
        case .audi:
            print("change wheels every week")
        case .mazda, .volvo:
            print("change wheels every month")
        }
    }
}

struct Mazda3: Car {
    
    var doors: Int
    var wheels: Int
    let type: CarType = .sport
    
    init(wheels: Int, doors: Int) {
        self.wheels = wheels
        self.doors = doors
    }
    
    func getType() -> CarType {
        return type
    }
}

struct AudiA5: Car {
    
    var doors: Int
    var wheels: Int
    let type: CarType = .sport
    
    init(wheels: Int, doors: Int) {
        self.wheels = wheels
        self.doors = doors
    }
    
    func getType() -> CarType {
        return .sport
    }
}
