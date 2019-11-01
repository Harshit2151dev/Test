//
//  TableViewCell.swift
//  Bhaiya App
//
//  Created by Harshit Kumar on 03/07/19.
//  Copyright © 2019 Harshit Kumar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var typeField: UILabel!
    @IBOutlet weak var remainingField: UITextField!
    @IBOutlet weak var soldField: UITextField!
    @IBOutlet weak var tatalField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
