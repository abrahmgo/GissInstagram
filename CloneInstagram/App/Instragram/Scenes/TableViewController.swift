//
//  TableViewController.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 04/08/21.
//

import UIKit

class TableViewController: UIViewController {

    let arrayExample = ["Perro", "Gato", "Conejo"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        //le dice a la tabla que informacion debe pintar
        tableView.dataSource = self
        //nos dice informacion de la tabla
        tableView.delegate = self
        
//        tableView.register(TableViewCellTitle.self, forCellReuseIdentifier: "CustomTableViewCell")
        tableView.register(UINib(nibName: "TableViewCellTitle", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        // release 3
        
        // buscar la forma de quitar el borde
        tableView.separatorStyle = .none
       
        // buscar la forma de quitar lo gris
        //tableView.allowsSelection = false
        //tableView.backgroundColor = .white
        
        NotificationCenter.default.addObserver(forName: .NSExtensionHostDidEnterBackground,
                                               object: nil, queue: .main) { _ in
            print("la app entro en background")
        }
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willResignActive),
                                               name: UIScene.willDeactivateNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willEnterForeground),
                                               name: UIScene.willEnterForegroundNotification,
                                               object: nil)
    }
    
    @objc func willResignActive() {
        print("entre de background")
    }
    
    @objc func willEnterForeground() {
        print("regresamos de background")
    }
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayExample.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? TableViewCellTitle {
            cell.updateView(title: arrayExample[indexPath.row], subtitle: "nada")
            return cell
        }
        
        return UITableViewCell()
    }
}

// release 3
// buscar la forma de quitar lo gris
// buscar la forma de quitar el borde
// master -> solo app
// examples -> todo lo que veamos, ejercisios

// sacar rama de examples ->
