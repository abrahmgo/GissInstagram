//
//  CustomSquareView.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 24/08/21.
//

import UIKit

class CustomSquareView: SquareView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func changeColor() {
        if radius < 10 {
            color = .red
        } else {
            color = .blue
        }
    }
    
    override func setRadius() {
        print("something")
    }
}
