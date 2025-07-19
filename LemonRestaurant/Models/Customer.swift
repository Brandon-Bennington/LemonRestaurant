//
//  Customer.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 19/07/25.
//

import Foundation

struct Customer {
    let name: String
    let email: String
    var isLoyaltyMember: Bool
    let favoriteDishes: [String]

    /// Provides a string summary of the customer's details.
    /// - Returns: A formatted string containing the customer's name, email, and favorite dishes.
    func customerSummary() -> String {
        let dishes = favoriteDishes.joined(separator: ", ")
        return """
        Name: \(name)
        Email: \(email)
        Favorite Dishes: \(dishes)
        """
    }
}
