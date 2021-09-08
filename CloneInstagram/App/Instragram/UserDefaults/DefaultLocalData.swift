//
//  DefaultLocalData.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 19/08/21.
//

import Foundation

struct DefaultLocalData {
    
    static var defaults: UserDefaults? {
        return UserDefaults(suiteName: "instagram-giss")
    }
    
    enum Keys: String {
        case splash
    }
    
    static var isSplash: Bool {
        set {
            defaults?.set(newValue, forKey: Keys.splash.rawValue)
            defaults?.synchronize()
        }
        
        get {
            return defaults?.value(forKey: Keys.splash.rawValue) as? Bool ?? false
        }
    }
}

struct DefaultLocalViews {
    
    static var defaultView: UserDefaults? {
        return UserDefaults(suiteName: "instagram-giss")
    }
    
    enum Keys: String {
        case firstView
    }
    
    static var isFirstView: Bool {
        set {
            defaultView?.set(newValue, forKey: Keys.firstView.rawValue)
            defaultView?.synchronize()
        }
        
        get {
            return defaultView?.value(forKey: Keys.firstView.rawValue) as? Bool ?? false
        }
    }
}

// datos sencillos o preferencias
// Userdefaults
// datos sensibles (contraseñas, tokens)
// Keychain
// datos multilpes (canciones, video, etc etc)
// realm, coredata
