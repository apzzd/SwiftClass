import UIKit

// Note: See SwiftExamples.txt for explainations of this code and some tips.

// creating variables

let name: String = "Bob"
let hair: CGColor = CGColor(red: 0.70, green: 0.35, blue: 0.0, alpha: 1)
let age: Int = 42
let pets: [String] = []
let dateBorn: Date
let friend: (String, Int) = ("Carl", 41)

// printing values to the screen

print("This will be printed! ♥")

let sampleString: String = "~ SaMpLe StRiNg ~"

print("Here is a sample string:")
print("  '\(sampleString)' ")

// sample functions

func myFunction(_ num: Int) -> String {
    return "Your number was \(num + 5). Just kidding! It was actually \(num)."
}

func longerFunction(_ n1: Int, _ n2: Int) -> Bool {
    return n1 == n2
}

// sample enum

enum Weather {
    case rainy
    case sunny
    case foggy
    case cloudy
    case snowy
}

// using switch case

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

// using an enum (and switch case) in a function

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

// using sleep()

print("Waiting 3 seconds...")
sleep(3)
print("Finished waiting three seconds!")
