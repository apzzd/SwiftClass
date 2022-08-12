import UIKit

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

var name = "Bob"

switch name {
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

