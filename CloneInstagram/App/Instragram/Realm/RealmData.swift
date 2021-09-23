//
//  RealmData.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 19/08/21.
//

import Foundation
import RealmSwift
import RxSwift

class Furniture: Object {
    @objc dynamic var name = ""
    
    static func create(withName name: String) -> Furniture {
        let furniture = Furniture()
        furniture.name = name
        
        return furniture
    }
}

class Store: Object {
    @objc dynamic var name = ""
    var furniture = List<Furniture>()
    
    static func create(withName name: String,
                       furniture: [Furniture]) -> Store {
        let store = Store()
        store.name = name
        store.furniture.append(objectsIn: furniture)
        
        return store
    }
}

class RealmData {
    
    static let shared = RealmData()
    
    lazy var realm: Realm? = {
//        return try! Realm(configuration: .defaultConfiguration)
        do {
            let realm = try Realm(configuration: .defaultConfiguration)
            return realm
        } catch {
            return nil
        }
    }()
    
    func write() {
        let table = Furniture.create(withName: "table")
        let chair = Furniture.create(withName: "chair")
        let store = Store.create(withName: "Test Store",
                                 furniture: [table, chair])
        
        // Write to Realm
        print("Write to Realm")
        
        guard let realm = realm else {
            return
        }
        
        do {
            try realm.write({
                realm.add(table)
                realm.add(chair)
                realm.add(store)
            })
        } catch {
            realm.invalidate()
        }
        
//        try! realm.write {
//            realm.add(table)
//            realm.add(chair)
//            realm.add(store)
//        }
    }
    
    func read() {
        // Read from Realm
        print("Read from Realm")
        guard let realm = realm else {
            return
        }
        let data = realm.objects(Store.self)
        print(data)
    }
}
