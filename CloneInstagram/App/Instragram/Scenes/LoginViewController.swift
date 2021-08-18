//
//  LoginViewController.swift
//  
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit
import Utils

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad() //Llama a la función padre UIViewController a traves del super

    }
    
    @IBAction func goToNextViewController(_ sender: Any) {
        
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
        print("go to other view controller".capitalized())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Se ejecuta en el momento en el que empiece a mostrar la vista
        //Codigo necesario
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //Se ejecuta cuando la vista ya se mostró
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //Se ejecuta cuando la vista empieza a desaparecer
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //Desaparecio la vista
    }
    
    override func loadView() {
        //Se ejecuta antes del viewDidLoad, lo mejor es evitarlo
    }
    
    deinit {
        //Se ejecuta cuando el ViewController desaparecio, se usa para romper referencias
    }
}


/*
 
 hacer uso de nuke
 investigar como cargar una imagen desde internet y mostrarla en una imageView
 
 implementar ya sea con cocoapods o packege manager Lottie de Airbnb
 investigar como cargar un lottie en un viewcontroller y mostrarlo
 
 */
