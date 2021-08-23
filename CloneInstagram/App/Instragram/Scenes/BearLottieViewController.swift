//
//  BearLottieViewController.swift
//  Instragram
//
//  Created by Gissel Santiago on 8/22/21.
//

import UIKit
import Lottie

class BearLottieViewController: UIViewController {

    private var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundAnimation()
        bearAnimation()
    }
    
    func bearAnimation() {
        animationView = .init(name: "bear_animation")
        animationView!.frame = view.bounds
        
        //ContentM Mode
        animationView!.contentMode = .scaleAspectFit
        
        //Loop mode
        animationView!.loopMode = .loop
        
        //Speed for animation
        animationView!.animationSpeed = 0.5
        view.addSubview(animationView!)
        
        //Play animation
        animationView!.play()
        
    }
    
    func backgroundAnimation() {
        view.backgroundColor = .purple
    }

}
