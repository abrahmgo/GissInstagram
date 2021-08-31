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

struct UserDefaultForViews {
    
    static var defaultsView: UserDefaults? {
        return UserDefaults(suiteName: "firstView")
    }
    
    enum KeyViews: String {
        case firstView
    }
    
    static var isFirstView: Bool {
        set {
            defaultsView?.set(newValue, forKey: KeyViews.firstView.rawValue)
            defaultsView?.synchronize()
        }
        
        get {
            return defaultsView?.value(forKey: KeyViews.firstView.rawValue) as? Bool ?? false
        }
    }
}

// datos sencillos o preferencias
// Userdefaults
// datos sensibles (contraseñas, tokens)
// Keychain
// datos multilpes (canciones, video, etc etc)
// realm, coredata
