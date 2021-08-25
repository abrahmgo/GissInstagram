//
//  CircleView.swift
//  Components
//
//  Created by Andrés Bonilla Gómez on 29/07/21.
//

import UIKit

open class CircleView: UIView {
    
    public var radius = 5
    private let perimeter = 20
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = bounds.width / 2
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var color: UIColor = .red {
        didSet {
            self.backgroundColor = color
        }
    }
    
    public func setRadius() {
        radius += 10
    }
    
    open func changeColor() {
        color = .yellow
    }
}
