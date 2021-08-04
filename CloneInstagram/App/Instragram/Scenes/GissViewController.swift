//
//  GissViewController.swift
//  Instragram
//
//  Created by Gissel Santiago on 8/9/21.
//

import UIKit

class GissViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        view.addSubview(label)
        view.addSubview(button)
        
        setSettings()
        addConstraints()
    }
    
    //Investigar constantes o variables de tipo lazy
    lazy var myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .systemBlue
        return myView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        label.textColor = .white
        label.numberOfLines = 0
        
        return label
    }()
    
    
    lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("My First Button", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonAction(_ sender:UIButton!) {
        print("El botón se ha presionado")
    }

    func addConstraints() {
        
        //Constraints for View
        myView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraintView = NSLayoutConstraint(item: myView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let verticalConstraintView = NSLayoutConstraint(item: myView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        let widthConstraintView = NSLayoutConstraint(item: myView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 600)
        let heightConstraintView = NSLayoutConstraint(item: myView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 600)
        NSLayoutConstraint.activate([horizontalConstraintView, verticalConstraintView, widthConstraintView, heightConstraintView])
    
        
        //Constraints for Label
        label.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraintLabel = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 10)
        let verticalConstraintLabel = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -30)
        let widthConstraintLabel = NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 400)
        let heightConstraintLabel = NSLayoutConstraint(item: label, attribute: .height, relatedBy:.equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 400)
        NSLayoutConstraint.activate([horizontalConstraintLabel, verticalConstraintLabel, widthConstraintLabel, heightConstraintLabel])
        
        
        //Constraints for Button
        button.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraintButton = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: -20)
        let verticalConstraintButton = NSLayoutConstraint(item: button, attribute:.centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 120)
        let widthConstraintButton = NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        let heightConstraintButton = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        NSLayoutConstraint.activate([horizontalConstraintButton, verticalConstraintButton, widthConstraintButton, heightConstraintButton])
}

    func setSettings() {
        view.backgroundColor = .white
    }
}
