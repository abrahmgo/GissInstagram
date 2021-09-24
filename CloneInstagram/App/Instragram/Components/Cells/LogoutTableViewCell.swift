//
//  LogoutTableViewCell.swift
//  Instragram
//
//  Created by Andrés Bonilla Gómez on 23/09/21.
//

import UIKit

protocol LogoutTableViewDelegate: AnyObject {
    func goToLogin()
}

class LogoutTableViewCell: UITableViewCell {

    @IBOutlet weak var btnLogout: UIButton!
    weak var delegate: LogoutTableViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(modelType: LogoutTableViewDataType) {
        btnLogout.setTitle(modelType.title, for: .normal)
        btnLogout.backgroundColor = modelType.btnBackgroundColor
        btnLogout.setTitleColor(modelType.btnTitlecolor, for: .normal)
    }
    
    @IBAction func goToLogOut(_ sender: Any) {
        delegate?.goToLogin()
    }
}

protocol LogoutTableViewDataType {
    var title: String { get }
    var btnBackgroundColor: UIColor { get }
    var btnTitlecolor: UIColor { get }
}
