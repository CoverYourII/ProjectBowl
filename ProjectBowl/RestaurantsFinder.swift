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
    
    func searchForRestaurants(category:String, priceRange:PriceRange) -> [Restaurant]?
    {
        return restaurantsDic[category]
    }
    
    
    func getAllCategories() -> [String]?
    {
        return ["四川菜","福建菜","海鲜","甜点"]
    }
    
    private var restaurantsDic : Dictionary<String,[Restaurant]> = [
        "sichuan" : [Restaurant(restaurantName:"老四川"), Restaurant(restaurantName:"重庆食府")],
        "fujian" : [Restaurant(restaurantName:"醉排骨")]
    ]
    
}
