//
//  GisselViewController.swift
//  Instragram
//
//  Created by Gissel Santiago on 8/17/21.
//

import UIKit

class GisselViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView()
        addSubviews()
        addConstraints()
        buttonClicked()
        
    }
    
    func addSubviews() {
        view.addSubview(containerView)
        view.addSubview(label)
        view.addSubview(button)
    }
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 800)
        view.backgroundColor = .lightGray
        return view
        
    }()
    
    lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.frame = CGRect(x: 0, y: 0, width: 400, height: 50)
        label.text = "Prueba Label Constraints"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .systemPink
        label.numberOfLines = 0
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        button.backgroundColor = .gray
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonClicked() {
        print("Button Clicked")
    }

    func backgroundView() {
        self.view.backgroundColor = .white
    }
    
   func addConstraints() {
    
    containerView.translatesAutoresizingMaskIntoConstraints = false
    let horizontalView = NSLayoutConstraint(item: containerView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
    let verticalView = NSLayoutConstraint(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
    let widthView = NSLayoutConstraint(item: containerView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 400)
    let heightView = NSLayoutConstraint(item: containerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 800)
    NSLayoutConstraint.activate([horizontalView, verticalView, widthView,heightView])


    //Constraints para label
    label.translatesAutoresizingMaskIntoConstraints = false
    let horizontalLabel = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: -5)
    let verticalLabel = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -100)
    let widthLabel = NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 220)
    let heightLabel = NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
    NSLayoutConstraint.activate([horizontalLabel,verticalLabel,widthLabel,heightLabel])

    
//    //Constraints para button
    button.translatesAutoresizingMaskIntoConstraints = false
    let horizontalButton = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: -5)
    let verticalButton = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 1)
    let widthButton = NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
    let heightButton = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
    NSLayoutConstraint.activate([horizontalButton,verticalButton, widthButton, heightButton])
    
    }
}

