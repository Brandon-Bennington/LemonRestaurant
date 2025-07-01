import UIKit

// IF - ELSE IF - ELSE

/*
 |------ SYNTAX -----|
 
 if condition1 {
    this block runs if condition1 is true
 } else if condition2 {
    this block runs if condition1 is false and condition2 is true
 } else {
    this block runs if none of the above conditions are true
 }
 */


// |----- Example 1 -----|
var waterTemperature:Int = 92

if waterTemperature >= 100 {
    print("The water is boiling")
} else {
    print("The water is not boiling")
}

// |----- Example  2 -----|
var position = 3

if position == 1 {
    print("🥇 You came in first")
} else if position == 2 {
    print("🥈 You came in second")
} else if position == 3 {
    print("🥉 You came in third")
} else {
    print("You finished in position \(position). Keep training!")
}

// |------ Example -----|
var temperature = 74

if temperature >= 68 && temperature <= 75 {
    print("The temperature is just right")
} else {
    print("The temperature is too hot or cold")
}

// |----- Example 4 -----|
var mainPower: Bool = false
var batteryPower: Bool = true

if mainPower == true || batteryPower == true {
    print("I can use my phone")
} else {
    print("You'd better find a charger")
}

/*
 |----- MiniChalleng -----|
 Show one message if user is VIP, and another if not.
 */
var isVIP: Bool = true

if isVIP {
    print("Welcome VIP member")
} else {
    print("Welcome to our community")
}
