//
//  TableViewController+TableViewDelegate.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 04/08/21.
//

import UIKit
import CoreData

extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(arrayExample[indexPath.row])
        savePerson()
        NotificationCenter.default.post(name: Notification.Name("customNotification"), object: nil)
        //codigo para cuando pulses gato, vaya a otra vista
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //delegado
    }
}

extension TableViewController {
    
    func savePerson() {
        
//        let context = CoreData.shared.persistentContainer.viewContext
//        let entity = NSEntityDescription.entity(forEntityName: "Persons", in: context)
//        let newPerson = NSManagedObject(entity: entity!, insertInto: context)
//
//        newPerson.setValue(1, forKey: "id")
//        newPerson.setValue("Pedro", forKey: "name")
//        newPerson.setValue(false, forKey: "isMarried")
//        newPerson.setValue(24, forKey: "age")

//        CoreData.shared.saveContext()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            CoreData.shared.getContext(entity: "Persons")
        }
    }
}

