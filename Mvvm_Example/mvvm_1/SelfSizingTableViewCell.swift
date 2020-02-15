//
//  SelfSizingTableViewCell.swift
//  Mvvm_Example
//
//  Created by Estique on 2/15/20.
//  Copyright © 2020 Estique. All rights reserved.
//

import UIKit

class SelfSizingTableViewCell: UITableViewCell {
    @IBOutlet var selfSizingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
