//
//  LoginViewController.swift
//  
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToNextViewController(_ sender: Any) {
        
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
        print("go to other view controller")
    }
}
