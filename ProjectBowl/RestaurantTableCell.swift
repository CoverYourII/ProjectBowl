//
//  RestaurantTableCell.swift
//  ProjectBowl
//
//  Created by Li, Yuguan on 7/11/17.
//  Copyright © 2017 ProjectBowl. All rights reserved.
//

import UIKit

class RestaurantTableCell: UITableViewCell {
    
    @IBOutlet weak var RestaurantPic: UIImageView!
    @IBOutlet weak var RestaurantName: UILabel!

    var restaurant: Restaurant! {
        didSet{
            RestaurantName.text = restaurant.restaurantName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
