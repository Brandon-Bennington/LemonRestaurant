//
//  MenuItem.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 12/07/25.
//

import Foundation

struct MenuItem: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var price: Double
}

