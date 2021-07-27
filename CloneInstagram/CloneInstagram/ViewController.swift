//
//  ViewController.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 26/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPersons()
        protocols()
    }
    
    func showPersons() {
        
        var arrayPersons: [Persona] = []
        // traditional
        for _ in 0..<100 {
            arrayPersons.append(Persona(age: 213, gender: .female))
        }
        print(arrayPersons.first?.age)
        print(arrayPersons.first?.gender.rawValue)
        // 213
        
        // high order
        // age - 25 - 50
        // gender
        
        var newArrayPersons = Array(repeating: Persona(age: 12, gender: .female), count: 100)
        print(newArrayPersons.first?.age)
        // 12
        
        var arrayMen: [Men] = []
        
        // convert object
        arrayMen = newArrayPersons.map({
            return Men(age: $0.age)
        })
        print(arrayMen.first?.age)
        //12
        
        // modify object
        
        arrayMen = arrayMen.flatMap({
            return Men(age: $0.age * 2)
        })
        arrayMen.append(Men(age: 200))
        
        print(arrayMen.first?.age)
        // 24
        
        // filter
        let oldMen = arrayMen.filter({ $0.age == 200 })
        guard let oldMen3 = oldMen.first else {
            return
        }
        
        // first where
        let oldMen2 = arrayMen.first(where: { $0.age == 200 })
        
        let constans = Constants()
        print(constans.api)
        
        print(Constants2.api)
        
        // Dictionary
        
        var dictionary: [String: Persona] = [:]
        dictionary["data"] = Persona(age: 12, gender: .female)
        
        print(dictionary.keys)
        
        Data(person: dictionary["data"] ?? Persona(age: 12, gender: .men))
        
        let values = dictionary.values
        
        let double: Double = 1
        let doubleInt = Int(double)
        
        let cadena = "hola"
        let cadenaInt = Int(cadena)
        
        // Any
        let objectAny = Persona(age: 12, gender: .female) as Any
        
        if let objectString = objectAny as? Persona {
            print(objectString)
        } else {
            print("no es un string")
        }
        
        guard (objectAny as? Persona) != nil else {
            return
        }
        
        //
        
        var nombre = "Andres"
        var apellido = "Gomez"
        var nombreCompleto = ""
        
        nombreCompleto = nombre + apellido
        print(nombreCompleto)
        nombreCompleto = "\(nombre) Bonilla \(apellido)"
        print(nombreCompleto)
        nombreCompleto = nombre + " " + apellido
        print(nombreCompleto)
        
        var numers = 90
        numers = numers + 10
        numers += 10
        
        // 
    }
    
    
    func protocols() {
        
        var newMazda3 = Mazda3(wheels: 4, doors: 4)
        var audit16 = AudiA5(wheels: 4, doors: 4)
        
        if ((newMazda3 as? Car) != nil) {
            print("si es un carro")
        } else {
            print("no es un carro")
        }
        
        getNewCar(car: newMazda3)
        getNewCar(car: audit16)
    }
    
    func getNewCar(car: Car) {
        dump(car)
    }
}
