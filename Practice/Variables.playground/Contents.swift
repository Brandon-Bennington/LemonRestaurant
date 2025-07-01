import UIKit

//var - variables
//let - constants


let day = "Monday"
let dailyTemperature = 75
print ("Today is \(day) and the temperature is \(dailyTemperature) degrees")
var temperature = 70
print("The temperature in the morning was \(temperature) degrees")
temperature = 80
print("The temperature at noon was \(temperature) degrees")
temperature = dailyTemperature
print("The temperature in the evening was \(temperature) degrees")

print("The game score example")
let levelScore=10
var gameScore=0

gameScore+=levelScore

print("Your current score is \(gameScore)") // 10
var levelBonusScore=20.0
print("Your bonus is \(levelBonusScore)")
let levelLowestScore=50
let levelHighestScore=99
let levels = 10
let levelScoreDiff=levelHighestScore-levelLowestScore

print(levelScoreDiff)


