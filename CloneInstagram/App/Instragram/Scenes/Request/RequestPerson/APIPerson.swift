//
//  APIPerson.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 09/09/21.
//

import Foundation
import Alamofire

struct APIPerson: RequestModelType {
    
    init() { }
    
    let url: URL = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
    let method: HTTPMethod = .get
    let parameters: Parameters? = nil
    let encoding: ParameterEncoding = JSONEncoding.default
    let headers: HTTPHeaders? = nil
}

struct ModelPerson: Decodable {
    
    var userId: Int?
    var id: Int?
    var title: String?
    var completed: Bool?
}
