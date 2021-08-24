//
//  ImageNukeViewController.swift
//  Instragram
//
//  Created by Gissel Santiago on 8/23/21.
//

import UIKit
import Nuke

class ImageNukeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        imageLoad()
        backgroundColor()
        
    }
    
    func imageLoad() {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        Nuke.loadImage(with: URL(string: "https://image.flaticon.com/icons/png/512/1864/1864469.png") ?? "", into: imageView)
        view.addSubview(imageView)
    }
    
    func backgroundColor() {
        view.backgroundColor = .white
    }
}

