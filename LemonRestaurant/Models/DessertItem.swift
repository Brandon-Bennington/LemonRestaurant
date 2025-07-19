//
//  DessertItem.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 14/07/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double

}
