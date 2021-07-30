//
//  Car.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 26/07/21.
//

import Foundation
import Components
import UIKit

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

struct AudiA5 {
    
    var doors: Int
    var wheels: Int
    let type: CarType = .sport
    fileprivate let color = "red"
    
    init(wheels: Int, doors: Int) {
        self.wheels = wheels
        self.doors = doors
    }
    
    func getType() -> CarType {
        changeWheels()
        return .sport
    }
}

extension AudiA5: Car {
    
    func changeWheels() {
        print(color)
        print(getType().hashValue)
        print("change wheels")
    }
}

struct Example {
    
    let audi = AudiA5(wheels: 3, doors: 23)
    let circle = CircleView(frame: CGRect())
    
    func getCar() {
    }
}

class CustomCircleView: CircleView {
    
    override func changeColor() {
        if "radius" == "5" {
            color = .gray
        } else {
            color = .red
        }
    }
}

//examples
  //tags
  //tag 1.0.1 //primer clase
  //tag 1.1.0   // codigo de Giss
  //tag 1.2.0   // codigo de Giss
  //tag 2.0.0 //segunda clase
  //tag

/*
 
 git add *
 git commit -m "first class"
 // resolver comentarios
 git add *
 git commit --amend --no-edit
 git push -u origin nombreturRama //primera vez o si tu rama no existe en el repo
 git push -f // si ya existe solo pushea
 
 // transcurso de que ya te revise
 

 // ok con tu pr
 // merge
 
 //rama de examples ya tiene tu merge
 
 git checkout examples
 git tag v1.1.0 -m "Retos de structuras, clases algo asi"
 git push origin v1.1.0
 
 //muestras tags
 git tag
 //cambias entre tags o ves versiones de tags
 git show v1.1.0
 
 */


//master
