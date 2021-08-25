//
//  LoginViewController.swift
//  
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit
import Utils

class LoginViewController: UIViewController {

    var customCircle: CustomCircleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(DefaultLocalData.isSplash)
        // obtienes todas las llaves de tu espacio
        dump(DefaultLocalData.defaults?.dictionaryRepresentation().keys)
        
        // la primera vez que abras la app tienes que mostrar el login, la segunda vez, tienes que mostrar la tabla
        // investigar principios de SOLID
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let size = CGSize(width: 300, height: 300)
            let origin = CGPoint(x: 200, y: 200)
            let frame = CGRect(origin: origin, size: size)
            let customView = CustomViewView(frame: frame)
            self.view.addSubview(customView)
        }
    }
    
    @IBAction func goToNextViewController(_ sender: Any) {
        
        let gisselViewController = GisselViewController()
        navigationController?.pushViewController(gisselViewController, animated: true)
        print("go to other view controller".capitalized())
        
        RealmData.shared.write()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            RealmData.shared.read()
        }
    }
    
    @IBAction func goToAnimationLottie(_ sender: Any) {
        let loginUseCaseAndres = LoginUsecase2()
        getLogin(usecaseType: loginUseCaseAndres)
        
        let bearAnimation = BearLottieViewController()
        navigationController?.pushViewController(bearAnimation, animated: true)
        print("go to animation Bear for Lottie".capitalized())
    }
    
    
    @IBAction func goToImageNuke(_ sender: Any) {
        let loginUseCaseGiss = LoginUsecase()
        getLogin(usecaseType: loginUseCaseGiss)
        
        let tableViewController = TableViewController()
        navigationController?.pushViewController(tableViewController, animated: true)
        print("go to image Nuke".capitalized())
    }
    
    func getLogin(usecaseType: LoginUsecaseType) {
        print(usecaseType.execute())
    }
}


/*
 
 hacer uso de nuke
 investigar como cargar una imagen desde internet y mostrarla en una imageView
 
 implementar ya sea con cocoapods o packege manager Lottie de Airbnb
 investigar como cargar un lottie en un viewcontroller y mostrarlo
 
 */
