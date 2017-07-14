//
//  CategoryTableCell.swift
//  ProjectBowl
//
//  Created by Li, Yuguan on 7/12/17.
//  Copyright © 2017 ProjectBowl. All rights reserved.
//

import UIKit

class CategoryTableCell: UITableViewCell {
    
    
    @IBOutlet weak var category: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
