//
//  BearLottieViewController.swift
//  Instragram
//
//  Created by Gissel Santiago on 8/22/21.
//

import UIKit
import Lottie

class BearLottieViewController: UIViewController {
    
    var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundAnimation()
        bearAnimation()
    }
    
    func bearAnimation() {
        
        animationView = .init(name: "bear_animation")
        
        guard let animation = animationView else {
            print("No existe ninguna animación")
            return
        }
        //Frame animation
        animation.frame = view.bounds

        //ContentM Mode
        animation.contentMode = .scaleAspectFit

        //Loop mode
        animation.loopMode = .loop

        //Speed for animation
        animation.animationSpeed = 1.0
        view.addSubview(animation)

        //Play animation
        animation.play()
        
    }
    
    func backgroundAnimation() {
        view.backgroundColor = .purple
    }

}

