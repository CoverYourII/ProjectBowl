//
//  Restaurants.swift
//  ProjectBowl
//
//  Created by Li, Yuguan on 7/11/17.
//  Copyright © 2017 ProjectBowl. All rights reserved.
//

import Foundation

class RestaurantsFinder
{
    init(){}
    
    func searchForRestaurants(_ type:String) -> [Restaurant]?
    {
        return restaurantsDic[type]
    }
    
    
    private var restaurantsDic : Dictionary<String,[Restaurant]> = [
        "Chinese" : [Restaurant(restaurantName:"Dragon Dynasty")]
    ]
    
}
