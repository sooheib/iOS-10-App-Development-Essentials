//
//  CustomCell.swift
//  Tables
//
//  Created by Todd Perkins on 9/29/16.
//  Copyright © 2016 Todd Perkins. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
