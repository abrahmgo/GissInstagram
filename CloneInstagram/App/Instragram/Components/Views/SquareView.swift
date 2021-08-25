//
//  SquareView.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 24/08/21.
//

import UIKit

open class SquareView: UIView {
    
    var radius = 5
    private let perimeter = 20
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = bounds.width / 2
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var color: UIColor = .red {
        didSet {
            self.backgroundColor = color
        }
    }
    
    func setRadius() {
        radius += 10
    }
    
    open func changeColor() {
        color = .yellow
    }
}
