//
//  TableCell.swift
//  TableViewSwiftDemo
//
//  Created by Siddhant on 06/12/17.
//  Copyright © 2017 Loylty Rewardz. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet var tfName: UILabel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
