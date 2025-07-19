import UIKit

/// ARRAYS
/// Create an array of string s
/// Example 1
let dishes = ["pizza", "burger", "pasta", "ramen"]
print(dishes[0]) // pizza

//Example 2
var orders = [String]()
orders.append("pizza")
orders.append("burger")
print(orders.count)

//Challenge 1: Create an array with 4 desserts. Print the third dessert.

var desserts = ["ice cream", "creme brulee", "cheesecake", "mousse"]
print(desserts[2])

let menuPrices: [String:Double] = ["Pizza": 12.99, "Pasta": 11.99, "Salad": 9.99]
print(menuPrices["Pizza"]!) //output 12.99

//Example 2
var stock = ["Burgers":5,"Soup": 6]

//update the value for soup
stock["Soup"] = 7
print(stock["Soup"]!)

// Challenge 1: Create a dictionary for 3 drinks and their prices. Print one price.
let drinks: [String: Double] = ["Water": 1.0, "Soda": 2.0, "Coffee": 2.5]
print(drinks["Coffee"]!) // Output: 2.5

// Challenge 2:
var ingredients = ["Tomato":2, "Cheese": 4]

//add an item to the dict
ingredients["Onion"] = 1

// print dict using for-in loop
for (_, item) in ingredients {
    print(item)
}

// print dishes array

for dish in dishes{
    print(dish)
}

let prices = ["Tacos": 5.99, "Sushi": 10.99]
for (dish, price) in prices {
    print("\(dish) cost $\(price)")
}

let prices2 = [8.0, 12.5, 7.0, 15.0]

var count = 0
for price in prices2 {
    if price > 8.00 {
        count += 1
    }
}

print("There are \(count) dishes above $8.00.")

// --- FILTERING COLLECTIONS ---

// Example 1: Filter an array of numbers
let values = [12.0, 8.5, 5.0, 4.5, 14.99]
// Filter values over $10 using shorthand
let premium = values.filter { $0 > 10 }
print("Premium items (over $10):")
print(premium) // Output: [12.0, 14.99]
print("---")

// Example 2: Filter an array of strings
let dishes2 = ["Burger", "Fries", "Fish", "Falafel"]
let filtered = dishes2.filter { $0.hasPrefix("F") }
print("Dishes starting with 'F':")
print(filtered) // Output: ["Fries", "Fish", "Falafel"]
print("---")

// Challenge 1: Filter an array of values and print only those below 10.
let belowTen = values.filter { $0 < 10 }
print("Items under $10:")
print(belowTen) // Output: [8.5, 5.0, 4.5]
print("---")

let menu = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]
let vegetarian = menu.filter { $0.contains("Salad") || $0.contains("Veggie") || $0.contains("Fruit") }
print(vegetarian)

