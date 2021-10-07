//
//  ProfileFactory.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import Foundation

struct ProfileFactory {
    
    static func build() -> ProfileViewController {
        
        let profileUseCase = ProfileUseCase(titleView: "Gissel")
        let profileViewController = ProfileViewController(profileUseCase: profileUseCase)
        
        return profileViewController
    }
}
