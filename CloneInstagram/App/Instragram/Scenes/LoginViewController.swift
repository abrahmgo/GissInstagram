//
//  LoginViewController.swift
//  
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit
import Utils

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lblText: UILabel!
    var customCircle: CustomCircleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(DefaultLocalData.isSplash)
        // obtienes todas las llaves de tu espacio
        dump(DefaultLocalData.defaults?.dictionaryRepresentation().keys)
        
        // la primera vez que abras la app tienes que mostrar el login, la segunda vez, tienes que mostrar la tabla
        // investigar principios de SOLID
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            let size = CGSize(width: 300, height: 300)
//            let origin = CGPoint(x: 200, y: 200)
//            let frame = CGRect(origin: origin, size: size)
//            let customView = CustomViewView(frame: frame)
//            self.view.addSubview(customView)
//        }
        
        doSomething()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(customNotification),
                                               name: NSNotification.Name("customNotification"),
                                               object: nil)
    }
    
    
    @objc func customNotification() {
        print("estoy en login")
        print("custom notification")
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
    
    func sort(array: [Int]) -> [Int] {
        
        return array.sorted { numa, numb in
            numa > 10 && numb < 5
            //funcion
        }
    }
    
    func sortArray(array:[Int], handler: (([Int], String) -> Void)) {
        // step 2
        var sortedArray: [Int] = []
        sortedArray = array.sorted()
        // step 3
        handler(sortedArray, "hola")
    }
    
    func doSomething() {
        // setp 1
        // ciclos retencion, referencias dobles encadenadas
        sortArray(array: [50, 333, 434, 2, 8,3,54,73,99,83,13]) { [weak self] arraySorted, _ in
            print(arraySorted)
            let arrayString = arraySorted.map { String($0) }
            let textLabel = arrayString.joined(separator: " ")
            
            self?.lblText.text = textLabel
        }
    }
}
