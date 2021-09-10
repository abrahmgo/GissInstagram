//
//  APIRandomMeal.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 09/09/21.
//

import Foundation
import Alamofire

struct APIRandomMeal: RequestModelType {
    
    init() {
    }
    
    let url: URL = URL(string: "https://www.themealdb.com/api/json/v1/1/random.php")!
    let method: HTTPMethod = .post
    let parameters: Parameters? = nil
    let encoding: ParameterEncoding = JSONEncoding.default
    let headers: HTTPHeaders? = nil
}

struct Meal: Decodable {
    
    let idMeal: String?
    let strMeal: String?
}

struct Meals: Decodable {
    
    let meals: [Meal]
}

// codigos https
// para que se ocupan headers, y en general estructura de una peticion REST
// meter un lottie para mantener al usuario de que se esta cargando informacion
