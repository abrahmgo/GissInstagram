//
//  RequestHandler.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 07/09/21.
//

import Alamofire

// patron singleton
class RequestHandler {
    
    static let shared = RequestHandler()
    
    lazy var manager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 5
        configuration.timeoutIntervalForResource = 5
        configuration.httpCookieAcceptPolicy = .always
        configuration.httpCookieStorage = .shared
        
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    
    func request<T>(model: RequestModelType,
                    completionHandler block: @escaping (Result<T, Error>) -> Void) where T: Decodable {
        
        manager.request(model.url,
                        method: model.method,
                        parameters: model.parameters,
                        encoding: model.encoding,
                        headers: model.headers)
            .responseDecodable{ (response: DataResponse<T, AFError>) in
                switch response.result {
                case .success(let model):
                    block(.success(model))
                case .failure(let error):
                    block(.failure(error))
                }
            }
    }
}

// Programacion orientada a protocolos
protocol RequestModelType {

    var url: URL { get }
    var method: HTTPMethod { get }
    var parameters: Parameters? { get }
    var encoding: ParameterEncoding { get }
    var headers: HTTPHeaders? { get }
}
