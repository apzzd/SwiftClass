import UIKit

// Note: See SwiftExamples.txt for explainations of this code and some tips.

// Creating variables

let name: String = "Bob"
let hair: CGColor = CGColor(red: 0.70, green: 0.35, blue: 0.0, alpha: 1)
let age: Int = 42
let pets: [String] = []
let dateBorn: Date
let friend: (String, Int) = ("Carl", 41)

// Printing values to the screen

print("This will be printed! ♥")

let sampleString: String = "~ SaMpLe StRiNg ~"

print("Here is a sample string:")
print("  '\(sampleString)' ")

// Sample functions

func myFunction(_ num: Int) -> String {
    return "Your number was \(num + 5). Just kidding! It was actually \(num)."
}

func longerFunction(_ n1: Int, _ n2: Int) -> Bool {
    return n1 == n2
}

// Loops

for i in 0...10 {
    print(i)
}

var counter: Int = 0
while counter <= 10 {
    print(counter)
    counter += 1
}

// Sample enum

enum Weather {
    case rainy
    case sunny
    case foggy
    case cloudy
    case snowy
}

// Using if/else

let string = "Lorem ipsum"

if string.first == "L" {
    print("string starts with 'L'")
} else if string.count < 5 {
    print("string is short")
} else {
    print("string is not special :'(")
}

// Using switch case

var person = "Bob"

switch person {
case "Alice":
    print("I know you!")
case "Carl", "Dave", "John":
    print("I'm sorry, what did you say your name was?")
case "Elaine":
    print("Hello, friend!")
default:
    print("Sorry, I don't know you.")
}

// Using an enum (and switch case) in a function

func weatherReport(_ weather: Weather) -> String {
    switch weather {
    case Weather.rainy:
        return "🌧️"
    case Weather.sunny:
        return "☀️"
    case Weather.foggy:
        return "🌫️"
    case Weather.cloudy:
        return "☁️"
    case Weather.snowy:
        return "🌨️"
    }
}

// Using sleep()

print("Waiting 3 seconds...")
sleep(3)
print("Finished waiting three seconds!")
