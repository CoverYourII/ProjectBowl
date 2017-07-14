//
//  Restaurant.swift
//  ProjectBowl
//
//  Created by Li, Yuguan on 7/11/17.
//  Copyright © 2017 ProjectBowl. All rights reserved.
//

import Foundation

public enum PriceRange: Int{
    case cheap = 1, normal, expensive
}

class Restaurant
{
    init(restaurantName: String)
    {
        self.restaurantName = restaurantName
    }
    
    var restaurantName : String
}

