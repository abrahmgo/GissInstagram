//
//  RequestViewController.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 07/09/21.
//

import UIKit
import Alamofire

class RequestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("cargaaando")
//        RequestHandler.shared.request(model: APIRandomMeal(),
//                                      modelCodable: Meals(meals: [])) { model, error in
//            guard let model = model else {
//                guard let error = error else {
//                    return
//                }
//                print("quitar loader")
//                print(error.localizedDescription)
//                return
//            }
//
//            print("quitar loader")
//            print(model.meals.first?.idMeal)
//        }
        
        
        //viewmodel -> mvc, mvvm
        //usecase -> clean
        //interactor -> viper
        
        
        let _: ModelPerson = ModelPerson()
        RequestHandler.shared.request(model: APIPerson()) {
            (result: Result<ModelPerson,Error>) in
            switch result{
            case .success(let post):
                print("quitar loader")
                print(post)
            case .failure(let error):
                print("quitar loader")
                print(error)
            }
        }
    }
}
