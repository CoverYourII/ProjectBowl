//
//  ViewController.swift
//  ProjectBowl
//
//  Created by Li, Yuguan on 7/11/17.
//  Copyright © 2017 ProjectBowl. All rights reserved.
//

import UIKit

class RestaurantsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurants: [Restaurant]?
    var restaurantsFinder = RestaurantsFinder()
    
    @IBOutlet weak var restaurantsTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantsTable.dataSource = self
        restaurantsTable.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        self.restaurants = restaurantsFinder.searchForRestaurants(category: "Chinese", priceRange: PriceRange.cheap)
        self.restaurantsTable.reloadData()
        
        if restaurants != nil
        {
            for restaurant in restaurants!
            {
                print(restaurant.restaurantName)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if(indexPath.section == 0)
//        {
//            let cell = restaurantsTable.dequeueReusableCell(withIdentifier: "RestaurantFilterTableCell", for: indexPath) as! RestaurantFilterTableCell
//            
//            return cell
//        }
//        else
//        {
//            let cell = restaurantsTable.dequeueReusableCell(withIdentifier: "RestaurantTableCell", for: indexPath) as! RestaurantTableCell
//            
//            if restaurants != nil
//            {
//                cell.restaurant = restaurants![indexPath.row]
//            }
//            
//            return cell
//        }
        
        let cell = restaurantsTable.dequeueReusableCell(withIdentifier: "RestaurantFilterTableCell", for: indexPath) as! RestaurantFilterTableCell
        
        
        
        return cell
    }
}

