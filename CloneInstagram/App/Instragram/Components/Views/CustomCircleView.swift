//
//  Circle.swift
//  CloneInstagram
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit
import Components

class CustomCircleView: CircleView {
    
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

        setRadius()
    }
}
