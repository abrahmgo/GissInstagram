//
//  ProfileViewController.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var lblTitleView: UILabel!
    private let profileUseCase: ProfileUseCase
    private var profileCoordinator: ProfileCoordinator?
    
    init(profileUseCase: ProfileUseCase) {
        self.profileUseCase = profileUseCase
        super.init(nibName: "ProfileViewController",
                   bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileCoordinator = ProfileCoordinator(viewController: self)
//        print("guardamos objeto")
//        let personToSave = Persona(age: 23, gender: .female)
//        PersonalData.shared.setPerson(person: personToSave)
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
//            print("obtenemos objetos")
//            let person = PersonalData.shared.getPerson()
//            print("llenarias el view \(person)")
            
//            let loginViewController = LoginViewController()
//            self?.navigationController?.pushViewController(loginViewController, animated: true)
//        }
        lblTitleView.text = profileUseCase.getTitleView()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.profileCoordinator?.goToTableViewController()
        }
    }
}
