//
//  TableViewCellTitle.swift
//  Collections
//
//  Created by Andrés Bonilla Gómez on 03/08/21.
//

import UIKit

class TableViewCellTitle: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    
    //viewdidload
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        //configurar tipo letra, tamaño, color, cosas asi
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // a saber si fue seleccionada
        // Configure the view for the selected state
    }
    
    func updateView(title: String, subtitle: String) {
        lblTitle.text = title
        lblSubtitle.text = subtitle
    }
}
