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
        
        navigationController?.title = ""
    }
    
    func showPersons() {
        
        var arrayPersons: [Persona] = []
        
        // traditional
        for age in 0..<100 {
            for generoAleatorio in Gender.allCases {
                print("Edad de la persona : \(age) Genero de la persona:\(generoAleatorio).")
            }
        }
        print(arrayPersons.first?.age)
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
        
        //RETOS:
        
        //FLATMAP
        newArrayPersons = newArrayPersons.flatMap({
            return Persona(age: $0.age / 2, gender: .female)
        })
        //Se agrega al array un nuevo objeto que tiene una edad de 200
        arrayMen.append(Men(age: 200))
        
        //REDUCE
        let arrayNums = [1,5,9,2,4,5]
        
//        let result = arrayNums.reduce(0, {runningSum, value in
//            runningSum + value
//        })
        
        let result = arrayNums.reduce(0, +)
        
        print("La suma del arreglo es: \(result)")
        
        //Intentará castear el valor a un tipo String con el as?
        let objectArray = 65 as Any
        print(objectArray as? String)
        
        if let objectAsString = objectArray as? String {
            print("\(objectAsString) El dato si se pudo convertir a String")
        } else{
            print("El dato no se pudo convertir a String")
        }
        
        //Validación de que un Objeto de tipo Any es de tipo Persona
        let objectPerson = Persona(age: 25, gender: .men) as Any
        
        if let objectAsPerson = objectPerson as? Persona{
            print("El objeto es de tipo Persona")
        } else{
            print("El objeto NO es de tipo Persona")
        }
        
        //CONCATENACIÓN
        let name = "Gissel"
        let lastName = "Santiago"
        
        let option1 = name + lastName
        let option2 = "\(name) \(lastName) \n"
        let option3 = name + " " + lastName
        
        print(option1)
        print(option2)
        print(option3)
        
        //Mark: Tarea
        var groupPerson2: [Persona] = []
        //Rango de edad y genero aleatorio
        
//        func createGender(rawValue: Gender) -> Gender {
//            if let testVal = Gender(rawValue: rawValue.rawValue) {
//                    return testVal
//                }
//                else{
//                    return .other
//                }
//            }
        
        let number = Int.random(in: 0..<70)
        
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
    
    var pet1 = Pet(name: "Luigi", race: .frenchPoodle, age: 11, owner: .gissel)
    var pet2 = Pet(name: "Kimora", race: .cocker, age: 12, owner: .fernanda)
    var pet3 = Pet(name: "Kira", race: .dalmata, age: 2, owner: .jocelyn)
    var pet4 = Pet(name: "Princesa", race: .chihuahua, age: 3, owner: .gissel)
}
