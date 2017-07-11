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
    var restaurantsFinder: RestaurantsFinder = RestaurantsFinder()
    
    @IBOutlet weak var restaurantsTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantsTable.dataSource = self
        restaurantsTable.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        self.restaurants = restaurantsFinder.searchForRestaurants("Chinese")
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
        if restaurants != nil
        {
            return restaurants!.count
        }
        else
        {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantsTable.dequeueReusableCell(withIdentifier: "RestaurantTableCell", for: indexPath) as! RestaurantTableCell
        
        if restaurants != nil
        {
            cell.restaurant = restaurants![indexPath.row]
        }
        
        return cell
    }
}

